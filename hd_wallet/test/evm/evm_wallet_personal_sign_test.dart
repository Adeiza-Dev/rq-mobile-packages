import 'package:flutter_test/flutter_test.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet.dart';
import 'package:hd_wallet/hd_wallet/wallet/account_wallet.dart';

const recoveryPhrase =
    "sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh pair";

const signature =
    "0xcf40edf289e7392be716eda9059081253562bc77cb49b46039393c7c18649094695623f09945f36ef6261aadef8a1338523f118cf39b9719ff50a19be76f82471c";
const env = "test";

void main() {
  group('Personal sign tests', () {
    test('Ethereum Wallet 0 Personal sign Test', () {
      final hdWallet = HDWalletEuc.fromRecoveryPhrase(recoveryPhrase, env);
      final evmEucMainnet = hdWallet.getAccountWallet("ethereum", accountIdx: 0) as EVMEuc;
      var signatureFromWallet =
          evmEucMainnet.personalSignMessage('Example `personal_sign` message');
      expect(signatureFromWallet, signature);
    });
  });
}
