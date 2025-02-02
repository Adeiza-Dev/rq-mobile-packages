part of '../hd_wallet.dart';

const int eucRecoveryPhraseWordCount = 24;

class HDWalletEuc extends HDWallet {
  HDWalletEuc.brandNew(String env, [String passPhrase = ""])
      : super(bip39.generateRandomRecoveryPhrase(eucRecoveryPhraseWordCount), passPhrase, env);

  HDWalletEuc.fromRecoveryPhrase(String recoveryPhrase, String env, [String passPhrase = ""])
      : super(bip39.validateRecoveryPhrase(recoveryPhrase, eucRecoveryPhraseWordCount), passPhrase,
            env);

  static bool isValidBip39Word(String word) {
    return bip39.isValidBip39Word(word);
  }

  static bool validateRecoveryPhrase(String recoveryPhrase) {
    bip39.validateRecoveryPhrase(recoveryPhrase, eucRecoveryPhraseWordCount);
    return true;
  }

  @override
  String generateBip39SeedFromRecoveryPhrase(String recoveryPhrase, String passPhrase) {
    return bip39.recoveryPhraseToBip39Seed(_recoveryPhrase, _passPhrase);
  }

  @override
  Wallet addWallet(
    String eucId, {
    int? accountIdx,
    int addressIdx = 0,
    String? derivationPath,
  }) {
    Wallet wallet = _createWallet(
      eucId,
      _bip39Seed!,
      accountIdx,
      addressIdx,
      derivationPath: derivationPath,
    );

    String hashMapKey = _getHashMapKey(
      eucId,
      accountIdx: accountIdx,
      derivationPath: derivationPath,
    );

    _wallets[hashMapKey] = wallet;
    return wallet;
  }

  Wallet _createWallet(
    String eucId,
    String bip39Seed,
    int? accountIdx,
    int addressIdx, {
    String? derivationPath,
  }) {
    Wallet wallet;
    switch (eucId) {
      case "kadena":
        wallet = KadenaEucMainnet(_bip39Seed!, accountIdx: accountIdx);
        break;
      // case "bitcoin":
      // todo load from properties or somewhere
      // const apiUrl = "http://192.168.1.128:3006/";
      // wallet = BitcoinEuc(_bip39Seed!, apiUrl);
      // break;
      // todo: enable if we want to support in app
      /*
      case "bitcoin_testnet":
        wallet = BitcoinEuc.withAddressTypeAndNetwork(
            _bip39Seed!, BitcoinAddressType.p2wpkh, BitcoinNetwork.testnet);
        break;
        */
      case "ethereum":
        wallet =
            EthereumEucMainnet(_bip39Seed!, accountIdx: accountIdx, derivationPath: derivationPath);
        break;
      case "ethereum_sepolia":
        wallet =
            EthereumEucSepolia(_bip39Seed!, accountIdx: accountIdx, derivationPath: derivationPath);
        break;
      case "shardeum_sphinx":
        wallet =
            ShardeumEucSphinx(_bip39Seed!, accountIdx: accountIdx, derivationPath: derivationPath);
        break;
      case "quai_colosseum":
        wallet = QuaiEucColosseum(_bip39Seed!, accountIdx: accountIdx);
        break;
      case "polygon":
        wallet =
            PolygonEucMainnet(_bip39Seed!, accountIdx: accountIdx, derivationPath: derivationPath);
        break;
      case "optimism":
        wallet =
            OptimismEucMainnet(_bip39Seed!, accountIdx: accountIdx, derivationPath: derivationPath);
        break;
      case "solana":
        return SolanaEucMainnet(_bip39Seed!, accountIdx: accountIdx);
      case "roqqu_wallet_id":
        wallet = RoqquWalletId(_bip39Seed!, accountIdx: accountIdx);
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
    return eucRecoveryPhraseWordCount;
  }

  @override
  String toString() {
    return 'HDWalletEuc: $_wallets';
  }
}
