import 'hd_wallet_exception.dart';

// "error_hdwallet.unsupported_wallet_type",
// "Unsupported Wallet Type",
// "$eucId is not a supported wallet type"
class UnsupportedWalletTypeException extends HDWalletException {
  UnsupportedWalletTypeException(String eucId)
      : super("error_hdwallet.unsupported_wallet_type", "Unsupported wallet type", reasons: {'eucId': eucId});
}
