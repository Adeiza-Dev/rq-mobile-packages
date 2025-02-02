/// Please DON'T use this seed phrase to perform any actions: no sending, no receiving!
const recoveryPhrase =
    "craft measure infant humble source motor stick erase title essence oppose also cactus give fluid life tooth end finger episode hen vessel door domain";

void main() {
  // group('Create Bitcoin Wallet tests', () {
  //   setUp(() {
  //     // Additional setup goes here.
  //   });
  //   const apiUrl = "http://172.105.87.239:8084/testnet/api/";
  //   final bip39Seed = bip39.recoveryPhraseToBip39Seed(recoveryPhrase, "");
  //   final wallet = BitcoinEuc.withAddressTypeAndNetwork(
  //       bip39Seed, apiUrl, BitcoinAddressType.p2wpkh, BitcoinNetwork.testnet);

  //   test('Bitcoin Wallet: getNextAddress', () async {
  //     String? address0 = await wallet.getNextAddress();
  //     expect(address0, 'tb1q37scf29t7dzc3qgjquu8q97lfvc8x53v9nzw7y');
  //     // Requesting a new address again should return the same address as long as no UTXO is linked to it
  //     String? address1 = await wallet.getNextAddress();
  //     expect(address1, 'tb1q37scf29t7dzc3qgjquu8q97lfvc8x53v9nzw7y');
  //   });

  //   test('Bitcoin Wallet: sign transaction', () async {
  //     final dto = BitcoinTransactionDTO(
  //         to: "tb1qk5gdaulj37mztwrclzs5ktu44uwwjq0zvd2lcv",
  //         value: BigInt.from(1000),
  //         feeRateType: BitcoinFeeRateType.high,
  //         memo: "Bitcoin Wallet sign transaction",
  //         enableRBF: true);

  //     await wallet.signTransaction(dto);
  //     //print(signature);

  //     // This works but we don't want to mess with the state of the wallet
  //     //String txId = await wallet.submitTransaction(signature);
  //     //print(txId);
  //   });

  //   test('Bitcoin Wallet submit transaction', () async {
  //     final dto = BitcoinTransactionDTO(
  //         to: "tb1q57ue99twa03vf5rmsnfvgft93yzczkjwsynksq",
  //         value: BigInt.from(1999),
  //         feeRateType: BitcoinFeeRateType.high,
  //         memo: "Bitcoin Wallet sign transaction",
  //         enableRBF: true);

  //     await wallet.signTransaction(dto);
  //     //print(signature);

  //     // This works but we don't want to mess with the state of the wallet
  //     //String txId = await wallet.submitTransaction(signature);
  //     //print(txId);
  //   });
  // });
}
