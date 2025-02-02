import 'package:meta/meta.dart';

abstract class Wallet<T> {
  final String _bip39Seed;

  // Constructor
  Wallet(this._bip39Seed);

  @protected
  String getSeed() {
    return _bip39Seed;
  }
}
