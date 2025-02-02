import 'package:decimal/decimal.dart';

class EVMTransactionDTO {
  EVMTransactionDTO({
    required this.type,
    required this.from,
    required this.to,
    required this.value, // in ETH units
    required this.maxGas,
    required this.nonce,
    required this.chainId,
    required this.decimals,
    this.chainName,
    this.contractAddress,
    this.dataHash,
  });

  /// Types are:
  // transfer
  // erc20Transfer
  // contractTransfer
  final String type;

  /// The address of the sender of this transaction.
  ///
  /// This can be set to null, in which case the client will use the address
  /// belonging to the credentials used to this transaction.
  final String from;

  /// The recipient of this transaction, or null for transactions that create a
  /// contract.
  final String to;

  /// The chainId.
  final int chainId;

  final String? chainName;

  /// How much ether to send to [to]. This can be null, as some transactions
  /// that call a contracts method won't have to send ether.
  final Decimal value;

  final String? contractAddress;

  /// For transactions that call a contract function or create a contract,
  /// contains the hashed function name and the encoded parameters or the
  /// compiled contract code, respectively.
  final String? dataHash;

  /// The nonce of this transaction. A nonce is incremented per sender and
  /// transaction to make sure the same transaction can't be sent more than
  /// once.
  ///
  /// If null, it will be determined by checking how many transactions
  /// have already been sent by [from].
  final int nonce;

  /// The maximum amount of gas to spend.
  ///
  /// If [maxGas] is `null`, this library will ask the rpc node to estimate a
  /// reasonable spending via [Web3Client.estimateGas].
  ///
  /// Gas that is not used but included in [maxGas] will be returned.
  final int maxGas;
  final int decimals;

  @override
  String toString() {
    return 'EthereumTransactionDTO{from: $from, to: $to, chainId: $chainId, value: $value, contractAddress: $contractAddress, nonce: $nonce, maxGas: $maxGas, decimals: $decimals}';
  }
}
