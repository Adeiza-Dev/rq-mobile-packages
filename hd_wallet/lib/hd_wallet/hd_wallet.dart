import 'dart:collection';

import 'package:get_it/get_it.dart';
import 'package:hd_wallet/hd_wallet/wallet/account_wallet.dart';
import 'package:rq_exception/rq_exception.dart';
import 'package:rq_logger/rq_logger.dart';

import '/bip39/bip39_base.dart' as bip39;
import '/exceptions/unsupported_wallet_type_exception.dart';
import 'hd_wallet_roq/evm/ethereum_mainnet.dart';
import 'hd_wallet_roq/evm/ethereum_sepolia.dart';
import 'hd_wallet_roq/evm/polygon_mainnet.dart';
import 'hd_wallet_roq/kadena/kadena_mainnet.dart';
import 'hd_wallet_roq/evm/optimism_mainnet.dart';
import 'wallet/base_wallet.dart';

part 'hd_wallet_dummy/hd_wallet_dummy.dart';
part 'hd_wallet_roq/hd_wallet_euc.dart';

abstract class HDWallet {
  final String _recoveryPhrase;
  final String _passPhrase;
  final String env;

  String? _bip39Seed;
  final HashMap<String, Wallet> _wallets = HashMap();

  HDWallet(this._recoveryPhrase, this._passPhrase, this.env) {
    if (!GetIt.instance.isRegistered<RQLogger>()) {
      GetIt.instance.registerSingleton(RQLogger(env));
    }
  }

  String generateBip39SeedFromRecoveryPhrase(String recoveryPhrase, String passPhrase);

  Wallet addWallet(String eucId, {int? accountIdx, String? derivationPath});

  int getNumRecoveryPhraseWords();

  get recoveryPhrase => _recoveryPhrase;

  AccountWallet getAccountWallet(
    String eucId, {
    int? accountIdx,
    String? derivationPath,
  }) {
    if (derivationPath != null) {
      derivationPath = normalizedPath(derivationPath);
    }

    String hashMapKey = _getHashMapKey(
      eucId,
      accountIdx: accountIdx,
      derivationPath: derivationPath,
    );

    return _wallets.putIfAbsent(
      hashMapKey,
      () => _addWallet(
        eucId,
        accountIdx: accountIdx,
        derivationPath: derivationPath,
      ),
    ) as AccountWallet;
  }

  Wallet _addWallet(
    String eucId, {
    int? accountIdx,
    String? derivationPath,
  }) {
    _bip39Seed ??= generateBip39SeedFromRecoveryPhrase(_recoveryPhrase, _passPhrase);

    return addWallet(
      eucId,
      accountIdx: accountIdx,
      derivationPath: derivationPath,
    );
  }

  String _getHashMapKey(
    String eucId, {
    required int? accountIdx,
    required String? derivationPath,
  }) {
    if (derivationPath != null) {
      return '${eucId}_$derivationPath';
    } else if (accountIdx != null) {
      return '${eucId}_$accountIdx';
    } else {
      throw InvalidArgumentsException('Invalid arguments for hashmap key');
    }
  }

  String normalizedPath(String derivationPath) {
    String normalizedPath = derivationPath.replaceAll('M', 'm').replaceAll('H', "'").replaceAll('h', "'");

    return normalizedPath;
  }
}
