import 'package:hd_wallet/hd_wallet/hd_wallet.dart';
import 'package:hd_wallet/hd_wallets.dart';
import 'package:hd_wallet/logging/logging_helper.dart';

void main() {
  const recoveryPhrase =
      'sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh pair';

  HDWallets hdWallet = HDWallets();
  HDWallet hdWalletAbstract = hdWallet.fromRecoveryPhrase('euc', recoveryPhrase);

  final kadena = hdWalletAbstract.getAccountWallet('kadena', accountIdx: 0);

  rqLog(kadena.toString());

  rqLog('address: ${kadena.address}');
}
