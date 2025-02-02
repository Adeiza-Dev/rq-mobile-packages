import 'hd_wallet_exception.dart';

class UnsupportedOperationException extends HDWalletException {
  UnsupportedOperationException(String eucId)
      : super("error_hdwallet.unsupported_method", "Unsupported method", reasons: {'eucId': eucId});
}
