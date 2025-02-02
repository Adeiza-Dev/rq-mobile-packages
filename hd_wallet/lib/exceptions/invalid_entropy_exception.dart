import 'hd_wallet_exception.dart';

// "error_hdwallet.invalid_entropy",
// "Invalid Entropy",
// "Entropy was invalid ($reason)"
class InvalidEntropyException extends HDWalletException {
  InvalidEntropyException(String reason)
      : super("error_hdwallet.invalid_entropy", "Invalid Entropy", reasons: {'reason': reason});
}
