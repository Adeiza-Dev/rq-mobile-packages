part of '../../wallet/account_wallet.dart';

// ignore_for_file: use_super_parameters

abstract class EVMEuc<Transaction, TransactionDTO extends EVMTransactionDTO>
    extends AccountWallet<TransactionDTO> with EVMEucMixin {
  EVMEuc(
    super.bip39seed, {
    super.accountIdx,
    super.derivationPath,
  });

  @protected
  List<int> postProcessSignature(Uint8List signature, TransactionDTO toSign) {
    return signature;
  }

  @protected
  Uint8List generateRawSignature(
    Transaction transaction,
    web3dart.EthPrivateKey cred, {
    int? chainId,
  });

  @protected
  Web3DartPartialDto buildWeb3PartialDto(
    TransactionDTO toSign,
    Decimal decimalsMultiplier,
  ) {
    // To-address and data and amount depend on if it's a vanilla tx or a token tx
    Uint8List data;
    web3dart.EthereumAddress web3toAddress;
    web3dart.EtherAmount amount;

    if (toSign.type == 'transfer') {
      // if it's a vanilla parent chain transfer
      data = Uint8List(0); // if vanilla TX set to Uint8List(0)
      web3toAddress = web3dart.EthereumAddress.fromHex(
        toSign.to,
      );
      amount = web3dart.EtherAmount.fromBigInt(
          web3dart.EtherUnit.wei, (toSign.value * decimalsMultiplier).toBigInt());
    } else if (toSign.type == 'erc20Transfer') {
      // if it's an erc-20 token transfer
      var abiJson =
          '[    {      "constant": false,    "inputs": [  {    "name": "_to",    "type": "address"  },  {    "name": "_value",    "type": "uint256"  }    ],    "name": "transfer",    "outputs": [  {   "name": "",  "type": "bool"  }    ],   "payable": false,    "stateMutability": "nonpayable",    "type": "function"  }    ]';
      // ContractFunction function =
      final abi = web3dart.ContractAbi.fromJson(abiJson, 'erc-20');
      final function = abi.functions.single;
      final web3dart.EthereumAddress receiver = web3dart.EthereumAddress.fromHex(toSign.to);
      BigInt bigIntAmount = (toSign.value * decimalsMultiplier).toBigInt();
      final params = [receiver, bigIntAmount];
      data = function.encodeCall(params);
      web3toAddress = web3dart.EthereumAddress.fromHex(
        toSign.contractAddress!,
      );
      amount = web3dart.EtherAmount.zero();
    } else {
      data = hexToBytes(toSign.dataHash ?? '');
      web3toAddress = web3dart.EthereumAddress.fromHex(
        toSign.contractAddress!,
      );
      amount = web3dart.EtherAmount.fromBigInt(
          web3dart.EtherUnit.wei, (toSign.value * decimalsMultiplier).toBigInt());
    }

    return Web3DartPartialDto(
      to: web3toAddress,
      data: data,
      amount: amount,
    );
  }

  @protected
  Transaction buildWeb3DartDto(
    TransactionDTO transactionDto,
    web3dart.EthereumAddress? from,
    web3dart.EthereumAddress? to,
    int? nonce,
    web3dart.EtherAmount? value,
    Uint8List? data,
  );

  @override
  Future<String> signTransaction(TransactionDTO toSign) async {
    // Decimal decimals = Decimal.fromInt(ethereumTransactionDTO.decimals);
    final decimalsMultiplier = Decimal.ten.pow(toSign.decimals).toDecimal();

    // convert DTO to web3dart types
    web3dart.EthereumAddress web3fromAddress = web3dart.EthereumAddress.fromHex(toSign.from);

    Web3DartPartialDto web3PartialDto = buildWeb3PartialDto(toSign, decimalsMultiplier);

    // create web3dart Transaction
    Transaction web3Transaction = buildWeb3DartDto(
      toSign,
      web3fromAddress,
      web3PartialDto.to,
      toSign.nonce,
      web3PartialDto.amount,
      web3PartialDto.data,
    );

    // sign the transaction with private key
    final credentials = web3dart.EthPrivateKey.fromHex(
      strip0x(getCachedKeyPair().privateKey),
    );
    final signature = generateRawSignature(web3Transaction, credentials, chainId: toSign.chainId);

    final signed = postProcessSignature(signature, toSign);

    return bytesToHex(signed, include0x: true, padToEvenLength: true);
  }

  String personalSignMessage(String message) {
    final credentials = web3dart.EthPrivateKey.fromHex(
      strip0x(getCachedKeyPair().privateKey),
    );
    final signature = credentials.signPersonalMessageToUint8List(ascii.encode(message));
    return '0x${bytesToHex(signature)}';
  }

  String verifyPersonalSignedMessage(String messageHex, String signatureHex) {
    final newSignature = personalSignMessage(messageHex);
    if (newSignature != signatureHex) throw Exception('Signature does not match');
    return getAddress(getCachedKeyPair());
  }

  String signTypedData(Map<String, dynamic> typedData) {
    final credentials = web3dart.EthPrivateKey.fromHex(
      strip0x(
        getCachedKeyPair().privateKey,
      ),
    );
    final signature = credentials.signToUint8List(ascii.encode(typedData.toString()));
    return '0x${bytesToHex(signature)}';
  }

  @override
  KeyPair getKeyPair() {
    bip32.BIP32 keyData = _deriveKeyPair();
    var privateKey = '0x${HEX.encode(keyData.privateKey!)}';
    var publicKey = '0x${HEX.encode(keyData.publicKey)}';
    var privateKeyRaw = keyData.privateKey!;
    var publicKeyRaw = keyData.publicKey;
    return KeyPair(
      privateKey: privateKey,
      publicKey: publicKey,
      privateKeyRaw: privateKeyRaw,
      publicKeyRaw: publicKeyRaw,
    );
  }

  bip32.BIP32 _deriveKeyPair() {
    var bip39SeedAsBytes = HEX.decode(getSeed());
    bip32.BIP32 bip32RootNode = bip32.BIP32.fromSeed(bip39SeedAsBytes as Uint8List);
    bip32.BIP32 addressNode = bip32RootNode.derivePath(accountDerivationPath);
    return addressNode;
  }
}
