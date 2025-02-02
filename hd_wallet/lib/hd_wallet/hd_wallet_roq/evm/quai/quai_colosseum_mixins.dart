import 'dart:typed_data';

import 'package:hd_wallet/hd_wallet/wallet/account_wallet.dart';
import 'package:hd_wallet/hd_wallet/wallet/key_pair.dart';
import 'package:hex/hex.dart';
import 'package:web3dart/crypto.dart';
import 'package:bip32/bip32.dart' as bip32;

mixin QuaiColosseumMixin {
  QuaiColosseumShard? determineShard(String hexAddress, List<QuaiColosseumShard> shards) {
    final hexAddressFirstByte = hexAddress.substring(0, 4);
    final hexAddressNetwork = hexAddress.substring(4, 5);

    for (final shard in shards) {
      if (hexAddressFirstByte == shard.shardPrefix && hexToDartInt(hexAddressNetwork) <= 7) {
        return shard;
      }
    }

    return null;
  }

  KeyPair generateKeyPair({
    required int addressIdx,
    required String derivationPath,
    required String bip39Seed,
  }) {
    var bip39SeedAsBytes = HEX.decode(bip39Seed);
    bip32.BIP32 bip32RootNode = bip32.BIP32.fromSeed(bip39SeedAsBytes as Uint8List);

    String modifiedDerivationPath = derivationPath.replaceAll('0/0', '0/$addressIdx');

    bip32.BIP32 addressNode = bip32RootNode.derivePath(modifiedDerivationPath);

    return KeyPair(
      privateKey: '0x${HEX.encode(addressNode.privateKey!)}',
      publicKey: '0x${HEX.encode(addressNode.publicKey)}',
      privateKeyRaw: addressNode.privateKey!,
      publicKeyRaw: addressNode.publicKey,
    );
  }
}
