import 'package:hd_wallet/hd_wallet/hd_wallet.dart';
import 'package:hd_wallet/hd_wallets.dart';
import 'package:hd_wallet/logging/logging_helper.dart';

const env = "test";

void main() {
  HDWallets hdWallet = HDWallets();

  // Check if words are valid recovery phrase words
  var isValid = HDWalletEuc.isValidBip39Word('froggy');
  rqLog("Is the word 'froggy' valid? $isValid");
  isValid = HDWalletEuc.isValidBip39Word('tree');
  rqLog("Is the word 'tree' valid? $isValid");

  // Catch a HDWalletException with the validation method
  // 7-word recovery phrase
  try {
    const recoveryPhrase = 'sail verb knee pet prison million drift';
    isValid = HDWalletEuc.validateRecoveryPhrase(recoveryPhrase);
  } on HDWalletException catch (e) {
    rqLog(e.toString());
    rqLog('status = ${e.status}');
    rqLog('title = ${e.title}');
    rqLog('reasons = ${e.reasons}');
  }

  // Catch a HDWalletException while trying to create an HDWallet
  // 25-word recovery phrase
  try {
    const recoveryPhrase =
        'sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh pair pair';
    HDWalletEuc.fromRecoveryPhrase(recoveryPhrase, env);
  } on HDWalletException catch (e) {
    rqLog(e.toString());
  }

  // Catch a HDWalletException while trying to create an HDWallet
  // invalid word in recovery phrase
  try {
    const recoveryPhrase =
        'sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list froggy battle bring clump brother before mesh pair';
    hdWallet.fromRecoveryPhrase('euc', recoveryPhrase);
  } on HDWalletException catch (e) {
    rqLog(e.toString());
  }

  // Catch a HDWalletException while trying to create an HDWallet
  // invalid Checksum of recovery phrase
  try {
    const recoveryPhrase =
        'sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh tree';
    hdWallet.fromRecoveryPhrase('euc', recoveryPhrase);
  } on HDWalletException catch (e) {
    rqLog(e.toString());
  }

  // finally a valid recovery phrase
  const recoveryPhrase =
      'sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh pair';
  isValid = HDWalletEuc.validateRecoveryPhrase(recoveryPhrase);
  rqLog('Is the recovery phrase valid? $isValid');
}
