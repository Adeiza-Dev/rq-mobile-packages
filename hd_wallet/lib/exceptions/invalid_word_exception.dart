import 'hd_wallet_exception.dart';

// "error_hdwallet.invalid_word",
// "Invalid Word",
// "${word} not a valid recovery word"
class InvalidWordException extends HDWalletException {
  InvalidWordException(String word) : super("error_hdwallet.invalid_word", "Invalid Word", reasons: {'word': word});
}
