import 'dart:typed_data';
import 'package:fixnum/fixnum.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/quai/proto_buffers/proto_block.pb.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/evm/quai/quai_transaction.dart';
import 'package:web3dart/crypto.dart';

Uint8List prependTransactionType(int type, Uint8List transaction) {
  return Uint8List(transaction.length + 1)
    ..[0] = type
    ..setAll(1, transaction);
}

Uint8List signTransactionRaw(
  QuaiTransaction quaiTransaction,
  Uint8List privateKey, {
  int chainId = 9000,
}) {
  // Create wallet and connect to provider
  final proto = ProtoTransaction.create();

  proto.setField(1, Int64(0)); //type
  proto.setField(2, Uint8List.fromList(quaiTransaction.to!.addressBytes)); // to address
  proto.setField(3, Int64(quaiTransaction.nonce ?? 0)); // nonce
  proto.setField(4, _toBeArray(quaiTransaction.value!.getInWei)); //value
  proto.setField(5, Int64(quaiTransaction.maxGas ?? 0)); // gas
  proto.setField(6, Uint8List.fromList(quaiTransaction.data ?? [])); //data
  proto.setField(7, _toBeArray(BigInt.from(quaiTransaction.chainId))); // chainId
  proto.setField(8, _toBeArray(quaiTransaction.maxFeePerGas!.getInWei)); // minerTip
  proto.setField(9, _toBeArray(quaiTransaction.maxPriorityFeePerGas!.getInWei)); // gasPrice
  proto.setField(10, ProtoAccessList()); // access list

  final digest2 = keccak256(proto.writeToBuffer());

  //   Sign the transaction
  final signature = sign(
    digest2,
    privateKey,
  );

  // Set v, r and s
  proto.setField(11, Uint8List.fromList([_yParity(signature.v)]));
  proto.setField(12, _toBeArray(signature.r));
  proto.setField(13, _toBeArray(signature.s));

  return proto.writeToBuffer();
}

int _yParity(int v) {
  return v == 27 ? 0 : 1;
}

Uint8List _toBeArray(BigInt value) {
  if (value == BigInt.zero) {
    return Uint8List(0);
  }

  String hex = value.toRadixString(16);
  if (hex.length % 2 != 0) {
    hex = '0$hex';
  }

  final result = Uint8List(hex.length ~/ 2);
  for (int i = 0; i < result.length; i++) {
    final offset = i * 2;
    result[i] = int.parse(hex.substring(offset, offset + 2), radix: 16);
  }

  return result;
}
