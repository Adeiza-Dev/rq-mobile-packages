import 'package:bitcoin_base/bitcoin_base.dart';
import 'package:blockchain_utils/blockchain_utils.dart';
import 'package:collection/collection.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/bitcoin/account_data.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/bitcoin/utxo_transaction_details.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/bitcoin/utxo_transaction_mapper.dart';
import 'package:hd_wallet/hd_wallet/wallet/utxo_wallet.dart';
import 'package:hd_wallet/logging/logging_helper.dart';
import 'package:hex/hex.dart';

import 'bitcoin_api_service.dart';

// todo review usage of futures to maximize parallelism
class UTXOWalletHelper {
  // todo better way of doing this?
  final maxBigInt = BigInt.from(2).pow(63) - BigInt.one;

  // todo make account a substitute param once we support multiple accounts/wallets
  static const String derivationPathTemplate = "m/84'/network'/0'/receivingOrChange/address";

  final BitcoinNetwork _network;
  late final ApiProvider _api;
  final Bip32Slip10Secp256k1 _bip32;
  final BitcoinAddressType _bitcoinAddressType;
  // todo extract caching to component
  final Map<ReceivingOrChange, Map<String, AccountData>> _addressRegistry = {};
  final Map<String, UTXOTransactionDetailsDTO> _transactionsById = {};
  final UTXOTransactionMapper _utxoTransactionMapper = UTXOTransactionMapper();

  final String baseUrl; // = ;

  UTXOWalletHelper(String seed, this._network, this._bitcoinAddressType, this.baseUrl)
      : _bip32 = Bip32Slip10Secp256k1.fromSeed(HEX.decode(seed)) {
    APIConfig apiConfig = APIConfig(
      url: "$baseUrl/address/###/utxo",
      feeRate: "$baseUrl/v1/fees/recommended",
      transaction: "$baseUrl/tx/###",
      sendTransaction: "$baseUrl/tx",
      apiType: APIType.mempool,
      transactions: "$baseUrl/address/###/txs",
      network: _network,
    );
    _api = ApiProvider(api: apiConfig, header: null, service: BitcoinApiService());
  }

  Future<String> submitTransaction(String raw) async {
    return _api.sendRawTransaction(raw).then((value) {
      rqLog("Submitted tx [$value] for digest $raw");
      return value;
    });
  }

  Future<BitcoinFeeRate> getFeeRate() async {
    return _api.getNetworkFeeRate();
  }

  Future<AccountData> getNextReceivingCleanAddress() async {
    return _getNextCleanAddress(ReceivingOrChange.receiving);
  }

  Future<AccountData> getNextChangeCleanAddress() async {
    return _getNextCleanAddress(ReceivingOrChange.change);
  }

  Future<List<AccountData>> findAllAccountDataForWallet() {
    return findAccountDataForValue(maxBigInt, 0, 5);
  }

  Future<SearchResults> _search(SearchContext searchContext) async {
    int contiguousEmptyAddresses = 0;
    int startUTXOIndex = searchContext.startUTXOIndex;

    do {
      final accountData = (await _collectAccountData(searchContext.addressType, startUTXOIndex,
          searchContext.totalUTXOsToFetchPerAPICall, searchContext.fetchUTXOs));

      final withSats = accountData.where((e) => e.utxosWithAddress.sumOfUtxosValue() > BigInt.zero);

      if (withSats.isEmpty) {
        contiguousEmptyAddresses += searchContext.totalUTXOsToFetchPerAPICall;
      }
      // todo revisit to confirm we don't need this as an else
      //else {
      searchContext.doWithAccountData(accountData);
      //}

      _addToRegistry(searchContext.addressType, accountData);

      startUTXOIndex += searchContext.totalUTXOsToFetchPerAPICall;
    }
    // todo: make this configurable
    while (contiguousEmptyAddresses <= 20);

    return Future(() => searchContext.results());
  }

