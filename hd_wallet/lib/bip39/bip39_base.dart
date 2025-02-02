// adapted from https://github.com/dart-bitcoin/bip39

import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart' show sha256;
import 'package:hex/hex.dart';

import '../exceptions/invalid_checksum_exception.dart';
import '../exceptions/invalid_entropy_exception.dart';
import '../exceptions/invalid_word_count_exception.dart';
import '../exceptions/invalid_word_exception.dart';
import 'english.dart';
import 'pbkdf2_bitcoin.dart';

const int _SIZE_BYTE = 255;

bool isValidBip39Word(String word) {
  return WORDLIST.contains(word);
}

String generateRandomRecoveryPhrase(int numWords) {
  int entropyBits = (numWords * 4) ~/ 3; // 3 words per 32 bits
  final entropy = _randomBytes(entropyBits);
  return _entropyToRecoveryPhrase(HEX.encode(entropy), entropyBits);
}

Uint8List _randomBytes(int size) {
  final rng = Random.secure();
  final bytes = Uint8List(size);
  for (var i = 0; i < size; i++) {
    bytes[i] = rng.nextInt(_SIZE_BYTE);
  }
  return bytes;
}

String _entropyToRecoveryPhrase(String entropyString, int numEntropyBits) {
  final entropy = Uint8List.fromList(HEX.decode(entropyString));
  if (entropy.length < numEntropyBits) {
    throw InvalidEntropyException("Too small");
  }
  if (entropy.length > numEntropyBits) {
    throw InvalidEntropyException("Too big");
  }
  final entropyBits = _bytesToBinary(entropy);
  final checksumBits = _deriveChecksumBits(entropy);
  final bits = entropyBits + checksumBits;
  final regex = new RegExp(r".{1,11}", caseSensitive: false, multiLine: false);
  final chunks = regex.allMatches(bits).map((match) => match.group(0)!).toList(growable: false);
  List<String> wordlist = WORDLIST;
  String words = chunks.map((binary) => wordlist[_binaryToByte(binary)]).join(' ');
  return words;
}

String _bytesToBinary(Uint8List bytes) {
  return bytes.map((byte) => byte.toRadixString(2).padLeft(8, '0')).join('');
}

int _binaryToByte(String binary) {
  return int.parse(binary, radix: 2);
}

String _deriveChecksumBits(Uint8List entropy) {
  final ENT = entropy.length * 8;
  final CS = ENT ~/ 32;
  final hash = sha256.convert(entropy);
  return _bytesToBinary(Uint8List.fromList(hash.bytes)).substring(0, CS);
}

String validateRecoveryPhrase(String recoveryPhrase, int expectedLength) {
  _recoveryPhraseToEntropy(recoveryPhrase, expectedLength);
  return recoveryPhrase;
}

String _recoveryPhraseToEntropy(recoveryPhrase, int expectedLength) {
  var words = recoveryPhrase.split(' ');
  if (words.length != expectedLength) {
    throw InvalidWordCountException(words.length);
  }
  final wordlist = WORDLIST;
  // convert word indices to 11 bit binary strings
  final bits = words.map((word) {
    final index = wordlist.indexOf(word);
    if (index == -1) {
      throw InvalidWordException(word);
    }
    return index.toRadixString(2).padLeft(11, '0');
  }).join('');
  // split the binary string into ENT/CS
  final dividerIndex = (bits.length / 33).floor() * 32;
  final entropyBits = bits.substring(0, dividerIndex);
  final checksumBits = bits.substring(dividerIndex);

  // calculate the checksum and compare
  final regex = RegExp(r".{1,8}");
  final entropyBytes = Uint8List.fromList(
      regex.allMatches(entropyBits).map((match) => _binaryToByte(match.group(0)!)).toList(growable: false));
  if (entropyBytes.length < 32) {
    throw InvalidEntropyException("Too small");
  }
  if (entropyBytes.length > 32) {
    throw InvalidEntropyException("Too big");
  }
  final newChecksum = _deriveChecksumBits(entropyBytes);
  if (newChecksum != checksumBits) {
    throw InvalidChecksumException();
  }
  return entropyBytes.map((byte) {
    return byte.toRadixString(16).padLeft(2, '0');
  }).join('');
}

String recoveryPhraseToBip39Seed(String recoveryPhrase, [String passPhrase = ""]) {
  return _pbkdf2(recoveryPhrase, passPhrase).map((byte) {
    return byte.toRadixString(16).padLeft(2, '0');
  }).join('');
}

Uint8List _pbkdf2(String recoveryPhrase, [String passPhrase = ""]) {
  final pbkdf2 = PBKDF2_Bitcoin();
  return pbkdf2.process(recoveryPhrase, passPhrase);
}
