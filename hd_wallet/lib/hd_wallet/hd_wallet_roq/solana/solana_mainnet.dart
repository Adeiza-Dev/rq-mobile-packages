part of 'package:hd_wallet/hd_wallet/wallet/account_wallet.dart';

class SolanaEucMainnet extends SolanaEuc {
  SolanaEucMainnet(
    super.bip39seed, {
    super.accountIdx,
    super.derivationPath,
  });

  @override
  String getDerivationPath() {
    return derivationPath ?? "m/44'/501'/account'/0'";
  }
}
