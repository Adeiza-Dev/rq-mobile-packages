import '../../wallet/account_wallet.dart';

class EthereumEucSepolia extends Evm1559Euc {
  EthereumEucSepolia(
    super.bip39seed, {
    super.accountIdx,
    super.derivationPath,
  });

  @override
  String getDerivationPath() {
    return derivationPath ?? "m/44'/1'/account'/0/0";
  }
}
