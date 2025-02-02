/// Please DON'T use this seed phrase to perform any actions: no sending, no receiving!
const recoveryPhrase =
    "craft measure infant humble source motor stick erase title essence oppose also cactus give fluid life tooth end finger episode hen vessel door domain";

void main() {
//   group('UTXO wallet helper tests', () {
//     const network = BitcoinNetwork.testnet;
//     const bitcoinAddressType = BitcoinAddressType.p2wpkh;

//     const incomingTxId =
//         "73c2602e55cd996b229de9e2ee3061234008cfd36f19cba7ef8c2602a8fa2721";
//     const consolidationTxId =
//         "e8f95c6bcb5740b81d2cf669a277ebf1b04075f975c5a521d7fe9d6390ff68c0";
//     const outgoinTxId =
//         "18246f372f8eca54d40ec34a8e1c65fccd74a75a2937fde94e7abb21f54fffda";

//     final bip39Seed = bip39.recoveryPhraseToBip39Seed(recoveryPhrase, "");
//     // todo load this from env
//     const apiUrl = "http://172.105.87.239:8084/testnet/api/";
//     final wallet = BitcoinEuc.withAddressTypeAndNetwork(
//         bip39Seed, apiUrl, bitcoinAddressType, BitcoinNetwork.testnet);

//     final utxoWalletHelper =
//         UTXOWalletHelper(bip39Seed, network, bitcoinAddressType, apiUrl);

//     final utxoWalletHelperTestValidator =
//         UTXOWalletHelperTestValidator(network);

//     setUp(() {
//       // Additional setup goes here.
//     });

//     test('UTXO wallet helper: getNextReceivingEmptyAddress', () async {
//       String? address0 = await wallet.getNextAddress();
//       expect(address0, 'tb1q37scf29t7dzc3qgjquu8q97lfvc8x53v9nzw7y');

//       final accountData = await utxoWalletHelper.getNextReceivingCleanAddress();
//       String? address1 = accountData.bitcoinAddress.toAddress(network);
//       expect(address1, 'tb1q37scf29t7dzc3qgjquu8q97lfvc8x53v9nzw7y');
//     });

//     test('UTXO wallet helper: getNextChangeEmptyAddress', () async {
//       final accountData = await utxoWalletHelper.getNextChangeCleanAddress();
//       String? address1 = accountData.bitcoinAddress.toAddress(network);
//       expect(address1, 'tb1qpq22w48eq4t6sddtkvalfsq002mnc8dg58hsnz');
//     });

//     // todo add mocking and verify registry is honored and saves API calls
//     test('UTXO wallet helper: addressRegistry works as expected', () async {
//       final accountData = await utxoWalletHelper.getNextReceivingCleanAddress();
//       String? address1 = accountData.bitcoinAddress.toAddress(network);
//       expect(address1, 'tb1q37scf29t7dzc3qgjquu8q97lfvc8x53v9nzw7y');

//       final accountData2 =
//           await utxoWalletHelper.getNextReceivingCleanAddress();
//       String? address2 = accountData2.bitcoinAddress.toAddress(network);
//       expect(address2, 'tb1q37scf29t7dzc3qgjquu8q97lfvc8x53v9nzw7y');
//     });

//     test('UTXO wallet helper: findAccountDataForValue', () async {
//       // Ask fetching all sats in wallet in pages of 4, performing 3 API calls till getting them all
//       // todo verify 3 API calls are made
//       final accountData = await utxoWalletHelper.findAccountDataForValue(
//           BigInt.from(3500), 0, 4);
//       utxoWalletHelperTestValidator.validateBalanceData(accountData);

//       // If we ask for 1 sat more we still get back the same UTXO indexes, but we break iteration after finding 20 consecutive empty addresses
//       // todo verify 5 API calls are made
//       final accountData2 = await utxoWalletHelper.findAccountDataForValue(
//           BigInt.from(3501), 0, 4);
//       utxoWalletHelperTestValidator.validateBalanceData(accountData2);
//     });

//     test('UTXO wallet helper: findAllAccountDataForWallet', () async {
//       // Ask fetching all sats in wallet in pages of 4, performing 5 API calls till getting them all
//       // todo verify 5 API calls are made
//       final accountData = await utxoWalletHelper.findAllAccountDataForWallet();
//       utxoWalletHelperTestValidator.validateBalanceData(accountData);
//     });

//     test('UTXO wallet helper: fetchTransactions', () async {
//       // Ask fetching all txs in wallet: 5 receive, 1 send
//       // todo verify 5 API calls are made
//       final transactions = await utxoWalletHelper.fetchTransactions();
//       expect(transactions.length, 7);

//       // ensure mapping works as expected too when fetching all transactions
//       final consolidationTx = transactions
//           .firstWhere((element) => element.txId == consolidationTxId);
//       utxoWalletHelperTestValidator.validateConsolidationTransaction(
//           consolidationTx, consolidationTxId);

//       final incomingTx =
//           transactions.firstWhere((element) => element.txId == incomingTxId);
//       utxoWalletHelperTestValidator.validateIncomingTransaction(
//           incomingTx, incomingTxId);

//       final outgoingTx =
//           transactions.firstWhere((element) => element.txId == outgoinTxId);
//       utxoWalletHelperTestValidator.validateOutgoingTransaction(
//           outgoingTx, outgoinTxId);
//     });
//     test('UTXO wallet helper: fetchTransaction consolidation', () async {
//       final transaction =
//           await utxoWalletHelper.fetchTransaction(consolidationTxId);

//       utxoWalletHelperTestValidator.validateConsolidationTransaction(
//           transaction, consolidationTxId);
//     });

//     test('UTXO wallet helper: fetchTransaction incoming', () async {
//       final transaction = await utxoWalletHelper.fetchTransaction(incomingTxId);

//       utxoWalletHelperTestValidator.validateIncomingTransaction(
//           transaction, incomingTxId);
//     });

//     test('UTXO wallet helper: fetchTransaction outgoing', () async {
//       final transaction = await utxoWalletHelper.fetchTransaction(outgoinTxId);

//       utxoWalletHelperTestValidator.validateOutgoingTransaction(
//           transaction, outgoinTxId);
//     });
//   });
}