  Future<List<AccountData>> findAccountDataForValue(BigInt value, int startIndex, int count) async {
    // todo run these searches in parallel
    SearchResults receivingResults = await _search(UTXOValueSearchContext(
        utxoWalletHelper: this,
        fetchUTXOs: true,
        totalUTXOsToFetchPerAPICall: count,
        startUTXOIndex: startIndex,
        addressType: ReceivingOrChange.receiving,
        valueOfFetchUTXOs: value));

    SearchResults changeResults = await _search(UTXOValueSearchContext(
        utxoWalletHelper: this,
        fetchUTXOs: true,
        totalUTXOsToFetchPerAPICall: count,
        startUTXOIndex: startIndex,
        addressType: ReceivingOrChange.change,
        valueOfFetchUTXOs: value));

    List<AccountData> results =
        (receivingResults as AccountDataSearchResults).results + (changeResults as AccountDataSearchResults).results;
    return Future(() => results);
  }

  // todo extract iterating logic to common method
  Future<List<UTXOTransactionDetailsDTO>> _findTransactions(BigInt value, int startIndex, int count) async {
    SearchResults results = await _search(TransactionsSearchContext(
        utxoWalletHelper: this,
        fetchUTXOs: true,
        totalUTXOsToFetchPerAPICall: count,
        startUTXOIndex: startIndex,
        addressType: ReceivingOrChange.receiving,
        valueOfFetchUTXOs: value));

    final List<MempoolTransaction> allTransactions = (results as TransactionSearchResults).results;

    List<UTXOTransactionDetailsDTO> dtos =
        allTransactions.map((e) => _utxoTransactionMapper.mapToTransactionDTO(e)).toList();

    List<UTXOTransactionDetailsDTO> newDTOs = [];
    for (var dto in dtos) {
      List<UTXOTransactionOutputDTO> newOutputs = [];

      for (var output in dto.outputs) {
        UTXOTransactionOutputType outputType = UTXOTransactionOutputType.unknown;
        if (output.scriptPubKeyAddress == null && output.scriptPubKeyType == "op_return") {
          outputType = UTXOTransactionOutputType.opreturn;
        } else {
          var accountData = await _fetchAccountDataByAddress(output.scriptPubKeyAddress!, ReceivingOrChange.receiving);
          if (accountData == null) {
            accountData = await _fetchAccountDataByAddress(output.scriptPubKeyAddress!, ReceivingOrChange.change);
            if (accountData != null) {
              outputType = UTXOTransactionOutputType.change;
            } else {
              outputType = UTXOTransactionOutputType.outgoing;
            }
          } else {
            // if the output is to self, let's see if the inputs are from self too
            List<String> matchingAddresses = [];
            List<String> inputsAddresses = dto.inputs.map((e) => e.previousOutput.scriptPubKeyAddress).toList();
            for (var inputsAccountAddress in inputsAddresses) {
              // We need to check both address purposes as coming from self can come from both
              var inputAccountData =
                  await _fetchAccountDataByAddress(inputsAccountAddress, ReceivingOrChange.receiving);
              inputAccountData ??= await _fetchAccountDataByAddress(inputsAccountAddress, ReceivingOrChange.change);
              if (inputAccountData != null) {
                matchingAddresses.add(inputAccountData.bitcoinAddress.toAddress(_network));
              }
            }

            int matching = inputsAddresses.where((element) => matchingAddresses.contains(element)).length;

            if (matching == 0) {
              outputType = UTXOTransactionOutputType.incoming;
            } else if (matching == inputsAddresses.length) {
              outputType = UTXOTransactionOutputType.consolidation;
            }
          }
        }

        UTXOTransactionOutputDTO outputDTO = UTXOTransactionOutputDTO.copy(output, outputType);
        newOutputs.add(outputDTO);
      }
      UTXOTransactionDetailsDTO transactionDetailsDTO = UTXOTransactionDetailsDTO.copy(dto, newOutputs);
      newDTOs.add(transactionDetailsDTO);
      _transactionsById[dto.txId] = transactionDetailsDTO;
    }

    return Future(() => newDTOs);
  }

