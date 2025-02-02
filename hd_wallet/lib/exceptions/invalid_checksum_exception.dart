import 'hd_wallet_exception.dart';

// "error_hdwallet.invalid_checksum",
// "Invalid Checksum",
// "Checksum was invalid"
class InvalidChecksumException extends HDWalletException {
  InvalidChecksumException() : super("error_hdwallet.invalid_checksum", "Invalid Checksum");
}
