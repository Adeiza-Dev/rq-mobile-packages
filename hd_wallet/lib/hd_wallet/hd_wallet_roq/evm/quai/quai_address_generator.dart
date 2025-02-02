import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/quai/quai_address.dart';

import 'package:hd_wallet/hd_wallet/wallet/account_wallet.dart';
import 'package:hd_wallet/hd_wallet/wallet/key_pair.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/quai/quai_address_generator_crx.dart'
    if (dart.library.html) 'package:hd_wallet/hd_wallet/hd_wallet_euc/evm/quai/quai_address_generator_crx.dart'
    if (dart.library.io) 'package:hd_wallet/hd_wallet/hd_wallet_euc/evm/quai/quai_address_generator_native.dart';

export 'quai_address_generator_crx.dart'
    if (dart.library.html) 'quai_address_generator_crx.dart'
    if (dart.library.io) 'quai_address_generator_native.dart';

abstract class QuaiAddressGenerator {
  final List<QuaiColosseumShard> shards;
  final String derivationPath;
  final String bip39Seed;

  QuaiAddressGenerator({
    required this.shards,
    required this.derivationPath,
    required this.bip39Seed,
  });

  Future<void> getAddressesAndKeyPairs({
    required Function(Map<QuaiColosseumShard, KeyPair>) onKeyPairsGenerated,
    required Function(Map<QuaiColosseumShard, QuaiAddress>) onAddressesGenerated,
    required List<QuaiColosseumShard> shards,
  });

  factory QuaiAddressGenerator.fromPlatform({
    required List<QuaiColosseumShard> shards,
    required String derivationPath,
    required String bip39Seed,
  }) {
    return QuaiAddressGeneratorImpl(
      shards: shards,
      derivationPath: derivationPath,
      bip39Seed: bip39Seed,
    );
  }
}
