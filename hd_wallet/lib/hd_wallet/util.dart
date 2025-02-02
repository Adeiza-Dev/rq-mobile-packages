import 'dart:convert';
import "dart:typed_data";

import 'package:decimal/decimal.dart';
import 'package:hex/hex.dart';
import 'package:fixnum/fixnum.dart' as fixnum;

const int sizeByte = 255;

class Util {
  static bool isHexString(String input) {
    List<String> hexChars = [
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      'a',
      'b',
      'c',
      'd',
      'e',
      'f'
      // ,
      // 'A',
      // 'B',
      // 'C',
      // 'D',
      // 'E',
      // 'F'
    ];
    for (int i = 0; i < input.length; i++) {
      if (!hexChars.contains(input[i])) {
        return false;
      }
    }
    return true;
  }

  /// Converts a Uint8List to a hex string
  static String byteToHex(Uint8List bytes) {
    return HEX.encode(bytes);
  }

  /// Converts a hex string to a Uint8List
  static Uint8List hexToBytes(String hex) {
    return Uint8List.fromList(HEX.decode(hex));
  }

  static List<int> bigIntToBytes(BigInt number, int size) {
    var bytes = number.toRadixString(16).padLeft(size * 2, '0');
    var result = List<int>.generate(size, (i) => int.parse(bytes.substring(i * 2, i * 2 + 2), radix: 16));
    return result;
  }

  static Uint8List encodeBigInt(BigInt number) {
    int needsPaddingByte;
    int rawSize;
    final negativeFlag = BigInt.from(0x80);
    var byteMask = BigInt.from(0xff);

    if (number > BigInt.zero) {
      rawSize = (number.bitLength + 7) >> 3;
      needsPaddingByte = ((number >> (rawSize - 1) * 8) & negativeFlag) == negativeFlag ? 1 : 0;

      if (rawSize < 32) {
        needsPaddingByte = 1;
      }
    } else {
      needsPaddingByte = 0;
      rawSize = (number.bitLength + 8) >> 3;
    }

    final size = rawSize < 32 ? rawSize + needsPaddingByte : rawSize;
    var result = Uint8List(size);
    for (int i = 0; i < size; i++) {
      result[size - i - 1] = (number & byteMask).toInt();
      number = number >> 8;
    }
    return result;
  }

  static Uint8List amountToBytes32(Decimal amount) {
    BigInt valueBigInt = (amount * Decimal.fromInt(100)).toBigInt();
    String valueHex = valueBigInt.toRadixString(16).padLeft(64, '0');
    Uint8List valueBytes = Uint8List.fromList(HEX.decode(valueHex));
    return valueBytes;
  }

  static BigInt bytesToBigInt(Uint8List bytes) {
    return BigInt.parse(HEX.encode(bytes), radix: 16);
  }

  static BigInt amountWithDecimal(Decimal value, int decimals) {
    return (value * Decimal.fromInt(10).pow(decimals).toDecimal()).toBigInt();
  }

  static void writeLongBE(int value, BytesBuilder bufferBuilder) {
    var byteCount = 8;
    // using this (fitnum) because Int64 accessor not supported by dart2js
    var int64Value = fixnum.Int64(value);

    var bytes = Uint8List(byteCount);
    var byteData = ByteData.sublistView(bytes);

    // Manually encode the Int64 in big-endian format
    for (int i = 0; i < byteCount; i++) {
      byteData.setUint8(byteCount - 1 - i, (int64Value >> (8 * i)).toInt() & 0xFF);
    }

    bufferBuilder.add(bytes);
  }

  static Uint8List writeString(String str) {
    var length = Uint8List(4);
    var byteData = ByteData.view(length.buffer);
    byteData.setUint32(0, str.length, Endian.big);
    var asciiUint8List = Uint8List.fromList(ascii.encode(str));
    var hashPartUint8List = Uint8List.fromList(length + asciiUint8List);
    return hashPartUint8List;
  }

  static String toHex32Padded(BigInt value) => value.toRadixString(16).padLeft(64, '0');

  static String padHexStringTo32ByteBoundary(String hexString) {
    int remainder = hexString.length % 64;
    if (remainder != 0) {
      int paddingLength = 64 - remainder;
      hexString = hexString.padRight(hexString.length + paddingLength, '0');
    }

    return hexString;
  }

  static BigInt decodeBigInt(Uint8List bytes) {
    BigInt result = BigInt.zero;
    for (int i = 0; i < bytes.length; i++) {
      result = result * BigInt.from(256) + BigInt.from(bytes[i]);
    }
    return result;
  }
}
