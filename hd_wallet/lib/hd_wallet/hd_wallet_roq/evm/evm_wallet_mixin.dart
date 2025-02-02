import 'dart:typed_data';

import 'package:ethereum_addresses/ethereum_addresses.dart';
import 'package:hd_wallet/hd_wallet/wallet/key_pair.dart';

mixin EVMEucMixin {
  String getAddress(KeyPair keyPair) {
    var address = ethereumAddressFromPublicKey(Uint8List.fromList(keyPair.publicKeyRaw));
    return address;
  }
}
