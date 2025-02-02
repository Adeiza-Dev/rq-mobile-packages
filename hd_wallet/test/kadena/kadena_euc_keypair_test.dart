import 'package:flutter_test/flutter_test.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet.dart';
import 'package:hd_wallet/hd_wallets.dart';
import 'package:hd_wallet/logging/logging_helper.dart';

const recoveryPhrase =
    'sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh pair';

const expectedPrivateKey = '7767fa3b09068be424b3c5670d7d1f5ab0d39750c6b187aa028aa4c5a0c15b97';
const expectedAddress = 'k:cf415c73edb4666a967933bddc2e6c4a6e13b8ec0566e612b9f3cbe4a4d8506e';

const expectedPrivateKeyTestnet = 'cadcfb4d603d71476421138760cbd957cb8ccee7661d10e1dec34fef25901d44';
const expectedAddressTestnet = 'k:06a4655b9946ea8dffaf1b402ff5da2d762e98ebeb75dd5b1521028d59a60d6b';

void main() {
  group('Kadena Euc Derivation KeyPair Test', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Valid Private Key Test for Mainnet', () {
      HDWallets hdWallet = HDWallets();
      HDWallet hdWalletAbstract = hdWallet.fromRecoveryPhrase('euc', recoveryPhrase);

      final wallet = hdWalletAbstract.getAccountWallet('kadena', accountIdx: 0);
      rqLog(wallet.accountDerivationPath);
      rqLog(wallet.getDerivationPath());
      // ignore: INVALID_USE_OF_PROTECTED_MEMBER
      expect(wallet.getKeyPair().privateKey, expectedPrivateKey);
      expect(wallet.address, expectedAddress);
    });
  });
}
