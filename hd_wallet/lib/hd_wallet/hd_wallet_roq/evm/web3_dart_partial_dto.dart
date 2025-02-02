import 'dart:typed_data';

import 'package:web3dart/web3dart.dart';

class Web3DartPartialDto {
  final Uint8List? data;
  final EthereumAddress? to;
  final EtherAmount? amount;

  Web3DartPartialDto({
    this.data,
    this.to,
    this.amount,
  });
}
