import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/evm_tx_dto.dart';

class ShardeumTransactionDTO extends EVMTransactionDTO {
  ShardeumTransactionDTO({
    required super.type,
    required super.from,
    required super.to,
    required super.value, // in ETH units
    required super.maxGas,
    required super.nonce,
    required super.chainId,
    required super.decimals,
    super.chainName,
    super.contractAddress,
    super.dataHash,
    required this.gasPrice, // in GWei units
  });

  final int gasPrice;

  @override
  String toString() {
    return 'ShardeumTransactionDTO{from: $from, to: $to, chainId: $chainId, value: $value, contractAddress: $contractAddress, nonce: $nonce, maxGas: $maxGas, decimals: $decimals, maxGas: $maxGas, gasPrice: $gasPrice}';
  }
}
