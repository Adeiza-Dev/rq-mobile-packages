import 'package:flutter_test/flutter_test.dart';

// import 'package:hd_wallet/hd_wallet/hd_wallet.dart';
// import 'package:http/http.dart';
// import 'package:web3dart/crypto.dart';
// import 'package:web3dart/web3dart.dart';
// import 'dart:typed_data';

const recoveryPhrase =
    "sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh pair";

Future<void> main() async {
  // final hdWalletFrom = HDWalletEuc.fromRecoveryPhrase(recoveryPhrase, env);
  // final ethSepoliaWalletFrom = hdWalletFrom.getWallet('ethereum_sepolia');

  test('create a ethereum_sepolia transaction request', () async {
//     print(ethSepoliaWalletFrom);
//     EthereumAddress web3fromAddress = EthereumAddress.fromHex(
//         ethSepoliaWalletFrom.address,
//         enforceEip55: true);
//     print('from address: ${web3fromAddress.hexEip55}');
//     EthereumAddress web3toAddress = EthereumAddress.fromHex(
//         '0x653032B1526355a448a1c83d40131DFaD217BC6A',
//         enforceEip55: true);
//     print('to address: ${web3toAddress.hexEip55}');
//     final transaction = Transaction(
//       from: web3fromAddress,
//       to: web3toAddress,
//       nonce: 7,
//       maxGas: 21000,
//       value: EtherAmount.inWei(BigInt.from(100)),
//       maxFeePerGas: EtherAmount.fromBigInt(
//         EtherUnit.wei,
//         BigInt.from(1000000000000),
//       ),
//       maxPriorityFeePerGas: EtherAmount.fromBigInt(
//         EtherUnit.wei,
//         BigInt.from(2000000000),
//       ),
//       data: Uint8List(0),
//     );
//     print(transaction.toString());
//
//     // get Balance
//
//     var apiUrl =
//         "https://sepolia.infura.io/v3/6f14124b1fd74879a06c4045899cbff8";
//     // var apiUrl =
//     //     "https://goerli.infura.io/v3/6f14124b1fd74879a06c4045899cbff8";
//     var ethClient = Web3Client(apiUrl, Client());
//     var networkId = await ethClient.getNetworkId();
//     print('networkId: $networkId');
// // You can now call rpc methods. This one will query the amount of Ether you own
//
//     var numTXs = await ethClient.getTransactionCount(web3fromAddress,
//         atBlock: const BlockNum.pending());
//     print('numTXs: $numTXs');
//     EtherAmount balance = await ethClient.getBalance(web3fromAddress);
//     print('balance: ${balance.getValueInUnit(EtherUnit.ether)}');
//
//     // send
//     // create signing key
//     final credentials = EthPrivateKey.fromHex(strip0x(
//         '0xeb4e48d4d0a659aba39de8a1284f10b6cd98970a20748f182b1f2c0cb45d9da0'));
//
//     print('from address: ${credentials.address.hexEip55}');
//
//     // send it the easy way
//     // var signature =
//     //     await ethClient.signTransaction(credentials, transaction, chainId: 4);
//     // var txAsHexString =
//     //     bytesToHex(signature, include0x: true, padToEvenLength: true);
//     // print('txAsHexString A: $txAsHexString');
//     // var val = await ethClient.sendTransaction(credentials, transaction,
//     //     chainId: 11155111);
//     // print('val: $val');
//
//     // send it the raw way
//    var signature = signTransactionRaw(transaction, credentials, chainId: 11155111);
//   var  signed = prependTransactionType(0x02, signature);
//
//     var txAsHexString =
//         bytesToHex(signed, include0x: true, padToEvenLength: true);
//     print('txAsHexString B: $txAsHexString');
//     var val = await ethClient.sendRawTransaction(signed);
//
//     print('val: $val');
//     //0xf5dffb3aa32cff82f5e40e1f930b3b93cdcd2679c64592ec828a09c9ecb4bee3
//     // curl https://sepolia.infura.io/v3/6f14124b1fd74879a06c4045899cbff8 \
//     // -X POST \
//     // -H "Content-Type: application/json" \
//     // -d '{"jsonrpc":"2.0","method":"eth_getTransactionReceipt","params": ["0xf5dffb3aa32cff82f5e40e1f930b3b93cdcd2679c64592ec828a09c9ecb4bee3"],"id":1}'
  });
}
