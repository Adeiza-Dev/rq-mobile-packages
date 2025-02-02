import 'dart:collection';
import 'dart:convert';

// import 'dart:convert'; // for the utf8.encode method
import 'package:crypto/crypto.dart';

import '/exceptions/unsupported_wallet_type_exception.dart';
import 'hd_wallet/hd_wallet.dart';

class HDWallets {
  final Map<String, HDWallet> _hdwallets = HashMap();

  HDWallet brandNew(String derivationId, [String passPhrase = ""]) {
    HDWallet hdWalletAbstract;
    switch (derivationId) {
      case "euc":
        hdWalletAbstract = HDWalletEuc.brandNew(passPhrase);
        break;
      case "dummy":
        hdWalletAbstract = HDWalletDummy.brandNew(passPhrase);
        break;
      default:
        throw UnsupportedWalletTypeException(derivationId);
    }
    // add to hash map
    _hdwallets[_getHashMapKey(derivationId, hdWalletAbstract.recoveryPhrase, passPhrase)] = hdWalletAbstract;
    return hdWalletAbstract;
  }

  HDWallet fromRecoveryPhrase(String derivationId, String recoveryPhrase, [String passPhrase = ""]) {
    String hashMapKey = _getHashMapKey(derivationId, recoveryPhrase, passPhrase);
    var keyExists = _hdwallets.containsKey(hashMapKey);
    if (keyExists) {
      return _hdwallets[hashMapKey]!;
    }

    HDWallet hdWalletAbstract;
    switch (derivationId) {
      case "euc":
        hdWalletAbstract = HDWalletEuc.fromRecoveryPhrase(recoveryPhrase, passPhrase);
        break;
      case "dummy":
        hdWalletAbstract = HDWalletDummy.fromRecoveryPhrase(recoveryPhrase, passPhrase);
        break;
      default:
        throw UnsupportedWalletTypeException(derivationId);
    }
    // add to hash map
    _hdwallets[_getHashMapKey(derivationId, hdWalletAbstract.recoveryPhrase, passPhrase)] = hdWalletAbstract;
    return hdWalletAbstract;
  }

  String _getHashMapKey(String derivationId, String recoveryPhrase, String passPhrase) {
    // hash these so the original values are not stored anywhere in memory
    var bytes = utf8.encode(recoveryPhrase);
    var digestRP = sha1.convert(bytes);
    bytes = utf8.encode(passPhrase);
    var digestPP = sha1.convert(bytes);

    return "${derivationId}_${digestRP}_$digestPP";
  }

  @override
  String toString() {
    return 'HDWallet: $_hdwallets';
  }
}
