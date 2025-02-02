import '../../wallet/account_wallet.dart';

class EthereumEucMainnet extends Evm1559Euc {
  EthereumEucMainnet(
    super.bip39seed, {
    super.accountIdx,
    super.derivationPath,
  });

  @override
  String getDerivationPath() {
    return derivationPath ?? "m/44'/60'/account'/0/0";
  }
}
