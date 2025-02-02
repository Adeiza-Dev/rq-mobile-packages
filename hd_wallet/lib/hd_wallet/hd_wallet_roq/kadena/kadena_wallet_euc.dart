part of '../../wallet/account_wallet.dart';
// ignore_for_file: use_super_parameters

abstract class KadenaEuc extends AccountWallet<String> {
  KadenaEuc(
    super.bip39seed, {
    super.accountIdx,
  });

  @override
  String getAddress(KeyPair keyPair) {
    return 'k:${keyPair.publicKey}';
  }

  @override
  Future<String> signTransaction(String toSign) async {
    KeyData keyData = _deriveKeyPair();
    SigningKey signingKey = SigningKey.fromSeed(keyData.key.toUint8List());
    var message = Uint8List.fromList(toSign.codeUnits);
    var hash = Blake2bHash.hash(message, 0, message.length);
    var sign = signingKey.sign(hash);
    return jsonEncode({
      "hash": base64UrlEncode(hash),
      "sigs": [
        {"sig": HEX.encode(sign.signature)}
      ],
      "cmd": toSign
    });
  }

  QuicksignResult signQuickSignTransaction(QuicksignRequest quicksignRequest) {
    KeyPair keyPair = getCachedKeyPair();

    // sign with Sterling's KadenaDartSDK package
    KadenaSignKeyPair kadenaSignKeyPair =
        KadenaSignKeyPair(privateKey: keyPair.privateKey, publicKey: keyPair.publicKey);

    final signingApi = SigningApi();

    QuicksignResult quicksignResult = signingApi.quicksign(
      request: quicksignRequest,
      keyPairs: [kadenaSignKeyPair],
    );
    return quicksignResult;
  }

  @override
  KeyPair getKeyPair() {
    KeyData keyData = _deriveKeyPair();
    var privateKey = HEX.encode(keyData.key);
    var publicKeyRaw = ED25519_HD_KEY.getPublicKey(keyData.key, false);
    var publicKey = HEX.encode(publicKeyRaw);

    return KeyPair(
      privateKey: privateKey,
      publicKey: publicKey,
      privateKeyRaw: Uint8List.fromList(keyData.key),
      publicKeyRaw: Uint8List.fromList(publicKeyRaw),
    );
  }

  KeyData _deriveKeyPair() {
    List<int> seedBytes = HEX.decode(getSeed());
    KeyData signingKey = ED25519_HD_KEY.derivePath(accountDerivationPath, seedBytes);
    return signingKey;
  }
}
