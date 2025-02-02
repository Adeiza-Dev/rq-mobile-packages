import 'package:bitcoin_base/bitcoin_base.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/bitcoin/bitcoin_exception.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/bitcoin/bitcoin_transaction_builder.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/bitcoin/bitcoin_tx_dto.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/bitcoin/utxo_wallet_helper.dart';
import 'package:hd_wallet/hd_wallet/wallet/base_wallet.dart';
import 'package:hd_wallet/logging/logging_helper.dart';

import '../hd_wallet_roq/bitcoin/account_data.dart';

part '../hd_wallet_roq/bitcoin/bitcoin_wallet.dart';

abstract class UTXOWallet extends Wallet<Object> {
  // Constructor
  UTXOWallet(super.bip39Seed);

  Future<String> getNextAddress();

  // todo: converto BitcoinTransactionDTO to UTXOTransactionDTO?
  Future<String> signTransaction(BitcoinTransactionDTO bitcoinTransactionDTO);

  Future<String> submitTransaction(String raw);

  @override
  String toString() {
    return "Wallet:"
        "\n Blockchain: $runtimeType"
        "\n";
  }
}
