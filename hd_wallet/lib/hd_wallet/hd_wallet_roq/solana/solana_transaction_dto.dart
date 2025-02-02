import 'package:solana/encoder.dart' as solana_encoder;

abstract class SolanaBaseTransactionDto {
  SolanaBaseTransactionDto({
    required this.senderAddress,
    required this.receiverAddress,
    required this.recentBlockhash,
    this.instructions,
  });

  final String senderAddress;
  final String receiverAddress;
  final String recentBlockhash;
  final List<solana_encoder.Instruction>? instructions;
}

abstract class SolTransactionDto extends SolanaBaseTransactionDto {
  SolTransactionDto({
    required super.senderAddress,
    required super.receiverAddress,
    required super.recentBlockhash,
    required this.lastValidBlockHeight,
    required this.lamports,
    required this.eucId,
    this.priorityFee,
    super.instructions,
  });

  final int lastValidBlockHeight;
  final int? priorityFee;
  final int lamports;
  final String eucId;

  double lamportsToSol(int lamports) {
    return lamports / 1000000000;
  }

  Map<String, String> getTxInfo(SolTransactionDto toSign);
}

class WCSolanaTransactionDto extends SolanaBaseTransactionDto {
  WCSolanaTransactionDto({
    required super.senderAddress,
    required super.receiverAddress,
    required super.recentBlockhash,
    required List<solana_encoder.Instruction> instructions,
  }) : super(instructions: instructions);
}

class SolanaTransactionDto extends SolTransactionDto {
  SolanaTransactionDto({
    required super.senderAddress,
    required super.receiverAddress,
    required super.recentBlockhash,
    required super.lastValidBlockHeight,
    super.priorityFee,
    required super.lamports,
    required super.eucId,
  });

  @override
  Map<String, String> getTxInfo(SolTransactionDto toSign) {
    toSign as SolanaTransactionDto;

    return {
      'accountTo': toSign.receiverAddress,
      'accountFrom': toSign.senderAddress,
      'amount': lamportsToSol(toSign.lamports).toString(),
      'eucId': eucId,
      'fee': toSign.priorityFee?.toString() ?? '0',
    };
  }
}

class SolanaTokenTransactionDto extends SolTransactionDto {
  SolanaTokenTransactionDto({
    required super.senderAddress,
    required super.receiverAddress,
    required super.recentBlockhash,
    required super.lastValidBlockHeight,
    required this.senderTokenAccountPublicKey,
    required this.receiverTokenAccountPublicKey,
    required super.lamports,
    required super.eucId,
    super.priorityFee,
  });

  final String senderTokenAccountPublicKey;
  final String? receiverTokenAccountPublicKey;

  @override
  Map<String, String> getTxInfo(SolTransactionDto toSign) {
    toSign as SolanaTokenTransactionDto;

    return {
      'accountTo': toSign.receiverAddress,
      'accountFrom': toSign.senderAddress,
      'amount': lamports.toString(),
      'eucId': eucId,
      'fee': toSign.priorityFee?.toString() ?? '0',
    };
  }
}
