import 'package:bitcoin_base/bitcoin_base.dart';
import 'package:hd_wallet/hd_wallet/hd_wallet_roq/bitcoin/utxo_transaction_details.dart';

class UTXOTransactionMapper {
  UTXOTransactionDetailsDTO mapToTransactionDTO(MempoolTransaction mempoolTransaction) {
    return UTXOTransactionDetailsDTO(
        txId: mempoolTransaction.txID,
        version: mempoolTransaction.version,
        locktime: mempoolTransaction.locktime,
        inputs: mempoolTransaction.vin.map((e) => _mapToTransactionInputDTO(e)).toList(),
        outputs: mempoolTransaction.vout.map((e) => _mapToTransactionOutputDTO(e)).toList(),
        size: mempoolTransaction.size,
        weight: mempoolTransaction.weight,
        fee: mempoolTransaction.fee,
        status: _mapToTransactionStatusDTO(mempoolTransaction.status));
  }

  UTXOTransactionStatusDTO _mapToTransactionStatusDTO(MempoolStatus status) {
    return UTXOTransactionStatusDTO(
        confirmed: status.confirmed,
        blockHeight: status.blockHeight,
        blockHash: status.blockHash,
        blockTime: status.blockTime);
  }

  UTXOTransactionInputDTO _mapToTransactionInputDTO(MempoolVin vin) {
    return UTXOTransactionInputDTO(
        txId: vin.txID,
        vout: vin.vout,
        previousOutput: _mapToTransactionPreviousOutputDTO(vin.prevOut),
        scriptSig: vin.scriptSig,
        scriptSigAsm: vin.scriptSigAsm,
        witness: vin.witness,
        isCoinbase: vin.isCoinbase,
        sequence: vin.sequence);
  }

  UTXOTransactionPreviousOutputDTO _mapToTransactionPreviousOutputDTO(MempoolPrevOut prevOut) {
    return UTXOTransactionPreviousOutputDTO(
        scriptPubKey: prevOut.scriptPubKey,
        scriptPubKeyAddress: prevOut.scriptPubKeyAddress,
        scriptPubKeyAsm: prevOut.scriptPubKeyAsm,
        scriptPubKeyType: prevOut.scriptPubKeyType,
        value: prevOut.value);
  }

  UTXOTransactionOutputDTO _mapToTransactionOutputDTO(MempoolVout vout) {
    return UTXOTransactionOutputDTO(
        scriptPubKey: vout.scriptPubKey,
        scriptPubKeyAddress: vout.scriptPubKeyAddress,
        scriptPubKeyAsm: vout.scriptPubKeyAsm,
        scriptPubKeyType: vout.scriptPubKeyType,
        value: vout.value,
        outputType: UTXOTransactionOutputType.outgoing);
  }
}