  Future<List<UTXOTransactionDetailsDTO>> fetchTransactions() async {
    return _findTransactions(maxBigInt, 0, 5);
  }

  Future<UTXOTransactionDetailsDTO> fetchTransaction(String txId) async {
    if (_transactionsById.containsKey(txId)) {
      return Future(() => _transactionsById[txId]!);
    }
    List<UTXOTransactionDetailsDTO> transactionDTOs = await _findTransactions(maxBigInt, 0, 5);
    return Future(() => transactionDTOs.firstWhere((element) => element.txId == txId));
  }

  Future<AccountData?> _fetchAccountDataByAddress(String address, ReceivingOrChange receivingOrChange) async {
    int startIndex = 0;
    // todo: review this, it was messing with blocks of addresses where indexes had been skipped
    /*
    final addresses = _addressRegistry[receivingOrChange];
    if (addresses != null) {
      if (addresses.containsKey(address)) {
        return Future(() => addresses[address]!);
      }

      final sorted =
          addresses.values.sorted((e1, e2) => e1.index.compareTo(e2.index));
      startIndex = sorted.last.index;
    }
*/
    // todo decide a sane limit of addresses to fetch for finding a match
    int limit = 100;
    int count = 5;
    List<AccountData> accountData =
        await _findAccountData(receivingOrChange, startIndex, count, limit, fetchUTXOs: false);

    return Future(
        () => accountData.firstWhereOrNull((element) => element.bitcoinAddress.toAddress(_network) == address));
  }

  Future<List<AccountData>> _findAccountData(ReceivingOrChange receivingOrChange, int startIndex, int count, int limit,
      {bool fetchUTXOs = true}) async {
    SearchResults results = await _search(UTXOSearchContext(
        utxoWalletHelper: this,
        fetchUTXOs: false,
        totalUTXOsToFetchPerAPICall: count,
        startUTXOIndex: startIndex,
        addressType: receivingOrChange,
        valueOfFetchUTXOs: maxBigInt));

    return Future(() => (results as AccountDataSearchResults).results);
  }

  // todo review this: had to make public to be able to call it from TransactionsSearchContext, but should ideally be private
  Future<List<MempoolTransaction>> fetchTransactionsForAccounts(List<AccountData> allAccountData) async {
    final List<Future<List<MempoolTransaction>>> futures = [];

    for (var e in allAccountData) {
      futures.add(_api.getAccountTransactions(e.bitcoinAddress.toAddress(_network)));
    }

    List<List<MempoolTransaction>> transactions = await Future.wait(futures);
    List<MempoolTransaction> flattened = transactions.expand((element) => element).toList();
    return flattened;
  }

  Future<AccountData> _getNextCleanAddress(ReceivingOrChange receivingOrChange) async {
    List<AccountData>? addressesInRegistry = _addressRegistry[receivingOrChange]?.values.toList();

    int startIndex = 0;
    if (addressesInRegistry != null && addressesInRegistry.isNotEmpty) {
      // Use latest in memory record of the cached address
      AccountData? firstEmptyInRegistry = await _firstWhereAsync(addressesInRegistry, (AccountData accountData) async {
        return accountData.utxosWithAddress.isEmpty && await _isAddressClean(accountData.bitcoinAddress);
      });

      if (firstEmptyInRegistry != null) {
        return Future(() => firstEmptyInRegistry);
      }
      startIndex = addressesInRegistry.last.index + 1;
      /*
      startIndex = addressesInRegistry
          .firstWhere((element) => element.utxosWithAddress.isEmpty)
          .index;
      */
    }

    AccountData? firstCandidate;

    do {
      // todo load address window from props?
      List<AccountData> accountData = await _collectAccountData(receivingOrChange, startIndex, 5, true);

      // An address may have no UTXOs but still not be a clean address (ie an address that has received and spent UTXOs in multiple transactions)
      // So here we exclude any addresses with no UTXOs but more than 1 transaction (as having only 1 would imply having a UTXO)
      List<Future<AccountData?>> futures = accountData.map((element) async {
        return await _isAddressClean(element.bitcoinAddress) ? element : null;
      }).toList();

      List<AccountData?> filtered = await Future.wait(futures);

      firstCandidate = filtered
          .where((element) => element != null)
          .map((e) => e!)
          .sorted((e1, e2) => e1.index.compareTo(e2.index))
          .firstWhereOrNull((element) => element.utxosWithAddress.isEmpty);
    } while (firstCandidate == null);

    return Future(() => firstCandidate!);
  }

