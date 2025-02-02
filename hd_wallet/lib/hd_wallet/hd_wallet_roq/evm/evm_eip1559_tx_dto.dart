import 'package:decimal/decimal.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/evm_tx_dto.dart';

class EVMEIP1559TransactionDTO extends EVMTransactionDTO {
  EVMEIP1559TransactionDTO({
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
    required this.maxFeePerGas, // in GWei units
    required this.maxPriorityFeePerGas, // in GWei units
  });

  final Decimal maxPriorityFeePerGas;

  final Decimal maxFeePerGas;

  @override
  String toString() {
    return 'EthereumTransactionDTO{from: $from, to: $to, chainId: $chainId, value: $value, contractAddress: $contractAddress, nonce: $nonce, maxGas: $maxGas, decimals: $decimals, maxPriorityFeePerGas: $maxPriorityFeePerGas, maxFeePerGas: $maxFeePerGas}';
  }
}
