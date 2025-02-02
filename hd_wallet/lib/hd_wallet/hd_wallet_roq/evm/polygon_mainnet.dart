import '../../wallet/account_wallet.dart';

class PolygonEucMainnet extends Evm1559Euc {
  PolygonEucMainnet(
    super.bip39seed, {
    super.accountIdx,
    super.derivationPath,
  });

  @override
  String getDerivationPath() {
    return derivationPath ?? "m/44'/966'/account'/0/0";
  }
}
