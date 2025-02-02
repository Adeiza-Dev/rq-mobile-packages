import 'package:flutter_test/flutter_test.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet.dart';
import 'package:hd_wallet/hd_wallet/wallet/account_wallet.dart';
import 'package:hd_wallet/logging/logging_helper.dart';

const recoveryPhrase =
    "sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh pair";

// m / purpose' / coin_type' / account' / role / index
const path0 = "m/44'/60'/0'/0/0";
const address0 = "0x349d882DEcB2779eF2E29eB37108BE8B49278560";
const publicKey0 = "0x02bacf6a243bdb1ec7db3e599dcc3fe78731b6ac28ec851ad360d5b3ffc70f1d28";
const privateKey0 = "0x3a183accce0ba5e360cffdce4ca5cd1cc510726ec4554dbd00d91155c8972270";

const env = "test";

void main() {
  group('Create Ethereum Wallet tests', () {
    test('Ethereum Wallet 0 Test', () {
      final hdWallet = HDWalletEuc.fromRecoveryPhrase(recoveryPhrase, env);
      AccountWallet wallet = hdWallet.getAccountWallet("ethereum", accountIdx: 0);
      expect(wallet.accountDerivationPath, path0);
      String? address = wallet.address;
      expect(address, address0);
      // var isValid = wallet.isValidAddress(address);
      // expect(isValid, true);
      // isValid = wallet.isValidAddress("1QEVL9HpJK12QA94oQ6oreWSBCVoBPVMV");
      // expect(isValid, false);

      // ignore: INVALID_USE_OF_PROTECTED_MEMBER
      rqLog(wallet.getKeyPair().privateKey);
      // ignore: INVALID_USE_OF_PROTECTED_MEMBER
      rqLog(wallet.getKeyPair().publicKey);

      // ignore: INVALID_USE_OF_PROTECTED_MEMBER
      expect(wallet.getKeyPair().publicKey, publicKey0);
      // ignore: INVALID_USE_OF_PROTECTED_MEMBER
      expect(wallet.getKeyPair().privateKey, privateKey0);
    });

    test('Ethereum Wallet 1 Test', () {
      final hdWallet = HDWalletEuc.fromRecoveryPhrase(recoveryPhrase, env);
      AccountWallet wallet = hdWallet.getAccountWallet("ethereum", accountIdx: 1);
      expect(wallet.accountDerivationPath, "m/44'/60'/1'/0/0");
      String? address = wallet.address;
      expect(address, '0xb7d483e54283BF05c5c0254B506CE6EE465E1fd3');
    });
  });
}
