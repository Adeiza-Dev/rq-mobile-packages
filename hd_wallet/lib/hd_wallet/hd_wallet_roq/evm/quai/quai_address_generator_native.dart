import 'dart:typed_data';

import 'package:ethereum_addresses/ethereum_addresses.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/evm_wallet_mixin.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/quai/quai_address.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/quai/quai_address_generator.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/quai/quai_colosseum_mixins.dart';
import 'package:hd_wallet/hd_wallet/wallet/account_wallet.dart';
import 'package:hd_wallet/hd_wallet/wallet/key_pair.dart';
import 'package:hd_wallet/logging/logging_helper.dart';
import 'package:hex/hex.dart';
import 'package:bip32/bip32.dart' as bip32;

class QuaiAddressGeneratorImpl extends QuaiAddressGenerator with QuaiColosseumMixin, EVMEucMixin {
  final Map<QuaiColosseumShard, KeyPair> _shardKeyPairs = {};
  final Map<QuaiColosseumShard, QuaiAddress> _shardAddresses = {};

  QuaiAddressGeneratorImpl({
    required super.shards,
    required super.derivationPath,
    required super.bip39Seed,
  });

  @override
  Future<void> getAddressesAndKeyPairs({
    required Function(Map<QuaiColosseumShard, KeyPair>) onKeyPairsGenerated,
    required Function(Map<QuaiColosseumShard, QuaiAddress>) onAddressesGenerated,
    required List<QuaiColosseumShard> shards,
  }) async {
    int addressIdx = 0;

    final xpub = _getXpub(derivationPath, bip39Seed);

    final master = bip32.BIP32.fromBase58(xpub);

    while (_shardKeyPairs.length < shards.length) {
      final pubKey = master.derive(addressIdx).publicKey;

      final hexAddress = ethereumAddressFromPublicKey(pubKey);

      rqLog(hexAddress);

      QuaiColosseumShard? shard = determineShard(hexAddress, shards);

      if (shard != null) {
        rqLog(shard.shardName);
        if (!_shardKeyPairs.containsKey(shard)) {
          final keyPair = generateKeyPair(
            addressIdx: addressIdx,
            derivationPath: derivationPath,
            bip39Seed: bip39Seed,
          );

          _shardKeyPairs[shard] = keyPair;
          _shardAddresses[shard] = QuaiAddress(address: hexAddress, addressIdx: addressIdx);
        }
      }

      addressIdx++;
    }

    onKeyPairsGenerated(_shardKeyPairs);
    onAddressesGenerated(_shardAddresses);
  }

  String _getXpub(String derivationPath, String bip39Seed) {
    // We reduce the derivation path to the last index before the address index i.e from "m/44'/994'/account'/0/0" -> "m/44'/994'/account'/0"
    final hardenedDerivationPath = derivationPath.substring(
      0,
      derivationPath.lastIndexOf('/'),
    );

    var bip39SeedAsBytes = HEX.decode(bip39Seed);
    bip32.BIP32 bip32RootNode = bip32.BIP32.fromSeed(bip39SeedAsBytes as Uint8List);

    String modifiedDerivationPath = hardenedDerivationPath;

    bip32.BIP32 addressNode = bip32RootNode.derivePath(modifiedDerivationPath);

    return addressNode.neutered().toBase58();
  }
}
