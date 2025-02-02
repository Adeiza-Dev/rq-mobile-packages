import 'hd_wallet_exception.dart';

// "error_hdwallet.invalid_word_count",
// "Invalid Word Count",
// "Expected a 24-word list, got a ${words.length} list")
class InvalidWordCountException extends HDWalletException {
  InvalidWordCountException(int numWords)
      : super("error_hdwallet.invalid_word_count", "Invalid Word Count", reasons: {'count': numWords.toString()});
}
