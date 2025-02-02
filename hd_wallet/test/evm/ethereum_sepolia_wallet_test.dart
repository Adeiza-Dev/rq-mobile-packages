import 'package:flutter_test/flutter_test.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet.dart';
import 'package:hd_wallet/hd_wallet/wallet/account_wallet.dart';

const recoveryPhrase =
    "sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh pair";

// m / purpose' / coin_type' / account' / role / index
const path0 = "m/44'/1'/0'/0/0";
const address0 = "0x4f80Daa5E92d49A0EE24c8EA7A34960bEF726acE";
const publicKey0 = "0x02c8bd3816bcafd50d215f8085f79e25d3f98d0abe7bab4c60d4f9c7a2cde1400f";
const privateKey0 = "0xeb4e48d4d0a659aba39de8a1284f10b6cd98970a20748f182b1f2c0cb45d9da0";
const env = "test";

void main() {
  group('Create Ethereum Sepolia Wallet tests', () {
    test('Ethereum Sepolia Wallet 0 Test', () {
      final hdWallet = HDWalletEuc.fromRecoveryPhrase(recoveryPhrase, env);
      AccountWallet wallet = hdWallet.getAccountWallet("ethereum_sepolia", accountIdx: 0);
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

    test('Ethereum Wallet 1 Test', () {
      final hdWallet = HDWalletEuc.fromRecoveryPhrase(recoveryPhrase, env);
      AccountWallet wallet = hdWallet.getAccountWallet("ethereum_sepolia", accountIdx: 1);
      expect(wallet.accountDerivationPath, "m/44'/1'/1'/0/0");
      String? address = wallet.address;
      expect(address, '0x78a248b0159CC957bCDd6B9afDF363d8CA5Eda3F');
    });
  });
}
