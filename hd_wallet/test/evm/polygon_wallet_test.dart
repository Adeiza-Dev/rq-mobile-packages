import 'package:flutter_test/flutter_test.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet.dart';
import 'package:hd_wallet/hd_wallet/wallet/account_wallet.dart';

const recoveryPhrase =
    "sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh pair";

// m / purpose' / coin_type' / account' / role / index
const path0 = "m/44'/966'/0'/0/0";
const address0 = "0x438159147C14f6bdB45f4D3B2f7F00d26931C1C4";
const publicKey0 = "0x039a0827b21b1d80d263763bc580a35eaa73ef255ec446f1d5eebae5ba7d90ca9d";
const privateKey0 = "0x356fded1cc2c146c9ce0792ce2efff3d24b9174c51a5cc2b035f08b8fcc275ee";
const env = "test";

void main() {
  group('Create Polygon Wallet tests', () {
    test('Polygon Wallet 0 Test', () {
      final hdWallet = HDWalletEuc.fromRecoveryPhrase(recoveryPhrase, env);
      AccountWallet wallet = hdWallet.getAccountWallet("polygon", accountIdx: 0);
      expect(wallet.accountDerivationPath, path0);
      String? address = wallet.address;
      expect(address, address0);
      // var isValid = wallet.isValidAddress(address);
      // expect(isValid, true);
      // isValid = wallet.isValidAddress("1QEVL9HpJK12QA94oQ6oreWSBCVoBPVMV");
      // expect(isValid, false);

      // ignore: INVALID_USE_OF_PROTECTED_MEMBER
      print(wallet.getKeyPair().privateKey);
      // ignore: INVALID_USE_OF_PROTECTED_MEMBER
      print(wallet.getKeyPair().publicKey);

      // ignore: INVALID_USE_OF_PROTECTED_MEMBER
      expect(wallet.getKeyPair().publicKey, publicKey0);
      // ignore: INVALID_USE_OF_PROTECTED_MEMBER
      expect(wallet.getKeyPair().privateKey, privateKey0);
    });

    test('Polygon Wallet 1 Test', () {
      final hdWallet = HDWalletEuc.fromRecoveryPhrase(recoveryPhrase, env);
      AccountWallet wallet = hdWallet.getAccountWallet("polygon", accountIdx: 1);
      expect(wallet.accountDerivationPath, "m/44'/966'/1'/0/0");
      String? address = wallet.address;
      expect(address, '0x7941Bf4A7572DA2502aB3164d4c31BE89C4cb9d9');
    });
  });
}
