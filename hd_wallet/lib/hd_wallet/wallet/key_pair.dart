import 'dart:typed_data';

class KeyPair {
  final String privateKey;
  final String publicKey;
  final Uint8List privateKeyRaw;
  final Uint8List publicKeyRaw;

  KeyPair({
    required this.privateKey,
    required this.publicKey,
    required this.privateKeyRaw,
    required this.publicKeyRaw,
  });
}
