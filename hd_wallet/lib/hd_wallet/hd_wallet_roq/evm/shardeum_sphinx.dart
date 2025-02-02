part of '../../wallet/account_wallet.dart';

class ShardeumEucSphinx extends EVMEuc<web3dart.Transaction, ShardeumTransactionDTO> {
  ShardeumEucSphinx(
    super.bip39seed, {
    super.accountIdx,
    super.derivationPath,
  });

  @override
  String getDerivationPath() {
    return derivationPath ?? "m/44'/1'/account'/0/0";
  }

  @override
  Uint8List generateRawSignature(web3dart.Transaction transaction, web3dart.EthPrivateKey cred, {int? chainId}) {
    return web3dart.signTransactionRaw(transaction, cred, chainId: chainId!);
  }

  @override
  web3dart.Transaction buildWeb3DartDto(
    ShardeumTransactionDTO transactionDto,
    web3dart.EthereumAddress? from,
    web3dart.EthereumAddress? to,
    int? nonce,
    web3dart.EtherAmount? value,
    Uint8List? data,
  ) {
    final web3Transaction = web3dart.Transaction(
      from: from,
      to: to,
      nonce: nonce,
      value: value,
      gasPrice: web3dart.EtherAmount.fromInt(web3dart.EtherUnit.wei, transactionDto.gasPrice),
      maxGas: transactionDto.maxGas,
      data: data,
    );

    return web3Transaction;
  }

}
