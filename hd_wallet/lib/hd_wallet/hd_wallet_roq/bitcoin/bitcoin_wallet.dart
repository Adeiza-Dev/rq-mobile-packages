part of '../../wallet/utxo_wallet.dart';
// ignore_for_file: use_super_parameters

enum ReceivingOrChange { receiving, change }

class BitcoinEuc extends UTXOWallet {
  final BitcoinAddressType _bitcoinAddressType;
  final BitcoinNetwork _network;

  final TransactionBuilder _transactionBuilder = TransactionBuilder();

  // fixme can we make this final?
  late final UTXOWalletHelper _utxoWalletHelper;

  // fixme: walletIdx is effectively always 0.. idx should be stored in sembast and read/updated every time a new receive address is created
  BitcoinEuc(String bip39seed, String apiUrl)
      : _bitcoinAddressType = BitcoinAddressType.p2wpkh,
        _network = BitcoinNetwork.mainnet,
        super(bip39seed) {
    // todo remove boilerplate code
    _utxoWalletHelper = UTXOWalletHelper(getSeed(), _network, _bitcoinAddressType, apiUrl);
  }

  // todo only used in tests, see if there's a better way
  BitcoinEuc.withAddressTypeAndNetwork(String bip39seed, String apiUrl, this._bitcoinAddressType, this._network)
      : _utxoWalletHelper = UTXOWalletHelper(bip39seed, _network, _bitcoinAddressType, apiUrl),
        super(bip39seed);

// todo: enable if/when we support beyond segwit addresses
/*
  BitcoinEuc.withAddressType(String bip39seed, this._bitcoinAddressType)
      : _network = BitcoinNetwork.mainnet,
        super(bip39seed) {
    // todo remove boilerplate code
    _api = ApiProvider.fromMempool(_network, BitcoinApiService());
    _utxoWalletHelper =
        UTXOWalletHelper(_network, _api, getSeed(), _bitcoinAddressType);
  }
  */

  @override
  Future<String> signTransaction(BitcoinTransactionDTO bitcoinTransactionDTO) async {
    // todo: figure out how to build the correct address depending on the input value
    final receiverAddress = P2wpkhAddress.fromAddress(address: bitcoinTransactionDTO.to, network: _network);

    final seed = getSeed();
    final changeAddress = (await _utxoWalletHelper.getNextChangeCleanAddress()).bitcoinAddress;

    final accountData = await _fetchAccountDataWithSats(seed, bitcoinTransactionDTO.value);

    final feeRate = await _utxoWalletHelper.getFeeRate();

    final transactionBuilderDTO = TransactionBuilderDTO(
        network: _network,
        receiverAddress: receiverAddress,
        changeAddress: changeAddress,
        bitcoinTransactionDTO: bitcoinTransactionDTO,
        bitcoinFeeRate: feeRate,
        accountAddressDataWithUtxos: accountData);

    return doSignTransaction((transactionBuilderDTO) => _transactionBuilder.signTransaction(transactionBuilderDTO),
        transactionBuilderDTO, seed, accountData, bitcoinTransactionDTO.value);
  }

  Future<String> doSignTransaction(Future<String> Function(TransactionBuilderDTO transactionBuilderDTO) signer,
      TransactionBuilderDTO transactionBuilderDTO, String seed, List<AccountData> accountData, BigInt value) async {
    try {
      return signer(transactionBuilderDTO);
    } on InsufficientUTXOsFetched {
      // fee + value must be greater than what was fetched on first UTXOs batch, let's fetch some more
      final newBatch = await _fetchAccountDataWithSats(seed, accountData.utxosValue() - value);

      // and try again
      return signer(TransactionBuilderDTO.copy(transactionBuilderDTO, accountData + newBatch));
    } catch (e, s) {
      // todo change to debug or something
      rqLog("Failed to sign tx for address $_bitcoinAddressType: $s");
      rethrow;
    }
  }

  Future<List<AccountData>> _fetchAccountDataWithSats(String seed, BigInt value) async {
    // todo load address window from props?
    int count = 5; // Using 5 as a higher value gets rejected by public electrum servers
    return _utxoWalletHelper.findAccountDataForValue(value, 0, count);
  }

  @override
  Future<String> getNextAddress() async {
    AccountData accountData = await _utxoWalletHelper.getNextReceivingCleanAddress();
    return Future(() => accountData.bitcoinAddress.toAddress(_network));
  }

  @override
  Future<String> submitTransaction(String raw) async {
    return _utxoWalletHelper.submitTransaction(raw);
  }
}
