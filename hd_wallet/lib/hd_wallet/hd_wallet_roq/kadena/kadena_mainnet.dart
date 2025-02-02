import '../../wallet/account_wallet.dart';

class KadenaEucMainnet extends KadenaEuc {
  KadenaEucMainnet(
    super.bip39seed, {
    super.accountIdx,
  });

  @override
  String getDerivationPath() {
    return "m/44'/626'/account'";
  }
}
