import 'package:flutter_test/flutter_test.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet.dart';
import 'package:hd_wallet/hd_wallets.dart';

const recoveryPhrase = 'faint circle forget keep cotton solar brown snow clay left exist bird';

const expectedAddress = 'k:d2adf52af5b0c969763a2d536692ba2727cc042615c0de8d07c08d1e90a5d901';
const expectedPrivateKey = 'dummy';

void main() {
  group('Kadena Dummy Derivation KeyPair Test', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Valid Private Key Test', () {
      HDWallets hdWallets = HDWallets();
      HDWallet hdWalletAbstract = hdWallets.fromRecoveryPhrase('dummy', recoveryPhrase);

      final wallet = hdWalletAbstract.getAccountWallet('kadena', accountIdx: 0);
      // ignore: INVALID_USE_OF_PROTECTED_MEMBER
      expect(wallet.getKeyPair().privateKey, expectedPrivateKey);
    });
  });
}
