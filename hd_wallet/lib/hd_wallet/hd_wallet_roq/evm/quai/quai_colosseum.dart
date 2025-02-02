part of '../../../wallet/account_wallet.dart';

class QuaiEucColosseum extends EVMEuc<QuaiTransaction, QuaiTransactionDTO> with QuaiColosseumMixin {
  QuaiEucColosseum(
    super._bip39Seed, {
    super.accountIdx,
  });

  final LinkedHashMap<QuaiColosseumShard, KeyPair> _shardKeyPairs = LinkedHashMap();
  final LinkedHashMap<QuaiColosseumShard, QuaiAddress> _shardAddresses = LinkedHashMap();

  LinkedHashMap<QuaiColosseumShard, QuaiAddress> get shardAddresses => _shardAddresses;

  List<QuaiColosseumShard> shards = [];

  late QuaiAddressGenerator _quaiAddressGenerator;

  static QuaiColosseumShard fallbackShard = QuaiColosseumShard(
    shardId: 'cyprus1',
    shardName: 'Cyprus 1',
    shardPrefix: '0x00',
  );

  void setShardAddresses(Map<QuaiColosseumShard, QuaiAddress> value) {
    _shardAddresses
      ..clear()
      ..addAll(value);
  }

  void setShards(List<QuaiColosseumShard> value) {
    shards
      ..clear()
      ..addAll(value);

    _quaiAddressGenerator = QuaiAddressGenerator.fromPlatform(
      shards: shards,
      derivationPath: getDerivationPath().replaceAll('account', accountIdx.toString()),
      bip39Seed: getSeed(),
    );
  }

  @override
  String getDerivationPath() {
    return "m/44'/994'/account'/0/0";
  }

  @override
  Web3DartPartialDto buildWeb3PartialDto(QuaiTransactionDTO toSign, Decimal decimalsMultiplier) {
    Uint8List data;
    web3dart.EthereumAddress web3toAddress;
    web3dart.EtherAmount amount;

    data = Uint8List(0);
    web3toAddress = web3dart.EthereumAddress.fromHex(
      toSign.to,
    );
    amount = web3dart.EtherAmount.fromBigInt(web3dart.EtherUnit.wei, (toSign.value * decimalsMultiplier).toBigInt());

    return Web3DartPartialDto(data: data, to: web3toAddress, amount: amount);
  }

  @override
  Uint8List generateRawSignature(
    QuaiTransaction transaction,
    web3dart.EthPrivateKey cred, {
    int? chainId,
  }) {
    return web3dart_quai.signTransactionRaw(transaction, cred.privateKey, chainId: chainId!);
  }

  @override
  Future<String> signTransaction(QuaiTransactionDTO toSign) async {
    final decimalsMultiplier = Decimal.ten.pow(toSign.decimals).toDecimal();

    web3dart.EthereumAddress web3fromAddress = web3dart.EthereumAddress.fromHex(toSign.from);

    Web3DartPartialDto web3PartialDto = buildWeb3PartialDto(toSign, decimalsMultiplier);

    QuaiTransaction web3Transaction = buildWeb3DartDto(
      toSign,
      web3fromAddress,
      web3PartialDto.to,
      toSign.nonce,
      web3PartialDto.amount,
      web3PartialDto.data,
    );

    final addressShard = getShardByAddress(toSign.from);

    if (_shardKeyPairs[addressShard] == null) {
      await _generateShardAddressesAndKeyPairs();
    }

    final credentials = web3dart.EthPrivateKey.fromHex(
      strip0x(
        _shardKeyPairs[addressShard]!.privateKey,
      ),
    );

    final signature = generateRawSignature(web3Transaction, credentials, chainId: toSign.chainId);

    return bytesToHex(signature, include0x: true, padToEvenLength: true);
  }

