part of '../wallet/account_wallet.dart';

class RoqquWalletId extends AccountWallet<String> {
  RoqquWalletId(
    super.bip39seed, {
    super.accountIdx,
  });

  final Map<String, String> _derivationPathToIdentifiers = {};

  @override
  String getAddress(KeyPair keyPair) {
    throw UnimplementedError();
  }

  @override
  String getDerivationPath() {
    return "m/20414'/serviceId'/account'/0";
  }

  @override
  KeyPair getKeyPair() {
    throw UnimplementedError();
  }

  @override
  Future<String> signTransaction(String toSign) async {
    throw UnimplementedError();
  }

  String getIdForService(HDWalletService service) {
    final derivationPath =
        getDerivationPath().replaceAll('serviceId', service.id.toString()).replaceAll('account', '0');

    if (_derivationPathToIdentifiers.containsKey(derivationPath)) {
      return _derivationPathToIdentifiers[derivationPath]!;
    }

    final pinSalt = sha256.convert(utf8.encode(getSeed())).toString();

    var bip39SeedAsBytes = HEX.decode(getSeed());

    bip32.BIP32 bip32RootNode = bip32.BIP32.fromSeed(bip39SeedAsBytes as Uint8List);
    bip32.BIP32 addressNode = bip32RootNode.derivePath(derivationPath);

    var unHashedAddress = ethereumAddressFromPublicKey(addressNode.publicKey);

    String hashedAddress = _hashPBKDF2(unHashedAddress, pinSalt);

    _derivationPathToIdentifiers[derivationPath] = hashedAddress;

    return hashedAddress;
  }

// Todo This same method is in the crypto helper. Look into refactoring it
  String _hashPBKDF2(String toHash, String salt, [int rounds = 128, int length = 32]) {
    final generator = PBKDF2(hashAlgorithm: sha256);
    final hash = generator.generateKey(toHash, salt, rounds, length);
    final hashAsString = base64UrlEncode(hash);
    return hashAsString;
  }
}
