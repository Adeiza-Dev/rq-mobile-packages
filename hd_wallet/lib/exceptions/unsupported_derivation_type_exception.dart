import 'hd_wallet_exception.dart';

class UnsupportedWalletTypeException extends HDWalletException {
  UnsupportedWalletTypeException(String derivationId)
      : super("error_hdwallet.unsupported_derivation_type", "Unsupported derivation type",
            reasons: {'derivationId': derivationId});
}
