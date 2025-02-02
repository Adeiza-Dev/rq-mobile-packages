import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:bip32/bip32.dart' as bip32;
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/evm_wallet_mixin.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/quai/quai_address.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/quai/quai_address_generator.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/quai/quai_colosseum_mixins.dart';
import 'package:hd_wallet/hd_wallet/wallet/account_wallet.dart';
import 'package:hd_wallet/hd_wallet/wallet/key_pair.dart';
import 'package:hd_wallet/logging/logging_helper.dart';
import 'package:hex/hex.dart';
import 'dart:html' as html;

import 'package:web3dart/crypto.dart';

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
    required Function(Map<QuaiColosseumShard, KeyPair> p1) onKeyPairsGenerated,
    required Function(Map<QuaiColosseumShard, QuaiAddress> p1) onAddressesGenerated,
    required List<QuaiColosseumShard> shards,
  }) async {
    html.Worker? worker;

    final xpub = _getXpub(derivationPath, bip39Seed);

    final prefixes = shards.map((shard) {
      return shard.shardPrefix;
    }).toList();

    // Create a new web worker
    worker = html.Worker('dist/worker.js');

    worker.postMessage([xpub, derivationPath, prefixes]);

    // Use a Completer to wait for the worker's response
    final completer = Completer<void>();

    // Listen for messages from the worker
    worker.onMessage.listen((event) {
      var result = event.data;

      if (result is List) {
        for (var entry in result) {
          final entryMap = jsonDecode(entry);

          final address = entryMap['address'] as String;
          final path = entryMap['path'] as String;
          final addressIdx = int.parse(path.split('/').last);
          final prefix = entryMap['prefix'] as String;

          final shard =
              shards.firstWhere((shard) => int.parse(shard.shardPrefix) == hexToDartInt(prefix));

          _shardAddresses[shard] = QuaiAddress(
            address: address,
            addressIdx: addressIdx,
          );

          final keyPair = generateKeyPair(
            addressIdx: addressIdx,
            derivationPath: derivationPath,
            bip39Seed: bip39Seed,
          );

          _shardKeyPairs[shard] = keyPair;
        }

        onKeyPairsGenerated(_shardKeyPairs);

        onAddressesGenerated(_shardAddresses);

        completer.complete();

        worker?.terminate();
      }
    });

    // Wait for the worker to complete before returning
    await completer.future;

    worker.onError.listen((error) {
      rqLog('Worker error: $error');
    });
  }

  String _getXpub(String derivationPath, String bip39Seed) {
    // We reduce the derivation path to the last index before the address index i.e from "m/44'/994'/account'/0/0" -> "m/44'/994'/account'/0"
    // We do this because we want to avoid sending the PK or the seed phrase over to JS
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