  @override
  QuaiTransaction buildWeb3DartDto(QuaiTransactionDTO transactionDto, web3dart.EthereumAddress? from,
      web3dart.EthereumAddress? to, int? nonce, web3dart.EtherAmount? value, Uint8List? data) {
    Decimal gweiDecimalsInETH = Decimal.fromInt(1000000000);

    web3dart.EtherAmount maxFeePerGas = web3dart.EtherAmount.fromBigInt(
        web3dart.EtherUnit.wei, (transactionDto.maxFeePerGas * gweiDecimalsInETH).toBigInt());
    web3dart.EtherAmount maxPriorityFeePerGas = web3dart.EtherAmount.fromBigInt(
        web3dart.EtherUnit.wei, (transactionDto.maxPriorityFeePerGas * gweiDecimalsInETH).toBigInt());

    final web3Transaction = QuaiTransaction(
      type: transactionDto.type,
      from: from,
      to: to,
      nonce: nonce,
      maxGas: transactionDto.maxGas,
      value: value,
      maxFeePerGas: maxFeePerGas,
      maxPriorityFeePerGas: maxPriorityFeePerGas,
      data: data,
      chainId: transactionDto.chainId,
    );

    return web3Transaction;
  }

  @override
  List<int> postProcessSignature(Uint8List signature, QuaiTransactionDTO toSign) {
    final Uint8List signed;
    if (toSign.type == '0') {
      signed = web3dart_quai.prependTransactionType(0x00, signature);
    } else {
      signed = web3dart_quai.prependTransactionType(0x02, signature);
    }
    return signed;
  }

  @override
  KeyPair getKeyPair() {
    throw UnsupportedOperationException('quai_colosseum');
  }

  Future<String> getAddressByShard(QuaiColosseumShard shard) async {
    if (!_shardAddresses.containsKey(shard)) {
      await _generateShardAddressesAndKeyPairs();
    }

    return _shardAddresses[shard]!.address;
  }

  Future<List<String>> getAllAddresses() async {
    if (_shardAddresses.isEmpty) {
      await _generateShardAddressesAndKeyPairs();
    }

    // Initialize an empty list to collect all addresses
    List<String> addresses = extractQuaiAddressesFromMap(_shardAddresses);

    return addresses;
  }

  List<String> extractQuaiAddressesFromMap(
    LinkedHashMap<QuaiColosseumShard, QuaiAddress> addressesAndShards,
  ) {
    List<String> allAddresses = [];

    allAddresses = addressesAndShards.values.map((address) => address.address).toList();

    return allAddresses;
  }

  Future<LinkedHashMap<QuaiColosseumShard, QuaiAddress>> getOrderedAddressesAndShards() async {
    if (_shardAddresses.isEmpty) {
      await _generateShardAddressesAndKeyPairs();
    }

    return _shardAddresses;
  }

  QuaiColosseumShard getShardByAddress(String address) {
    final shard = determineShard(address, shards);

    if (shard == null) {
      throw Exception('Shard not found for address $address');
    }

    return shard;
  }

  Iterable<QuaiColosseumShard> getOrderedShards() {
    return _shardKeyPairs.keys;
  }

  Future<void> _generateShardAddressesAndKeyPairs() async {
    DateTime start = DateTime.now();
    await _quaiAddressGenerator.getAddressesAndKeyPairs(
      onKeyPairsGenerated: (keyPairs) => _shardKeyPairs.addAll(keyPairs),
      onAddressesGenerated: (addresses) => _shardAddresses.addAll(addresses),
      shards: shards,
    );

    final end = DateTime.now();
    final duration = end.difference(start);

    rqDebug("Generated shard addresses and key pairs, took ${duration.inMilliseconds}ms");
  }
}

class QuaiColosseumShard {
  final String shardName;
  final String shardId;
  final String shardPrefix;

  QuaiColosseumShard({
    required this.shardName,
    required this.shardId,
    required this.shardPrefix,
  });

  factory QuaiColosseumShard.fromJson(Map<String, dynamic> json) {
    return QuaiColosseumShard(
      shardName: json['shardName'],
      shardId: json['shardId'],
      shardPrefix: json['shardMaxPrefix'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'shardName': shardName,
      'shardId': shardId,
      'shardMaxPrefix': shardPrefix,
    };
  }
}
