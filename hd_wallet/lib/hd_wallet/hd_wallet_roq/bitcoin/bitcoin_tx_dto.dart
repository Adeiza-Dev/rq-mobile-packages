import 'package:bitcoin_base/bitcoin_base.dart';

class BitcoinTransactionDTO {
  BitcoinTransactionDTO(
      {required this.to, required this.value, required this.feeRateType, this.memo, this.enableRBF = true});

  /// The recipient of this transaction
  final String to;

  /// How many sats to send to [to].
  final BigInt value;

  /// The recipient of this transaction
  final String? memo;

  /// Whether to enable RBF or not
  final bool enableRBF;

  // todo: consider using a custom enum and not borrow lib's
  final BitcoinFeeRateType feeRateType;
}
