part of '../../wallet/account_wallet.dart';

abstract class Evm1559Euc<T extends EVMTransactionDTO> extends EVMEuc<web3dart.Transaction, EVMEIP1559TransactionDTO> {
  Evm1559Euc(
    super.bip39seed, {
    super.accountIdx,
    super.derivationPath,
  });

  @override
  Uint8List generateRawSignature(web3dart.Transaction transaction, web3dart.EthPrivateKey cred, {int? chainId}) {
    return web3dart.signTransactionRaw(transaction, cred, chainId: chainId!);
  }

  @override
  web3dart.Transaction buildWeb3DartDto(
    EVMEIP1559TransactionDTO transactionDto,
    web3dart.EthereumAddress? from,
    web3dart.EthereumAddress? to,
    int? nonce,
    web3dart.EtherAmount? value,
    Uint8List? data,
  ) {
    Decimal gweiDecimalsInETH = Decimal.fromInt(1000000000); // because fees were given in gwei units

    web3dart.EtherAmount maxFeePerGas = web3dart.EtherAmount.fromBigInt(
        web3dart.EtherUnit.wei, (transactionDto.maxFeePerGas * gweiDecimalsInETH).toBigInt());
    web3dart.EtherAmount maxPriorityFeePerGas = web3dart.EtherAmount.fromBigInt(
        web3dart.EtherUnit.wei, (transactionDto.maxPriorityFeePerGas * gweiDecimalsInETH).toBigInt());

    final web3Transaction = web3dart.Transaction(
      from: from,
      to: to,
      nonce: nonce,
      maxGas: transactionDto.maxGas,
      value: value,
      maxFeePerGas: maxFeePerGas,
      maxPriorityFeePerGas: maxPriorityFeePerGas,
      data: data,
    );

    return web3Transaction;
  }

  @override
  List<int> postProcessSignature(Uint8List signature, EVMEIP1559TransactionDTO toSign) {
    return web3dart.prependTransactionType(0x02, signature);
  }

}
