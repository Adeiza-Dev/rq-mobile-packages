part of '../hd_wallet.dart';
// ignore_for_file: use_super_parameters

const int dummyRecoveryPhraseWordCount = 12;

// This class is simply a place holder for now, for if and when we ever need different kind of derivation, like 12 word or different bip39 derivation algorithm
class HDWalletDummy extends HDWallet {
  HDWalletDummy.brandNew(String env, [String passPhrase = ""])
      : super(bip39.generateRandomRecoveryPhrase(dummyRecoveryPhraseWordCount), passPhrase, env);

  HDWalletDummy.fromRecoveryPhrase(String recoveryPhrase, String env, [String passPhrase = ""])
      : super(recoveryPhrase, passPhrase, env);

  // returns true if word is in the word list
  static bool isValidBip39Word(String word) {
    return bip39.isValidBip39Word(word);
  }

  // returns true if no exceptions are thrown
  static bool validateRecoveryPhrase(String recoveryPhrase) {
    bip39.validateRecoveryPhrase(recoveryPhrase, dummyRecoveryPhraseWordCount);
    return true;
  }

  @override
  String toString() {
    return 'HDWalletDummy: $_wallets';
  }

  @override
  String generateBip39SeedFromRecoveryPhrase(String recoveryPhrase, String passPhrase) {
    return 'dummy';
  }

  @override
  Wallet addWallet(String eucId, {int? accountIdx, String? derivationPath}) {
    Wallet wallet;
    switch (eucId) {
      case "kadena":
        wallet = KadenaDummy(_bip39Seed!, accountIdx: accountIdx);
        break;
      default:
        throw UnsupportedWalletTypeException(eucId);
    }
    String hashMapKey = _getHashMapKey(
      eucId,
      accountIdx: accountIdx,
      derivationPath: derivationPath,
    );
    _wallets[hashMapKey] = wallet;
    return wallet;
  }

  @override
  int getNumRecoveryPhraseWords() {
    return dummyRecoveryPhraseWordCount;
  }
}
