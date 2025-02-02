import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hd_wallet/bip39/bip39_base.dart' as bip39;
import 'package:hd_wallet/hd_wallet/hd_wallet.dart';
import 'package:hd_wallet/hd_wallets.dart';

const recoveryPhrase =
    'sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh pair';

const expectedBip39Seed =
    '4f077eed4f8046c794ef42e9686b4bcc3d4d96460bbfd1f94aff0e3feb877b32c1b531fc732dd7838fa2c61a1b3c024920c606f4a83fc19234a86d07c788ce92';

const env = "test";

void main() {
  group('HDWallet BIP 39 validations tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Valid Word Test', () {
      expect(HDWalletEuc.isValidBip39Word('froggy'), false);
      expect(HDWalletEuc.isValidBip39Word('tree'), true);
    });

    test('Valid Recovery Phrase Test', () {
      expect(HDWalletEuc.validateRecoveryPhrase(recoveryPhrase), true);
    });
    test('Invalid Word Count Exception Test', () {
      expect(
          () => HDWalletEuc.validateRecoveryPhrase('sail verb knee pet prison million drift'),
          throwsA(predicate((e) =>
              e is InvalidWordCountException &&
              e.status == 'error_hdwallet.invalid_word_count' &&
              const MapEquality().equals(e.reasons, {'count': '7'}))));
    });
    test('Invalid Word Count (25) Exception Test', () {
      const recoveryPhrase =
          'sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh pair pair';
      expect(
          () => HDWalletEuc.validateRecoveryPhrase(recoveryPhrase),
          throwsA(predicate((e) =>
              e is InvalidWordCountException &&
              e.status == 'error_hdwallet.invalid_word_count' &&
              const MapEquality().equals(e.reasons, {'count': '25'}))));
    });
    test('Invalid Word Exception Test', () {
      const recoveryPhrase =
          'sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list froggy battle bring clump brother before mesh pair';
      expect(
          () => HDWalletEuc.validateRecoveryPhrase(recoveryPhrase),
          throwsA(predicate((e) =>
              e is InvalidWordException &&
              e.status == 'error_hdwallet.invalid_word' &&
              const MapEquality().equals(e.reasons, {'word': 'froggy'}))));
    });
    test('Invalid Checksum Exception Test', () {
      const recoveryPhrase =
          'sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh tree';
      expect(
          () => HDWalletEuc.validateRecoveryPhrase(recoveryPhrase),
          throwsA(predicate((e) =>
              e is InvalidChecksumException &&
              e.status == 'error_hdwallet.invalid_checksum' &&
              const MapEquality().equals(e.reasons, {}))));
    });
  });
  group('Create HDWallet tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Invalid Checksum Exception Test', () {
      const recoveryPhrase =
          'sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh tree';
      expect(
          () => HDWalletEuc.fromRecoveryPhrase(recoveryPhrase, env),
          throwsA(predicate((e) =>
              e is InvalidChecksumException &&
              e.status == 'error_hdwallet.invalid_checksum' &&
              const MapEquality().equals(e.reasons, {}))));
    });
  });

  group('Test bip 39 class directly', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Valid Recovery Phrase Test', () {
      final generatedBip39Seed = bip39.recoveryPhraseToBip39Seed(recoveryPhrase);
      expect(generatedBip39Seed, expectedBip39Seed);
    });
  });
}