  void _addToRegistry(ReceivingOrChange receivingOrChange, List<AccountData> accountData) {
    // start tracking newly collected addresses
    if (!_addressRegistry.containsKey(receivingOrChange)) {
      _addressRegistry[receivingOrChange] = {};
    }

    Map<String, AccountData> accountDataByAddress = {};
    for (var element in accountData) {
      accountDataByAddress[element.bitcoinAddress.toAddress(_network)] = element;
    }
    _addressRegistry[receivingOrChange]!.addAll(accountDataByAddress);
  }

  // todo move to util class
  Future<T?> _firstWhereAsync<T>(Iterable<T> iterable, Future<bool> Function(T) condition) async {
    for (var item in iterable) {
      if (await condition(item)) {
        return item;
      }
    }
    return null;
  }

  Future<bool> _isAddressClean(BitcoinAddress bitcoinAddress) async {
    String address = bitcoinAddress.toAddress(_network);

    final transactions = await _api.getAccountTransactions(address);

    //print(
    //    "Fetched transactions $transactions for address $address leaving nonTransactedUtxosWithAddress ${element.utxosWithAddress}");
    return transactions.length <= 1;
  }

  Future<List<AccountData>> _collectAccountData(
      ReceivingOrChange receivingOrChange, int startIndex, int count, bool fetchUTXOs) async {
    var futures = List<Future<AccountData>>.generate(
      count,
      (index) => _buildAccountData(_bip32, receivingOrChange, startIndex + index, fetchUTXOs: fetchUTXOs),
    );

    return Future.wait(futures);
  }

  Future<AccountData> _buildAccountData(Bip32Slip10Secp256k1 bip32, ReceivingOrChange receivingOrChange, int index,
      {bool fetchUTXOs = true}) async {
    final accountDerivationPath = derivationPathTemplate
        .replaceAll("network", _network == BitcoinNetwork.mainnet ? "0" : "1")
        .replaceAll('receivingOrChange', receivingOrChange.index.toString())
        .replaceAll('address', index.toString());

    final bip32Base = bip32.derivePath(accountDerivationPath);

    final private = ECPrivate.fromBytes(bip32Base.privateKey.raw);
    ECPublic public = private.getPublic();
    BitcoinAddress bitcoinAddress = _buildAddress(public, _bitcoinAddressType);

    List<UtxoWithAddress> utxosWithAddress = fetchUTXOs
        ? await _api.getAccountUtxo(UtxoAddressDetails(publicKey: public.toHex(), address: bitcoinAddress))
        : [];

    // todo add pubkey address to avoid accessing it via bitcoinAddress.toAddress everytime
    return Future(() => AccountData(index, private, public.toHex(), accountDerivationPath, bitcoinAddress,
        _bitcoinAddressType, utxosWithAddress, receivingOrChange));
  }

