part of '../../wallet/account_wallet.dart';

abstract class SolanaEuc extends AccountWallet<SolTransactionDto> {
  SolanaEuc(
    super.bip39seed, {
    super.accountIdx,
    super.derivationPath,
  });

  @override
  String getAddress(KeyPair keyPair) {
    return generateSolanaAddress();
  }

  @override
  KeyPair getKeyPair() {
    KeyData keyData = _deriveKeyPair();
    var privateKey = HEX.encode(keyData.key);
    var publicKeyRaw = ED25519_HD_KEY.getPublicKey(keyData.key, false);
    var publicKey = HEX.encode(publicKeyRaw);

    return KeyPair(
      privateKey: privateKey,
      publicKey: publicKey,
      privateKeyRaw: Uint8List.fromList(keyData.key),
      publicKeyRaw: Uint8List.fromList(publicKeyRaw),
    );
  }

  KeyData _deriveKeyPair() {
    List<int> seedBytes = HEX.decode(getSeed());
    KeyData signingKey = ED25519_HD_KEY.derivePath(accountDerivationPath, seedBytes);
    return signingKey;
  }

  String generateSolanaAddress() {
    final publicKey = ED25519_HD_KEY.getPublicKey(getCachedKeyPair().privateKeyRaw);

    // When getting an ED25519 key from a bip 32 seed, we get a public key that's 33 bytes long.
    // However, ED25519 keys are meant to be 32 bytes long, meaning an extra byte got added.
    // This byte is always 0 and added to the beginning of the public key, and it's added inherently to ensure compatibility
    // So we can get rid of it and encode it in base58 to get the base58 encoded public key
    final base58 = solana_base58.base58encode(publicKey.sublist(1));

    return base58;
  }

  @override
  Future<String> signTransaction(SolanaBaseTransactionDto toSign) async {
    switch (toSign) {
      case SolanaTokenTransactionDto():
        return _signTokenTransaction(toSign);
      case SolanaTransactionDto():
        return _signSolanaTransaction(toSign);
      case WCSolanaTransactionDto():
        return _signWcSolanaTransaction(toSign);
      default:
        throw UnfulfilledExhaustiveException(
          'Invalid solana Transaction DTO type ${toSign.runtimeType}',
        );
    }
  }

  int solToLamports(Decimal sol) {
    return (sol * Decimal.fromInt(1000000000)).toDouble().toInt();
  }

  Future<String> _signTokenTransaction(SolanaTokenTransactionDto toSign) async {
    final mint = solana.Ed25519HDPublicKey.fromBase58(toSign.eucId.split('@').first);

    final keypair = await solana.Ed25519HDKeyPair.fromPrivateKeyBytes(
      privateKey: getCachedKeyPair().privateKeyRaw,
    );

    final receiverPublicKey = solana.Ed25519HDPublicKey.fromBase58(toSign.receiverAddress);

    final computeLimitInstruction = solana.ComputeBudgetInstruction.setComputeUnitPrice(
      microLamports: toSign.priorityFee ?? 0,
    );

    List<solana_encoder.Instruction> instructions = [];

    late solana.Ed25519HDPublicKey receiverTokenAccountPublicKey;

    if (toSign.receiverTokenAccountPublicKey == null) {
      // Token account isn't created yet

      // Derive the token account public key
      receiverTokenAccountPublicKey = await solana.Ed25519HDPublicKey.findProgramAddress(
        seeds: [
          receiverPublicKey.bytes,
          solana.TokenProgramType.tokenProgram.id.toByteArray(),
          mint.bytes,
        ],
        programId: solana.AssociatedTokenAccountProgram.id,
      );

      // compute token account creation instruction
      final createAccountInstruction = solana.AssociatedTokenAccountInstruction.createAccount(
        mint: mint,
        address: receiverTokenAccountPublicKey,
        owner: receiverPublicKey,
        funder: keypair.publicKey,
      );

      instructions.add(createAccountInstruction);
    } else {
      receiverTokenAccountPublicKey =
          solana.Ed25519HDPublicKey.fromBase58(toSign.receiverTokenAccountPublicKey!);
    }

    final tokenInstruction = solana.TokenInstruction.transfer(
      source: solana.Ed25519HDPublicKey.fromBase58(toSign.senderTokenAccountPublicKey),
      destination: receiverTokenAccountPublicKey,
      owner: keypair.publicKey,
      amount: toSign.lamports,
      signers: [keypair.publicKey],
    );

    final message = solana.Message(
      instructions: [
        ...instructions,
        tokenInstruction,
        computeLimitInstruction,
      ],
    );

    final transaction = await solana.signTransaction(
      LatestBlockhash(
        blockhash: toSign.recentBlockhash,
        lastValidBlockHeight: toSign.lastValidBlockHeight,
      ),
      message,
      [keypair],
    );

    return solana_base58.base58encode(transaction.toByteArray().toList());
  }

  Future<String> _signSolanaTransaction(SolanaTransactionDto toSign) async {
    final keypair = await solana.Ed25519HDKeyPair.fromPrivateKeyBytes(
      privateKey: getCachedKeyPair().privateKeyRaw,
    );

    final receiverPublicKey = solana.Ed25519HDPublicKey.fromBase58(toSign.receiverAddress);

    final instruction = solana.SystemInstruction.transfer(
      fundingAccount: keypair.publicKey,
      recipientAccount: receiverPublicKey,
      lamports: toSign.lamports,
    );

    final computeLimitInstruction = solana.ComputeBudgetInstruction.setComputeUnitPrice(
      microLamports: toSign.priorityFee ?? 0,
    );

    final message = solana.Message(
      instructions: [instruction, computeLimitInstruction],
    );

    final signedTransaction = await solana.signTransaction(
      LatestBlockhash(
        blockhash: toSign.recentBlockhash,
        lastValidBlockHeight: toSign.lastValidBlockHeight,
      ),
      message,
      [keypair],
    );

    return solana_base58.base58encode(signedTransaction.toByteArray().toList());
  }

  Future<String> _signWcSolanaTransaction(WCSolanaTransactionDto toSign) async {
    final message = solana.Message(instructions: toSign.instructions!);
    final compiledMessage = message.compile(
      recentBlockhash: toSign.recentBlockhash,
      feePayer: solana.Ed25519HDPublicKey.fromBase58(toSign.senderAddress),
    );

    final signedTxBytes = Uint8List.fromList(compiledMessage.toByteArray().toList());
    return signTransactionFromBytes(signedTxBytes);
  }

  Future<String> signTransactionFromBytes(Uint8List transactionBytes) async {
    final keypair = await solana.Ed25519HDKeyPair.fromPrivateKeyBytes(
      privateKey: getCachedKeyPair().privateKeyRaw,
    );

    final signedTransaction = await keypair.sign(transactionBytes.toList());
    return solana_base58.base58encode(signedTransaction.bytes);
  }
}
