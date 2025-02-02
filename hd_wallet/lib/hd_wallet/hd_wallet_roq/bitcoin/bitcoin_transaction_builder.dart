import 'package:bitcoin_base/bitcoin_base.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/bitcoin/account_data.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/bitcoin/bitcoin_exception.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/bitcoin/bitcoin_tx_dto.dart';
import 'package:hd_wallet/logging/logging_helper.dart';

class TransactionBuilderDTO {
  final List<AccountData> accountAddressDataWithUtxos;
  final BitcoinNetwork network;
  final BitcoinFeeRate bitcoinFeeRate;
  final BitcoinAddress receiverAddress;
  final BitcoinAddress changeAddress;
  final BitcoinTransactionDTO bitcoinTransactionDTO;

  TransactionBuilderDTO(
      {required this.accountAddressDataWithUtxos,
      required this.network,
      required this.bitcoinFeeRate,
      required this.receiverAddress,
      required this.changeAddress,
      required this.bitcoinTransactionDTO});

  factory TransactionBuilderDTO.copy(TransactionBuilderDTO original, List<AccountData> accountAddressDataWithUtxos) {
    return TransactionBuilderDTO(
        accountAddressDataWithUtxos: accountAddressDataWithUtxos,
        network: original.network,
        bitcoinFeeRate: original.bitcoinFeeRate,
        receiverAddress: original.receiverAddress,
        changeAddress: original.changeAddress,
        bitcoinTransactionDTO: original.bitcoinTransactionDTO);
  }
}

class TransactionBuilder {
  Future<String> signTransaction(TransactionBuilderDTO transactionBuilderDTO) {
    final BitcoinTransactionDTO bitcoinTransactionDTO = transactionBuilderDTO.bitcoinTransactionDTO;

    final List<UtxoWithAddress> spendableUtxos = transactionBuilderDTO.accountAddressDataWithUtxos
        .map((e) => e.utxosWithAddress)
        .expand((element) => element)
        .toList();

    BigInt satsInUTXOs = spendableUtxos.sumOfUtxosValue();

    final accountAddressDataByPublicKey = {
      for (var accountAddressData in transactionBuilderDTO.accountAddressDataWithUtxos)
        accountAddressData.publicKey: accountAddressData
    };

    // fee calculation
    // To calculate the transaction fee, we need to have the transaction size

    // To achieve this, we create a dummy transaction with the desired inputs
    // and outputs to determine the transaction size accurately.
    // The correctness of UTXOs, the type of address for outputs,
    // and data (memo) are crucial. If any of these aspects differ from the original transaction,
    // the transaction size may vary. We consider the maximum amount for each transaction in the fake transaction.
    // In any case, the size of each input amount is 8 bytes
    // I have created a method for accomplishing this.
    int size = BitcoinTransactionBuilder.estimateTransactionSize(
        utxos: spendableUtxos,
        outputs: [transactionBuilderDTO.receiverAddress],
        network: transactionBuilderDTO.network,
        memo: bitcoinTransactionDTO.memo,
        enableRBF: bitcoinTransactionDTO.enableRBF);

    final feeRate = transactionBuilderDTO.bitcoinFeeRate;
    final fee = feeRate.getEstimate(size, feeRateType: bitcoinTransactionDTO.feeRateType);

    BigInt satsWithFee = fee + bitcoinTransactionDTO.value;
    if (satsInUTXOs < satsWithFee) {
      // todo go get more UTXOs
      throw InsufficientUTXOsFetched();
    }

    final receiverOutput =
        BitcoinOutput(address: transactionBuilderDTO.receiverAddress, value: bitcoinTransactionDTO.value);

    final changeOutput = BitcoinOutput(address: transactionBuilderDTO.changeAddress, value: satsInUTXOs - satsWithFee);

    // Well, now it is clear to whom we are going to pay the amount
    // Now let's create the transaction
    final transactionBuilder = BitcoinTransactionBuilder(
      // Now, we provide the UTXOs we want to spend.
      utxos: spendableUtxos,
      // We select transaction outputs
      outPuts: [receiverOutput, changeOutput],
      /*
              Transaction fee
              Ensure that you have accurately calculated the amounts.
              If the sum of the outputs, including the transaction fee,
              does not match the total amount of UTXOs,
              it will result in an error. Please double-check your calculations.
            */
      fee: fee,
      network: transactionBuilderDTO.network,
      memo: bitcoinTransactionDTO.memo,
      /*
              RBF, or Replace-By-Fee, is a feature in Bitcoin that allows you to increase the fee of an unconfirmed
              transaction that you've broadcasted to the network.
              This feature is useful when you want to speed up a
              transaction that is taking longer than expected to get confirmed due to low transaction fees.
            */
      enableRBF: bitcoinTransactionDTO.enableRBF,
    );

    // parameters
    // utxo  infos with owner details
    // trDigest transaction digest of current UTXO (must be sign with correct privateKey)
    final transaction = transactionBuilder.buildTransaction((trDigest, utxo, publicKey, sigHash) {
      // if is multi-sig and we dont have access to some private key of address we return empty string
      // Note that you must have access to keys with the required signature(threshhold) ; otherwise,
      // you will receive an error.
      if (utxo.isMultiSig()) {
        // check we have private keys of this sigerns or not
        return "";
      }

      final private = accountAddressDataByPublicKey[publicKey]?.private;
      if (private == null) {
        throw Exception("Could not find private key for public key $publicKey");
      }

      // Ok, now we have the private key, we need to check which method to use for signing
      // We check whether the UTX corresponds to the P2TR address or not.
      if (utxo.utxo.isP2tr()) {
        // yes is p2tr utxo and now we use SignTaprootTransaction(Schnorr sign)
        // for now this transaction builder support only tweak transaction
        // If you want to spend a Taproot tapleaf script-path spending, you must create your own transaction builder.
        String digestSignature = private.signTapRoot(trDigest);
        //print(
        //    "digestSignature $digestSignature for public key $publicKey and tx id ${utxo.utxo.txHash}");
        return digestSignature;
      } else {
        // is seqwit(v0) or lagacy address we use  SingInput (ECDSA)
        String digestSignature = private.signInput(trDigest);
        //print(
        //    "digestSignature $digestSignature for public key $publicKey and tx id ${utxo.utxo.txHash}");
        return digestSignature;
      }
    });

    final digest = transaction.serialize();
    rqLog("digest $digest");

    return Future(() => digest);
  }
}
