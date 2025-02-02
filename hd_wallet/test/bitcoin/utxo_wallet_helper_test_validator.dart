import 'package:bitcoin_base/bitcoin_base.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/bitcoin/account_data.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/bitcoin/utxo_transaction_details.dart';
import 'package:hd_wallet/hd_wallet/wallet/utxo_wallet.dart';

class UTXOWalletHelperTestValidator {
  UTXOWalletHelperTestValidator(this._network);

  final BitcoinNetwork _network;

  void validateOutgoingTransaction(UTXOTransactionDetailsDTO transaction, String txId) async {
    expect(transaction.txId, txId);
    expect(transaction.version, 2);
    expect(transaction.locktime, 2572996);
    expect(transaction.size, 222);
    expect(transaction.weight, 561);
    expect(transaction.fee, 141);

    final transactionStatus = transaction.status;
    expect(transactionStatus.confirmed, true);
    expect(transactionStatus.blockHeight, 2573081);
    expect(transactionStatus.blockHash,
        "000000003d7195829e66922012beb24c9721a9712deb8a12d0c80e7cbbdf371b");
    expect(transactionStatus.blockTime, 1705401488);

    final transactionInput0 = transaction.inputs[0];
    expect(
        transactionInput0.txId, "73c2602e55cd996b229de9e2ee3061234008cfd36f19cba7ef8c2602a8fa2721");
    expect(transactionInput0.vout, 0);
    expect(transactionInput0.scriptSig, "");
    expect(transactionInput0.scriptSigAsm, "");
    expect(transactionInput0.witness[0],
        "304402207a8f93ecb7dc14dc05978f9b6d0ffb6e0831eb8cd0ccc04703242634e902bf5f022075958923d9d69cd7e936074f04ab816a46e25177e3d7b005d6c7be238fb8a41401");
    expect(transactionInput0.witness[1],
        "0268ff6fc144ea63c5293067be080e586c4b50fccd9f96e480122614784df2d188");
    expect(transactionInput0.isCoinbase, false);
    expect(transactionInput0.sequence, 4294967293);
    // Ensure it comes from a wallet address
    expect(transaction.inputs[0].previousOutput.scriptPubKeyAddress,
        "tb1qexnuwnc9eepjvxfm7cewk0cgkg5u60nv40urv7");

    final transactionutput0 = transaction.outputs[0];
    expect(transactionutput0.scriptPubKey, "001492deeb7a0945c0bc34c1b9d88d090318b192748f");
    expect(transactionutput0.scriptPubKeyAddress, "tb1qjt0wk7sfghqtcdxph8vg6zgrrzceyay0nalxry");
    expect(transactionutput0.scriptPubKeyAsm,
        "OP_0 OP_PUSHBYTES_20 92deeb7a0945c0bc34c1b9d88d090318b192748f");
    expect(transactionutput0.scriptPubKeyType, "v0_p2wpkh");
    expect(transactionutput0.value, 259);
    expect(transactionutput0.outputType, UTXOTransactionOutputType.change);

    final transactionutput1 = transaction.outputs[1];
    expect(transactionutput1.scriptPubKey, "00140c90568ebcf8b1bc63fce205e27b96778a71d949");
    expect(transactionutput1.scriptPubKeyAddress, "tb1qpjg9dr4ulzcmccluugz7y7ukw798rk2fu9jdc8");
    expect(transactionutput1.scriptPubKeyAsm,
        "OP_0 OP_PUSHBYTES_20 0c90568ebcf8b1bc63fce205e27b96778a71d949");
    expect(transactionutput1.scriptPubKeyType, "v0_p2wpkh");
    expect(transactionutput1.value, 600);
    expect(transactionutput1.outputType, UTXOTransactionOutputType.outgoing);
  }

