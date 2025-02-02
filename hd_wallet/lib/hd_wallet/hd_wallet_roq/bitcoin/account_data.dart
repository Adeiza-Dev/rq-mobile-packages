import 'package:bitcoin_base/bitcoin_base.dart';
import 'package:hd_wallet/hd_wallet/wallet/utxo_wallet.dart';

class AccountData {
  int index;
  ECPrivate private;
  String publicKey;
  String derivationPath;
  BitcoinAddress bitcoinAddress;
  BitcoinAddressType bitcoinAddressType;
  List<UtxoWithAddress> utxosWithAddress;
  ReceivingOrChange receivingOrChange;

  AccountData(this.index, this.private, this.publicKey, this.derivationPath, this.bitcoinAddress,
      this.bitcoinAddressType, this.utxosWithAddress, this.receivingOrChange);
}

extension Calculate on List<AccountData> {
  BigInt utxosValue() {
    return fold(BigInt.zero, (value, element) => value + element.utxosWithAddress.sumOfUtxosValue());
  }
}