  BitcoinAddress _buildAddress(ECPublic publicKey, BitcoinAddressType bitcoinAddressType) {
    switch (bitcoinAddressType) {
      case BitcoinAddressType.p2pkh: // legacy
        return publicKey.toP2pkAddress();

      case BitcoinAddressType.p2wsh: //
        return publicKey.toP2wshAddress();

      case BitcoinAddressType.p2wpkh: // native segwit
        return publicKey.toSegwitAddress();

      case BitcoinAddressType.p2tr: // taproot
        return publicKey.toTaprootAddress();

      default:
        throw Exception("Unsupported bitcoin address type: $bitcoinAddressType");
    }
  }
}

class SearchResults<T> {
  final List<T> results;

  SearchResults(this.results);
}

class AccountDataSearchResults extends SearchResults<AccountData> {
  AccountDataSearchResults(super.accountData);
}

class TransactionSearchResults extends SearchResults<MempoolTransaction> {
  TransactionSearchResults(super.transactions);
}

abstract class SearchContext {
  final bool fetchUTXOs;
  final int totalUTXOsToFetchPerAPICall;
  final int startUTXOIndex;
  final ReceivingOrChange addressType;
  final UTXOWalletHelper utxoWalletHelper;
  final BigInt valueOfFetchUTXOs;
  BigInt _satsSoFar = BigInt.zero;

  SearchContext(
      {required this.utxoWalletHelper,
      required this.fetchUTXOs,
      required this.totalUTXOsToFetchPerAPICall,
      required this.startUTXOIndex,
      required this.valueOfFetchUTXOs,
      required this.addressType});

  void doWithAccountData(List<AccountData> accountData);

  bool keepIterating() {
    return _satsSoFar < valueOfFetchUTXOs;
  }

  List<AccountData> minWithSats(List<AccountData> accountData) {
    final withSats = accountData.where((e) => e.utxosWithAddress.sumOfUtxosValue() > BigInt.zero);
    final minWithSats = withSats.where((obj) {
      // Only collect AccountData up to the required value, as count may fetch more than we actually need
      if (_satsSoFar > valueOfFetchUTXOs) {
        return false;
      }
      _satsSoFar += obj.utxosWithAddress.sumOfUtxosValue();
      return true;
    }).toList();

    return minWithSats;
  }

  SearchResults results();
}

class UTXOSearchContext extends SearchContext {
  final List<AccountData> allAccountData = [];

  UTXOSearchContext(
      {required super.utxoWalletHelper,
      required super.fetchUTXOs,
      required super.totalUTXOsToFetchPerAPICall,
      required super.startUTXOIndex,
      required super.addressType,
      required super.valueOfFetchUTXOs});

  @override
  void doWithAccountData(List<AccountData> accountData) {
    allAccountData.addAll(accountData);
  }

  @override
  SearchResults results() {
    return AccountDataSearchResults(allAccountData);
  }
}

class UTXOValueSearchContext extends UTXOSearchContext {
  UTXOValueSearchContext(
      {required super.utxoWalletHelper,
      required super.fetchUTXOs,
      required super.totalUTXOsToFetchPerAPICall,
      required super.startUTXOIndex,
      required super.addressType,
      required super.valueOfFetchUTXOs});

  @override
  void doWithAccountData(List<AccountData> accountData) {
    allAccountData.addAll(minWithSats(accountData));
  }
}

class TransactionsSearchContext extends SearchContext {
  final List<MempoolTransaction> allTransactions = [];

  TransactionsSearchContext(
      {required super.utxoWalletHelper,
      required super.fetchUTXOs,
      required super.totalUTXOsToFetchPerAPICall,
      required super.startUTXOIndex,
      required super.addressType,
      required super.valueOfFetchUTXOs});

  @override
  void doWithAccountData(List<AccountData> accountData) async {
    final transactionsForAccounts = await utxoWalletHelper.fetchTransactionsForAccounts(accountData);
    allTransactions.addAll(transactionsForAccounts);
  }

  @override
  SearchResults results() {
    return TransactionSearchResults(allTransactions);
  }
}
