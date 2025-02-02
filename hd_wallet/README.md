Hierarchical Deterministic (HD) Wallet for Eucalyptus Labs.

## Features

Allow creating a new or restoring an existing HD wallet from a 24-word recovery phrase.

## In a Nutshell

We use BIP-39 to generate a BIP-39 seed from a 24-word recovery phrase. See `Bip39.md`.
We use BIP-32 to generate a master key pair. See `Bip32_44.md`.
We use BIP-44 to generate address pub and private keys for address generation and transaction signing. See `Bip32_44.md`.

## How to use

Use the 'HDWallet' object to create 'Wallet' instances for you. All you need to give it is a recovery phrase and a blockchain id such as 'kadena'.

## Tests

To run the unit tests:

```
`flutter test test`
```

## Getting started

Integrate this package into RoqquPay Flutter/Dart apps such Web3 Wallet via git submodules:

```
git submodule init
git submodule update
```

## Usage

### HD Wallet

See: `hdwallet_example.dart`

```dart
// Check if words are valid recovery phrase words
bool isValid = HDWallet.isValidBip39Word('froggy');
print("Is the word 'froggy' valid? $isValid");
isValid = HDWallet.isValidBip39Word('tree');
print("Is the word 'tree' valid? $isValid");

const recoveryPhrase =
  'sail verb knee pet prison million drift empty exotic once episode stomach awkward slush glare list laundry battle bring clump brother before mesh pair';

// Before accepting a given 24-word recovery phrase, validate it!
bool isValid = HDWallet.validateRecoveryPhrase(recoveryPhrase);
print("Is recovery phrase valid? $isValid");

// Given a recovery phrase, create a HD wallet and add Wallets to it.
// An HDWallet is a container for multiple Wallets i.e. Bitcoin, Kadena, Cardano, etc.
// Each Wallet will have a unique address(es)
final hdWallet = HDWallet.fromRecoveryPhrase(recoveryPhrase);
hdWallet.getWallet("kadena", accountIdx: 0);
print(hdWallet);
```

Result:

```
Is the word 'froggy' valid? false
Is the word 'tree' valid? true
Is recovery phrase valid? true
HDWallet: {kadena_0: Wallet:
 Account Derivation Path: m/44'/626'/0'
 Address Derivation Path: m/44'/626'/0'/0/0'
 Address: TODO
}
```

```dart
  // create a brand new HDWallet with a randomly generated recovery phrase
  HDWallet hdWallet2 = HDWallet.brandNew();
  String recoveryPhrase2 = hdWallet2.recoveryPhrase;
  print("Recovery Phrase 2: $recoveryPhrase2");
```

Result:

```
Recovery Phrase 2: spare treat human leg head damp frown coin usage swear elbow claw mask fruit gap gather normal alert impulse venture equip able blame ripple
```

### Exceptions

See: `hdwallet_exceptions_example.dart`

```dart
// Catch a HDWalletException with the validation method
// 7-word recovery phrase
try {
String recoveryPhrase = "sail verb knee pet prison million drift";
isValid = HDWallet.validateRecoveryPhrase(recoveryPhrase);
} on HDWalletException catch (e) {
print(e.toString());
print("status = ${e.status}");
print("title = ${e.title}");
print("detail = ${e.detail}");
}
```

Result:

```
HDWalletException{status: 79_390, title: Invalid Word Count, detail: Expected a 24-word list, got a 7-word list}
status = 79_390
title = Invalid Word Count
detail = Expected a 24-word list, got a 7-word list
```

For all possible exception in the package see the `src/exceptions` folder.

## Additional information

**Be careful** what you do with the **recovery phrase**. Never log it or print it or save it or send it or leave it sitting around in memory unnecessarily. Treat that phrase very carefully!

**DO NOT** use and "internal" methods not defined in `hdwallet.dart`, i.e. code in `lib/src` that is not explicitly "approved" in `hdwallet.dart`. The reason is that I needed some methods to be public for unit testing, but they could be used by a consuming application and accidentally leak sensitive information such as Bip39 seeds or Bip32 root keys.

So only add the following to your app's code, and you should be fine:

```dart
import 'package:hdwallet/hdwallet.dart';
```

and do not use any accessors annotated with `@visibleForTesting`.
