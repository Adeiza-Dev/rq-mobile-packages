import 'package:decimal/decimal.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/evm_tx_dto.dart';

class QuaiTransactionDTO extends EVMTransactionDTO {
  QuaiTransactionDTO({
    required super.type,
    required super.from,
    required super.to,
    required super.value, // in ETH units
    required super.maxGas,
    required super.nonce,
    required super.chainId,
    required super.decimals,
    required this.maxFeePerGas, // in GWei units
    required this.maxPriorityFeePerGas, // in GWei units
  });

  /// For Quai Types are:
  /// 0: internal
  /// 2: external

  final Decimal maxPriorityFeePerGas;
  final Decimal maxFeePerGas;

  @override
  String toString() {
    return 'QuaiExternalTransactionDTO{type: $type, from: $from, to: $to, chainId: $chainId, value: $value, nonce: $nonce, maxGas: $maxGas, decimals: $decimals, maxPriorityFeePerGas: $maxPriorityFeePerGas, maxFeePerGas: $maxFeePerGas}';
  }
}
