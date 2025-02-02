import 'package:hd_wallet/hd_wallet/hd_wallet.dart';
import 'package:hd_wallet/hd_wallets.dart';
import 'package:hd_wallet/logging/logging_helper.dart';

const env = "test";

void main() {
  // Check if words are valid recovery phrase words
  var isValid = HDWalletEuc.isValidBip39Word('froggy');
  rqLog("Is the word 'froggy' valid? $isValid");
  isValid = HDWalletEuc.isValidBip39Word('tree');
  rqLog("Is the word 'tree' valid? $isValid");

  const recoveryPhrase =
      'sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh pair';

  // Before accepting a given 24-word recovery phrase, validate it!
  isValid = HDWalletEuc.validateRecoveryPhrase(recoveryPhrase);
  rqLog('Is recovery phrase valid? $isValid');

  // Given a recovery phrase, create a HD wallet and add Wallets to it.
  // An HDWallet is a container for multiple Wallets i.e. Bitcoin, Kadena, Cardano, etc.
  // Each Wallet will have a unique address(es)
  HDWallets hdWallet = HDWallets();
  HDWallet hdWalletAbstract = hdWallet.fromRecoveryPhrase('euc', recoveryPhrase);
  rqLog(hdWallet);
  Wallet wallet = hdWalletAbstract.getAccountWallet('kadena', accountIdx: 1);
  rqLog(wallet);

  // create a brand new HDWallet with a randomly generated recovery phrase
  final hdWallet2 = HDWalletEuc.brandNew(env);
  final recoveryPhrase2 = hdWallet2.recoveryPhrase;
  rqLog('Recovery Phrase 2: $recoveryPhrase2');
}