  void validateIncomingTransaction(UTXOTransactionDetailsDTO transaction, String txId) async {
    expect(transaction.txId, txId);
    expect(transaction.version, 2);
    expect(transaction.locktime, 2542595);
    expect(transaction.size, 222);
    expect(transaction.weight, 561);
    expect(transaction.fee, 141);

    final transactionStatus = transaction.status;
    expect(transactionStatus.confirmed, true);
    expect(transactionStatus.blockHeight, 2542596);
    expect(transactionStatus.blockHash,
        "000000000000179fb2a70efae1dc3e56411ac7adc1127cab14002531429d5f44");
    expect(transactionStatus.blockTime, 1702424764);

    final transactionInput0 = transaction.inputs[0];
    expect(
        transactionInput0.txId, "e3e1f50dd2bf0a47fc4919640dfb48791dfaebefc311fcefba550128900bd5de");
    expect(transactionInput0.vout, 1);
    expect(transactionInput0.scriptSig, "");
    expect(transactionInput0.scriptSigAsm, "");
    expect(transactionInput0.witness[0],
        "3044022022d1c3b00ce611c13ef711248d38d0484d4049a95c62cf3f3782ca39615aec0402204a6f16e41efeaed789d5c567b23bbf5d531b19cdab80c8fb2a9e233ce0cc949601");
    expect(transactionInput0.witness[1],
        "024390029bf6c4eff1386aad4ac713b58ce6d54266d64dd7a80f58b13970aab110");
    expect(transactionInput0.isCoinbase, false);
    expect(transactionInput0.sequence, 4294967293);

    final transactionutput0 = transaction.outputs[0];
    expect(transactionutput0.scriptPubKey, "0014c9a7c74f05ce4326193bf632eb3f08b229cd3e6c");
    expect(transactionutput0.scriptPubKeyAddress, "tb1qexnuwnc9eepjvxfm7cewk0cgkg5u60nv40urv7");
    expect(transactionutput0.scriptPubKeyAsm,
        "OP_0 OP_PUSHBYTES_20 c9a7c74f05ce4326193bf632eb3f08b229cd3e6c");
    expect(transactionutput0.scriptPubKeyType, "v0_p2wpkh");
    expect(transactionutput0.value, 1000);
    expect(transactionutput0.outputType, UTXOTransactionOutputType.incoming);

    // there is another output but we shouldn't care about it as it's not related to our wallet
  }

