import 'package:flutter_test/flutter_test.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet.dart';
import 'package:hd_wallet/hd_wallets.dart';
import 'package:hd_wallet/logging/logging_helper.dart';

const recoveryPhrase =
    'sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh pair';
const bip39Seed =
    '4f077eed4f8046c794ef42e9686b4bcc3d4d96460bbfd1f94aff0e3feb877b32c1b531fc732dd7838fa2c61a1b3c024920c606f4a83fc19234a86d07c788ce92';

// m / purpose' / coin_type' / account'
const pathAccount = "m/44'/626'/0'";
const address0 = 'k:cf415c73edb4666a967933bddc2e6c4a6e13b8ec0566e612b9f3cbe4a4d8506e';

const env = "test";

void main() {
  group('Create Kadena Wallet tests', () {
    setUp(() {
      // Additional setup goes here.
    });
    test('Kadena Wallet Test', () {
      HDWallets hdWallets = HDWallets();
      HDWallet hdWallet = hdWallets.fromRecoveryPhrase('euc', recoveryPhrase);

      final wallet = hdWallet.getAccountWallet('kadena', accountIdx: 0);
      expect(wallet.accountDerivationPath, pathAccount);
      final address = wallet.address;
      rqLog('address: $address');
      expect(address, address0);
      final signedTx = wallet.signTransaction('rawTransaction');
      rqLog(signedTx);
    });

    test('Kadena Wallet Bip39Seed Test 2', () {
      rqLog('----------------------------------');
      HDWallets hdWallets = HDWallets();
      HDWallet hdWallet = hdWallets.fromRecoveryPhrase('euc',
          'join elite shrug sand pigeon regular gap rocket screen account lyrics card legal agree duty season essence stairs unaware economy agree veteran web direct');

      final wallet = hdWallet.getAccountWallet('kadena', accountIdx: 0);
      rqLog(wallet.toString());
    });

    test('Kadena Wallet Bip39Seed Test 3', () {
      rqLog('----------------------------------');
      // create a brand new HDWallet with a randomly generated recovery phrase
      final hdWallet2 = HDWalletEuc.brandNew(env);
      final recoveryPhrase2 = hdWallet2.recoveryPhrase;
      rqLog('Recovery Phrase 3: $recoveryPhrase2');
      final wallet = hdWallet2.getAccountWallet('kadena', accountIdx: 0);
      rqLog(wallet.toString());
    });
  });
}
