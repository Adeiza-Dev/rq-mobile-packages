import '../../wallet/account_wallet.dart';

class OptimismEucMainnet extends Evm1559Euc {
  OptimismEucMainnet(
    super.bip39seed, {
    super.accountIdx,
    super.derivationPath,
  });

  @override
  String getDerivationPath() {
    return derivationPath ?? "m/44'/614'/account'/0/0";
  }
}
