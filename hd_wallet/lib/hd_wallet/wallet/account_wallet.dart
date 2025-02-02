// ignore_for_file: implementation_imports

import 'dart:collection';
import 'dart:convert';
import 'package:bip32/bip32.dart' as bip32;
import 'package:blake2b/blake2b_hash.dart';
import 'package:conduit_password_hash/pbkdf2.dart';
import 'package:crypto/crypto.dart';
import 'package:decimal/decimal.dart';
import 'package:ethereum_addresses/ethereum_addresses.dart';
import 'package:hd_wallet/exceptions/unsupported_method_exception.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/evm_eip1559_tx_dto.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/evm_wallet_mixin.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/quai/quai_address.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/quai/quai_colosseum_mixins.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/shardeum/shardeum_tx_dto.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/services.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/solana/solana_transaction_dto.dart';
import 'package:hd_wallet/hd_wallet/util.dart';
import 'package:hd_wallet/hd_wallet/wallet/base_wallet.dart';
import 'package:hd_wallet/hd_wallet/wallet/key_pair.dart';
import 'package:hd_wallet/logging/logging_helper.dart';
import 'package:rq_exception/rq_exception.dart';
import 'package:meta/meta.dart';
import 'package:sec/sec.dart';
import 'package:hex/hex.dart';
import 'package:kadena_dart_sdk/models/pact_models.dart';
import 'package:kadena_dart_sdk/models/quicksign_models.dart';
import 'package:kadena_dart_sdk/signing_api/signing_api.dart';
import 'package:pinenacl/ed25519.dart';
import 'package:pointycastle/export.dart' hide Digest;
import 'package:slip_0010_ed25519/slip_0010_ed25519.dart';
import 'package:solana/base58.dart' as solana_base58;
import 'package:solana/dto.dart';
import 'package:solana/encoder.dart' as solana_encoder;

import 'package:solana/solana.dart' as solana;
import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart' as web3dart;
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/web3_dart_partial_dto.dart';
import '../hd_wallet_roq/evm/evm_tx_dto.dart';
// QUAI
import '../hd_wallet_roq/evm/quai/quai_transaction_signer.dart' as web3dart_quai;
import '../hd_wallet_roq/evm/quai/quai_transaction.dart';
import '../hd_wallet_roq/evm/quai/quai_tx_dto.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/quai/quai_address_generator.dart';

part '../hd_wallet_dummy/kadena/kadena_wallet_dummy.dart';

part '../hd_wallet_roq/evm/evm_wallet.dart';

part '../hd_wallet_roq/evm/evm_eip1559_euc.dart';

part '../hd_wallet_roq/kadena/kadena_wallet_euc.dart';

part '../hd_wallet_roq/evm/quai/quai_colosseum.dart';

part '../hd_wallet_roq/evm/shardeum_sphinx.dart';

part '../hd_wallet_roq/solana/solana_mainnet.dart';

part '../hd_wallet_roq/solana/solana_euc.dart';

part '../hd_wallet_roq/roqqu_id_wallet.dart';

abstract class AccountWallet<T> extends Wallet<T> {
  final int? accountIdx;
  final String? derivationPath;

  KeyPair? _keyPair; // we cache this because it's an expensive operation

  // Constructor
  AccountWallet(
    super.bip39Seed, {
    this.accountIdx,
    this.derivationPath,
  });

  String getDerivationPath();

  @protected
  String getAddress(KeyPair keyPair);

  String get address => getAddress(getCachedKeyPair());

  String get accountDerivationPath {
    if (derivationPath != null) {
      return derivationPath!;
    } else {
      return getDerivationPath().replaceAll('account', accountIdx.toString());
    }
  }

  @protected
  KeyPair getKeyPair();

  String get publicKey => getCachedKeyPair().publicKey;

  @protected
  KeyPair getCachedKeyPair() {
    _keyPair ??= getKeyPair();
    return _keyPair!;
  }

  Future<String> signTransaction(T toSign);

  @override
  String toString() {
    return "Wallet:"
        "\n Blockchain: $runtimeType"
        "\n Account Derivation Path: $accountDerivationPath"
        "\n Address: $address"
        "\n Public Key: $publicKey"
        "\n";
  }
}