  void validateConsolidationTransaction(UTXOTransactionDetailsDTO transaction, String txId) async {
    expect(transaction.txId, txId);
    expect(transaction.version, 2);
    expect(transaction.locktime, 0);
    expect(transaction.size, 264);
    expect(transaction.weight, 729);
    expect(transaction.fee, 190);

    final transactionStatus = transaction.status;
    expect(transactionStatus.confirmed, true);
    expect(transactionStatus.blockHeight, 2568854);
    expect(transactionStatus.blockHash,
        "00000000000000a8dc9913e19165be6f3cc0887556fac930ec3f31a921c4942d");
    expect(transactionStatus.blockTime, 1703864702);

    final transactionInput0 = transaction.inputs[0];
    expect(
        transactionInput0.txId, "d57e665a802dcf86e2c1a216431a6bf4aca081aeda535758a4343ad60d703397");
    expect(transactionInput0.vout, 0);
    expect(transactionInput0.scriptSig, "");
    expect(transactionInput0.scriptSigAsm, "");
    expect(transactionInput0.witness[0],
        "304402206337325a0eeccdfa7add095a3643f0d745c6967062b026b3ae2bdc2c5ff4123c022069545c76ea7a851c1a4852ac6c534a9aceb97fea8b52aa5db89781a8218e21f301");
    expect(transactionInput0.witness[1],
        "026fcd4829147e51e13349da93a7506edc95e63d73c37c57067377207ff5dc9ce6");
    expect(transactionInput0.isCoinbase, false);
    expect(transactionInput0.sequence, 1);
    // Ensure it comes from a wallet address
    expect(transaction.inputs[0].previousOutput.scriptPubKeyAddress,
        "tb1qtrg2fzzsfrfjadhhlpuzuhrcm3lyc400wwfduc");

    final transactionutput0 = transaction.outputs[0];
    expect(transactionutput0.scriptPubKey, "0014a7b992956eebe2c4d07b84d2c425658905815a4e");
    expect(transactionutput0.scriptPubKeyAddress, "tb1q57ue99twa03vf5rmsnfvgft93yzczkjwsynksq");
    expect(transactionutput0.scriptPubKeyAsm,
        "OP_0 OP_PUSHBYTES_20 a7b992956eebe2c4d07b84d2c425658905815a4e");
    expect(transactionutput0.scriptPubKeyType, "v0_p2wpkh");
    expect(transactionutput0.value, 500);
    expect(transactionutput0.outputType, UTXOTransactionOutputType.consolidation);

    final transactionutput1 = transaction.outputs[1];
    expect(transactionutput1.scriptPubKey, "001484cfef73208dab8cc64f5cd9bdcdda7cf4bb434b");
    expect(transactionutput1.scriptPubKeyAddress, "tb1qsn877ueq3k4ce3j0tnvmmnw60n6tks6t3udtd4");
    expect(transactionutput1.scriptPubKeyAsm,
        "OP_0 OP_PUSHBYTES_20 84cfef73208dab8cc64f5cd9bdcdda7cf4bb434b");
    expect(transactionutput1.scriptPubKeyType, "v0_p2wpkh");
    expect(transactionutput1.value, 310);
    expect(transactionutput1.outputType, UTXOTransactionOutputType.change);

    final transactionutput2 = transaction.outputs[2];
    expect(transactionutput2.scriptPubKey,
        "6a1f426974636f696e2057616c6c6574207369676e207472616e73616374696f6e");
    expect(transactionutput2.scriptPubKeyAddress, null);
    expect(transactionutput2.scriptPubKeyAsm,
        "OP_RETURN OP_PUSHBYTES_31 426974636f696e2057616c6c6574207369676e207472616e73616374696f6e");
    expect(transactionutput2.scriptPubKeyType, "op_return");
    expect(transactionutput2.outputType, UTXOTransactionOutputType.opreturn);
  }

  void validateBalanceData(List<AccountData> accountData) async {
    expect(accountData.length, 5);

    expect(accountData[0].bitcoinAddress.toAddress(_network),
        "tb1qk5gdaulj37mztwrclzs5ktu44uwwjq0zvd2lcv");
    expect(accountData[0].utxosWithAddress.sumOfUtxosValue(), BigInt.from(1000));
    expect(accountData[0].receivingOrChange, ReceivingOrChange.receiving);

    expect(accountData[1].bitcoinAddress.toAddress(_network),
        "tb1qtvuds4fnq09za2gdfyl7y8ry7dz68mpgc3dvr0");
    expect(accountData[1].utxosWithAddress.sumOfUtxosValue(), BigInt.from(1000));
    expect(accountData[1].receivingOrChange, ReceivingOrChange.receiving);

    expect(accountData[2].bitcoinAddress.toAddress(_network),
        "tb1q57ue99twa03vf5rmsnfvgft93yzczkjwsynksq");
    expect(accountData[2].utxosWithAddress.sumOfUtxosValue(), BigInt.from(500));
    expect(accountData[2].receivingOrChange, ReceivingOrChange.receiving);

    expect(accountData[3].bitcoinAddress.toAddress(_network),
        "tb1qsn877ueq3k4ce3j0tnvmmnw60n6tks6t3udtd4");
    expect(accountData[3].utxosWithAddress.sumOfUtxosValue(), BigInt.from(310));
    expect(accountData[3].receivingOrChange, ReceivingOrChange.change);

    expect(accountData[4].bitcoinAddress.toAddress(_network),
        "tb1qjt0wk7sfghqtcdxph8vg6zgrrzceyay0nalxry");
    expect(accountData[4].utxosWithAddress.sumOfUtxosValue(), BigInt.from(259));
    expect(accountData[4].receivingOrChange, ReceivingOrChange.change);
  }
}
