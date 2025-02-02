part of '../../wallet/account_wallet.dart';
// ignore_for_file: use_super_parameters

// fixme: what is this for? delete if not needed
class KadenaDummy extends AccountWallet<String> {
  KadenaDummy(super.bip39Seed, {super.accountIdx});

  @override
  String getDerivationPath() {
    return "m/44'/626'/account'";
  }

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
    KeyPair keyPair = getKeyPair();

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
    return KeyPair(
      privateKey: 'dummy',
      publicKey: 'dummy',
      privateKeyRaw: Uint8List.fromList(HEX.decode('daef34')),
      publicKeyRaw: Uint8List.fromList(HEX.decode('daef34')),
    );
  }

  KeyData _deriveKeyPair() {
    List<int> seedBytes = HEX.decode(getSeed());
    KeyData signingKey = ED25519_HD_KEY.derivePath(accountDerivationPath, seedBytes);
    return signingKey;
  }
}
