class UTXOTransactionDetailsDTO {
  final String txId;
  final int version;
  final int locktime;
  final List<UTXOTransactionInputDTO> inputs;
  final List<UTXOTransactionOutputDTO> outputs;
  final int size;
  final int weight;
  final int fee;
  final UTXOTransactionStatusDTO status;

  UTXOTransactionDetailsDTO(
      {required this.txId,
      required this.version,
      required this.locktime,
      required this.inputs,
      required this.outputs,
      required this.size,
      required this.weight,
      required this.fee,
      required this.status});

  factory UTXOTransactionDetailsDTO.copy(UTXOTransactionDetailsDTO original, List<UTXOTransactionOutputDTO> outputs) {
    return UTXOTransactionDetailsDTO(
        txId: original.txId,
        version: original.version,
        locktime: original.locktime,
        inputs: original.inputs,
        outputs: outputs,
        size: original.size,
        weight: original.weight,
        fee: original.fee,
        status: original.status);
  }
}

extension UTXOTransactionOutputDTOExtension on Iterable<UTXOTransactionOutputDTO> {
  Iterable<UTXOTransactionOutputDTO> forType(UTXOTransactionOutputType type) {
    return where((element) => element.outputType == type);
  }

  int value() {
    return fold(0, (previousValue, element) => previousValue + element.value);
  }
}

class UTXOTransactionPreviousOutputDTO {
  final String scriptPubKey;
  final String scriptPubKeyAsm;
  final String scriptPubKeyType;
  final String scriptPubKeyAddress;
  final int value;

  UTXOTransactionPreviousOutputDTO({
    required this.scriptPubKey,
    required this.scriptPubKeyAsm,
    required this.scriptPubKeyType,
    required this.scriptPubKeyAddress,
    required this.value,
  });
}

class UTXOTransactionInputDTO {
  final String txId;
  final int vout;
  final UTXOTransactionPreviousOutputDTO previousOutput;
  final String scriptSig;
  final String scriptSigAsm;
  final List<String> witness;
  final bool isCoinbase;
  final int sequence;

  UTXOTransactionInputDTO(
      {required this.txId,
      required this.vout,
      required this.previousOutput,
      required this.scriptSig,
      required this.scriptSigAsm,
      required this.witness,
      required this.isCoinbase,
      required this.sequence});
}

class UTXOTransactionOutputDTO {
  final String scriptPubKey;
  final String? scriptPubKeyAddress;
  final String scriptPubKeyAsm;
  final String scriptPubKeyType;
  final int value;
  final UTXOTransactionOutputType outputType;

  UTXOTransactionOutputDTO(
      {required this.scriptPubKey,
      required this.scriptPubKeyAddress,
      required this.scriptPubKeyAsm,
      required this.scriptPubKeyType,
      required this.value,
      required this.outputType});

  factory UTXOTransactionOutputDTO.copy(UTXOTransactionOutputDTO original, UTXOTransactionOutputType outputType) {
    return UTXOTransactionOutputDTO(
      scriptPubKey: original.scriptPubKey,
      scriptPubKeyAddress: original.scriptPubKeyAddress,
      scriptPubKeyAsm: original.scriptPubKeyAsm,
      scriptPubKeyType: original.scriptPubKeyType,
      value: original.value,
      outputType: outputType,
    );
  }
}

class UTXOTransactionStatusDTO {
  final bool confirmed;
  final int? blockHeight;
  final String? blockHash;
  final int? blockTime;

  UTXOTransactionStatusDTO({
    required this.confirmed,
    required this.blockHeight,
    required this.blockHash,
    required this.blockTime,
  });
}

enum UTXOTransactionOutputType { consolidation, change, incoming, outgoing, opreturn, unknown }
