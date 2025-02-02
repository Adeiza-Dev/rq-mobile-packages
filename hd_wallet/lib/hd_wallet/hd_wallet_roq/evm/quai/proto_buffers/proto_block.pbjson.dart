//
//  Generated code. Do not modify.
//  source: proto_block.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use protoHeaderDescriptor instead')
const ProtoHeader$json = {
  '1': 'ProtoHeader',
  '2': [
    {'1': 'parent_hash', '3': 1, '4': 3, '5': 11, '6': '.common.ProtoHash', '10': 'parentHash'},
    {'1': 'uncle_hash', '3': 2, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 0, '10': 'uncleHash', '17': true},
    {'1': 'evm_root', '3': 3, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 1, '10': 'evmRoot', '17': true},
    {'1': 'tx_hash', '3': 4, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 2, '10': 'txHash', '17': true},
    {'1': 'outbound_etx_hash', '3': 5, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 3, '10': 'outboundEtxHash', '17': true},
    {'1': 'etx_rollup_hash', '3': 6, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 4, '10': 'etxRollupHash', '17': true},
    {'1': 'manifest_hash', '3': 7, '4': 3, '5': 11, '6': '.common.ProtoHash', '10': 'manifestHash'},
    {'1': 'receipt_hash', '3': 8, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 5, '10': 'receiptHash', '17': true},
    {'1': 'difficulty', '3': 9, '4': 1, '5': 12, '9': 6, '10': 'difficulty', '17': true},
    {'1': 'parent_entropy', '3': 10, '4': 3, '5': 12, '10': 'parentEntropy'},
    {'1': 'parent_delta_entropy', '3': 11, '4': 3, '5': 12, '10': 'parentDeltaEntropy'},
    {'1': 'parent_uncled_delta_entropy', '3': 12, '4': 3, '5': 12, '10': 'parentUncledDeltaEntropy'},
    {'1': 'uncled_entropy', '3': 13, '4': 1, '5': 12, '9': 7, '10': 'uncledEntropy', '17': true},
    {'1': 'number', '3': 14, '4': 3, '5': 12, '10': 'number'},
    {'1': 'gas_limit', '3': 15, '4': 1, '5': 4, '9': 8, '10': 'gasLimit', '17': true},
    {'1': 'gas_used', '3': 16, '4': 1, '5': 4, '9': 9, '10': 'gasUsed', '17': true},
    {'1': 'base_fee', '3': 17, '4': 1, '5': 12, '9': 10, '10': 'baseFee', '17': true},
    {'1': 'location', '3': 18, '4': 1, '5': 11, '6': '.common.ProtoLocation', '9': 11, '10': 'location', '17': true},
    {'1': 'extra', '3': 19, '4': 1, '5': 12, '9': 12, '10': 'extra', '17': true},
    {'1': 'mix_hash', '3': 20, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 13, '10': 'mixHash', '17': true},
    {'1': 'nonce', '3': 21, '4': 1, '5': 4, '9': 14, '10': 'nonce', '17': true},
    {'1': 'utxo_root', '3': 22, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 15, '10': 'utxoRoot', '17': true},
    {'1': 'etx_set_root', '3': 23, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 16, '10': 'etxSetRoot', '17': true},
    {'1': 'efficiency_score', '3': 24, '4': 1, '5': 4, '9': 17, '10': 'efficiencyScore', '17': true},
    {'1': 'threshold_count', '3': 25, '4': 1, '5': 4, '9': 18, '10': 'thresholdCount', '17': true},
    {'1': 'expansion_number', '3': 26, '4': 1, '5': 4, '9': 19, '10': 'expansionNumber', '17': true},
    {'1': 'etx_eligible_slices', '3': 27, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 20, '10': 'etxEligibleSlices', '17': true},
    {'1': 'prime_terminus_hash', '3': 28, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 21, '10': 'primeTerminusHash', '17': true},
    {'1': 'interlink_root_hash', '3': 29, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 22, '10': 'interlinkRootHash', '17': true},
    {'1': 'state_limit', '3': 30, '4': 1, '5': 4, '9': 23, '10': 'stateLimit', '17': true},
    {'1': 'state_used', '3': 31, '4': 1, '5': 4, '9': 24, '10': 'stateUsed', '17': true},
    {'1': 'quai_state_size', '3': 32, '4': 1, '5': 12, '9': 25, '10': 'quaiStateSize', '17': true},
    {'1': 'secondary_coinbase', '3': 33, '4': 1, '5': 12, '9': 26, '10': 'secondaryCoinbase', '17': true},
    {'1': 'exchange_rate', '3': 34, '4': 1, '5': 12, '9': 27, '10': 'exchangeRate', '17': true},
    {'1': 'quai_to_qi', '3': 35, '4': 1, '5': 12, '9': 28, '10': 'quaiToQi', '17': true},
    {'1': 'qi_to_quai', '3': 36, '4': 1, '5': 12, '9': 29, '10': 'qiToQuai', '17': true},
  ],
  '8': [
    {'1': '_uncle_hash'},
    {'1': '_evm_root'},
    {'1': '_tx_hash'},
    {'1': '_outbound_etx_hash'},
    {'1': '_etx_rollup_hash'},
    {'1': '_receipt_hash'},
    {'1': '_difficulty'},
    {'1': '_uncled_entropy'},
    {'1': '_gas_limit'},
    {'1': '_gas_used'},
    {'1': '_base_fee'},
    {'1': '_location'},
    {'1': '_extra'},
    {'1': '_mix_hash'},
    {'1': '_nonce'},
    {'1': '_utxo_root'},
    {'1': '_etx_set_root'},
    {'1': '_efficiency_score'},
    {'1': '_threshold_count'},
    {'1': '_expansion_number'},
    {'1': '_etx_eligible_slices'},
    {'1': '_prime_terminus_hash'},
    {'1': '_interlink_root_hash'},
    {'1': '_state_limit'},
    {'1': '_state_used'},
    {'1': '_quai_state_size'},
    {'1': '_secondary_coinbase'},
    {'1': '_exchange_rate'},
    {'1': '_quai_to_qi'},
    {'1': '_qi_to_quai'},
  ],
};

/// Descriptor for `ProtoHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoHeaderDescriptor = $convert.base64Decode(
    'CgtQcm90b0hlYWRlchIyCgtwYXJlbnRfaGFzaBgBIAMoCzIRLmNvbW1vbi5Qcm90b0hhc2hSCn'
    'BhcmVudEhhc2gSNQoKdW5jbGVfaGFzaBgCIAEoCzIRLmNvbW1vbi5Qcm90b0hhc2hIAFIJdW5j'
    'bGVIYXNoiAEBEjEKCGV2bV9yb290GAMgASgLMhEuY29tbW9uLlByb3RvSGFzaEgBUgdldm1Sb2'
    '90iAEBEi8KB3R4X2hhc2gYBCABKAsyES5jb21tb24uUHJvdG9IYXNoSAJSBnR4SGFzaIgBARJC'
    'ChFvdXRib3VuZF9ldHhfaGFzaBgFIAEoCzIRLmNvbW1vbi5Qcm90b0hhc2hIA1IPb3V0Ym91bm'
    'RFdHhIYXNoiAEBEj4KD2V0eF9yb2xsdXBfaGFzaBgGIAEoCzIRLmNvbW1vbi5Qcm90b0hhc2hI'
    'BFINZXR4Um9sbHVwSGFzaIgBARI2Cg1tYW5pZmVzdF9oYXNoGAcgAygLMhEuY29tbW9uLlByb3'
    'RvSGFzaFIMbWFuaWZlc3RIYXNoEjkKDHJlY2VpcHRfaGFzaBgIIAEoCzIRLmNvbW1vbi5Qcm90'
    'b0hhc2hIBVILcmVjZWlwdEhhc2iIAQESIwoKZGlmZmljdWx0eRgJIAEoDEgGUgpkaWZmaWN1bH'
    'R5iAEBEiUKDnBhcmVudF9lbnRyb3B5GAogAygMUg1wYXJlbnRFbnRyb3B5EjAKFHBhcmVudF9k'
    'ZWx0YV9lbnRyb3B5GAsgAygMUhJwYXJlbnREZWx0YUVudHJvcHkSPQobcGFyZW50X3VuY2xlZF'
    '9kZWx0YV9lbnRyb3B5GAwgAygMUhhwYXJlbnRVbmNsZWREZWx0YUVudHJvcHkSKgoOdW5jbGVk'
    'X2VudHJvcHkYDSABKAxIB1INdW5jbGVkRW50cm9weYgBARIWCgZudW1iZXIYDiADKAxSBm51bW'
    'JlchIgCglnYXNfbGltaXQYDyABKARICFIIZ2FzTGltaXSIAQESHgoIZ2FzX3VzZWQYECABKARI'
    'CVIHZ2FzVXNlZIgBARIeCghiYXNlX2ZlZRgRIAEoDEgKUgdiYXNlRmVliAEBEjYKCGxvY2F0aW'
    '9uGBIgASgLMhUuY29tbW9uLlByb3RvTG9jYXRpb25IC1IIbG9jYXRpb26IAQESGQoFZXh0cmEY'
    'EyABKAxIDFIFZXh0cmGIAQESMQoIbWl4X2hhc2gYFCABKAsyES5jb21tb24uUHJvdG9IYXNoSA'
    '1SB21peEhhc2iIAQESGQoFbm9uY2UYFSABKARIDlIFbm9uY2WIAQESMwoJdXR4b19yb290GBYg'
    'ASgLMhEuY29tbW9uLlByb3RvSGFzaEgPUgh1dHhvUm9vdIgBARI4CgxldHhfc2V0X3Jvb3QYFy'
    'ABKAsyES5jb21tb24uUHJvdG9IYXNoSBBSCmV0eFNldFJvb3SIAQESLgoQZWZmaWNpZW5jeV9z'
    'Y29yZRgYIAEoBEgRUg9lZmZpY2llbmN5U2NvcmWIAQESLAoPdGhyZXNob2xkX2NvdW50GBkgAS'
    'gESBJSDnRocmVzaG9sZENvdW50iAEBEi4KEGV4cGFuc2lvbl9udW1iZXIYGiABKARIE1IPZXhw'
    'YW5zaW9uTnVtYmVyiAEBEkYKE2V0eF9lbGlnaWJsZV9zbGljZXMYGyABKAsyES5jb21tb24uUH'
    'JvdG9IYXNoSBRSEWV0eEVsaWdpYmxlU2xpY2VziAEBEkYKE3ByaW1lX3Rlcm1pbnVzX2hhc2gY'
    'HCABKAsyES5jb21tb24uUHJvdG9IYXNoSBVSEXByaW1lVGVybWludXNIYXNoiAEBEkYKE2ludG'
    'VybGlua19yb290X2hhc2gYHSABKAsyES5jb21tb24uUHJvdG9IYXNoSBZSEWludGVybGlua1Jv'
    'b3RIYXNoiAEBEiQKC3N0YXRlX2xpbWl0GB4gASgESBdSCnN0YXRlTGltaXSIAQESIgoKc3RhdG'
    'VfdXNlZBgfIAEoBEgYUglzdGF0ZVVzZWSIAQESKwoPcXVhaV9zdGF0ZV9zaXplGCAgASgMSBlS'
    'DXF1YWlTdGF0ZVNpemWIAQESMgoSc2Vjb25kYXJ5X2NvaW5iYXNlGCEgASgMSBpSEXNlY29uZG'
    'FyeUNvaW5iYXNliAEBEigKDWV4Y2hhbmdlX3JhdGUYIiABKAxIG1IMZXhjaGFuZ2VSYXRliAEB'
    'EiEKCnF1YWlfdG9fcWkYIyABKAxIHFIIcXVhaVRvUWmIAQESIQoKcWlfdG9fcXVhaRgkIAEoDE'
    'gdUghxaVRvUXVhaYgBAUINCgtfdW5jbGVfaGFzaEILCglfZXZtX3Jvb3RCCgoIX3R4X2hhc2hC'
    'FAoSX291dGJvdW5kX2V0eF9oYXNoQhIKEF9ldHhfcm9sbHVwX2hhc2hCDwoNX3JlY2VpcHRfaG'
    'FzaEINCgtfZGlmZmljdWx0eUIRCg9fdW5jbGVkX2VudHJvcHlCDAoKX2dhc19saW1pdEILCglf'
    'Z2FzX3VzZWRCCwoJX2Jhc2VfZmVlQgsKCV9sb2NhdGlvbkIICgZfZXh0cmFCCwoJX21peF9oYX'
    'NoQggKBl9ub25jZUIMCgpfdXR4b19yb290Qg8KDV9ldHhfc2V0X3Jvb3RCEwoRX2VmZmljaWVu'
    'Y3lfc2NvcmVCEgoQX3RocmVzaG9sZF9jb3VudEITChFfZXhwYW5zaW9uX251bWJlckIWChRfZX'
    'R4X2VsaWdpYmxlX3NsaWNlc0IWChRfcHJpbWVfdGVybWludXNfaGFzaEIWChRfaW50ZXJsaW5r'
    'X3Jvb3RfaGFzaEIOCgxfc3RhdGVfbGltaXRCDQoLX3N0YXRlX3VzZWRCEgoQX3F1YWlfc3RhdG'
    'Vfc2l6ZUIVChNfc2Vjb25kYXJ5X2NvaW5iYXNlQhAKDl9leGNoYW5nZV9yYXRlQg0KC19xdWFp'
    'X3RvX3FpQg0KC19xaV90b19xdWFp');

@$core.Deprecated('Use protoTransactionDescriptor instead')
const ProtoTransaction$json = {
  '1': 'ProtoTransaction',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 4, '9': 0, '10': 'type', '17': true},
    {'1': 'to', '3': 2, '4': 1, '5': 12, '9': 1, '10': 'to', '17': true},
    {'1': 'nonce', '3': 3, '4': 1, '5': 4, '9': 2, '10': 'nonce', '17': true},
    {'1': 'value', '3': 4, '4': 1, '5': 12, '9': 3, '10': 'value', '17': true},
    {'1': 'gas', '3': 5, '4': 1, '5': 4, '9': 4, '10': 'gas', '17': true},
    {'1': 'data', '3': 6, '4': 1, '5': 12, '9': 5, '10': 'data', '17': true},
    {'1': 'chain_id', '3': 7, '4': 1, '5': 12, '9': 6, '10': 'chainId', '17': true},
    {'1': 'miner_tip', '3': 8, '4': 1, '5': 12, '9': 7, '10': 'minerTip', '17': true},
    {'1': 'gas_price', '3': 9, '4': 1, '5': 12, '9': 8, '10': 'gasPrice', '17': true},
    {'1': 'access_list', '3': 10, '4': 1, '5': 11, '6': '.block.ProtoAccessList', '9': 9, '10': 'accessList', '17': true},
    {'1': 'v', '3': 11, '4': 1, '5': 12, '9': 10, '10': 'v', '17': true},
    {'1': 'r', '3': 12, '4': 1, '5': 12, '9': 11, '10': 'r', '17': true},
    {'1': 's', '3': 13, '4': 1, '5': 12, '9': 12, '10': 's', '17': true},
    {'1': 'originating_tx_hash', '3': 14, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 13, '10': 'originatingTxHash', '17': true},
    {'1': 'etx_index', '3': 15, '4': 1, '5': 13, '9': 14, '10': 'etxIndex', '17': true},
    {'1': 'tx_ins', '3': 16, '4': 1, '5': 11, '6': '.block.ProtoTxIns', '9': 15, '10': 'txIns', '17': true},
    {'1': 'tx_outs', '3': 17, '4': 1, '5': 11, '6': '.block.ProtoTxOuts', '9': 16, '10': 'txOuts', '17': true},
    {'1': 'signature', '3': 18, '4': 1, '5': 12, '9': 17, '10': 'signature', '17': true},
    {'1': 'etx_sender', '3': 19, '4': 1, '5': 12, '9': 18, '10': 'etxSender', '17': true},
    {'1': 'parent_hash', '3': 20, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 19, '10': 'parentHash', '17': true},
    {'1': 'mix_hash', '3': 21, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 20, '10': 'mixHash', '17': true},
    {'1': 'work_nonce', '3': 22, '4': 1, '5': 4, '9': 21, '10': 'workNonce', '17': true},
    {'1': 'etx_type', '3': 23, '4': 1, '5': 4, '9': 22, '10': 'etxType', '17': true},
  ],
  '8': [
    {'1': '_type'},
    {'1': '_to'},
    {'1': '_nonce'},
    {'1': '_value'},
    {'1': '_gas'},
    {'1': '_data'},
    {'1': '_chain_id'},
    {'1': '_miner_tip'},
    {'1': '_gas_price'},
    {'1': '_access_list'},
    {'1': '_v'},
    {'1': '_r'},
    {'1': '_s'},
    {'1': '_originating_tx_hash'},
    {'1': '_etx_index'},
    {'1': '_tx_ins'},
    {'1': '_tx_outs'},
    {'1': '_signature'},
    {'1': '_etx_sender'},
    {'1': '_parent_hash'},
    {'1': '_mix_hash'},
    {'1': '_work_nonce'},
    {'1': '_etx_type'},
  ],
};

/// Descriptor for `ProtoTransaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoTransactionDescriptor = $convert.base64Decode(
    'ChBQcm90b1RyYW5zYWN0aW9uEhcKBHR5cGUYASABKARIAFIEdHlwZYgBARITCgJ0bxgCIAEoDE'
    'gBUgJ0b4gBARIZCgVub25jZRgDIAEoBEgCUgVub25jZYgBARIZCgV2YWx1ZRgEIAEoDEgDUgV2'
    'YWx1ZYgBARIVCgNnYXMYBSABKARIBFIDZ2FziAEBEhcKBGRhdGEYBiABKAxIBVIEZGF0YYgBAR'
    'IeCghjaGFpbl9pZBgHIAEoDEgGUgdjaGFpbklkiAEBEiAKCW1pbmVyX3RpcBgIIAEoDEgHUght'
    'aW5lclRpcIgBARIgCglnYXNfcHJpY2UYCSABKAxICFIIZ2FzUHJpY2WIAQESPAoLYWNjZXNzX2'
    'xpc3QYCiABKAsyFi5ibG9jay5Qcm90b0FjY2Vzc0xpc3RICVIKYWNjZXNzTGlzdIgBARIRCgF2'
    'GAsgASgMSApSAXaIAQESEQoBchgMIAEoDEgLUgFyiAEBEhEKAXMYDSABKAxIDFIBc4gBARJGCh'
    'NvcmlnaW5hdGluZ190eF9oYXNoGA4gASgLMhEuY29tbW9uLlByb3RvSGFzaEgNUhFvcmlnaW5h'
    'dGluZ1R4SGFzaIgBARIgCglldHhfaW5kZXgYDyABKA1IDlIIZXR4SW5kZXiIAQESLQoGdHhfaW'
    '5zGBAgASgLMhEuYmxvY2suUHJvdG9UeEluc0gPUgV0eEluc4gBARIwCgd0eF9vdXRzGBEgASgL'
    'MhIuYmxvY2suUHJvdG9UeE91dHNIEFIGdHhPdXRziAEBEiEKCXNpZ25hdHVyZRgSIAEoDEgRUg'
    'lzaWduYXR1cmWIAQESIgoKZXR4X3NlbmRlchgTIAEoDEgSUglldHhTZW5kZXKIAQESNwoLcGFy'
    'ZW50X2hhc2gYFCABKAsyES5jb21tb24uUHJvdG9IYXNoSBNSCnBhcmVudEhhc2iIAQESMQoIbW'
    'l4X2hhc2gYFSABKAsyES5jb21tb24uUHJvdG9IYXNoSBRSB21peEhhc2iIAQESIgoKd29ya19u'
    'b25jZRgWIAEoBEgVUgl3b3JrTm9uY2WIAQESHgoIZXR4X3R5cGUYFyABKARIFlIHZXR4VHlwZY'
    'gBAUIHCgVfdHlwZUIFCgNfdG9CCAoGX25vbmNlQggKBl92YWx1ZUIGCgRfZ2FzQgcKBV9kYXRh'
    'QgsKCV9jaGFpbl9pZEIMCgpfbWluZXJfdGlwQgwKCl9nYXNfcHJpY2VCDgoMX2FjY2Vzc19saX'
    'N0QgQKAl92QgQKAl9yQgQKAl9zQhYKFF9vcmlnaW5hdGluZ190eF9oYXNoQgwKCl9ldHhfaW5k'
    'ZXhCCQoHX3R4X2luc0IKCghfdHhfb3V0c0IMCgpfc2lnbmF0dXJlQg0KC19ldHhfc2VuZGVyQg'
    '4KDF9wYXJlbnRfaGFzaEILCglfbWl4X2hhc2hCDQoLX3dvcmtfbm9uY2VCCwoJX2V0eF90eXBl');

@$core.Deprecated('Use protoTransactionsDescriptor instead')
const ProtoTransactions$json = {
  '1': 'ProtoTransactions',
  '2': [
    {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.block.ProtoTransaction', '10': 'transactions'},
  ],
};

/// Descriptor for `ProtoTransactions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoTransactionsDescriptor = $convert.base64Decode(
    'ChFQcm90b1RyYW5zYWN0aW9ucxI7Cgx0cmFuc2FjdGlvbnMYASADKAsyFy5ibG9jay5Qcm90b1'
    'RyYW5zYWN0aW9uUgx0cmFuc2FjdGlvbnM=');

@$core.Deprecated('Use protoHeadersDescriptor instead')
const ProtoHeaders$json = {
  '1': 'ProtoHeaders',
  '2': [
    {'1': 'headers', '3': 1, '4': 3, '5': 11, '6': '.block.ProtoHeader', '10': 'headers'},
  ],
};

/// Descriptor for `ProtoHeaders`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoHeadersDescriptor = $convert.base64Decode(
    'CgxQcm90b0hlYWRlcnMSLAoHaGVhZGVycxgBIAMoCzISLmJsb2NrLlByb3RvSGVhZGVyUgdoZW'
    'FkZXJz');

@$core.Deprecated('Use protoManifestDescriptor instead')
const ProtoManifest$json = {
  '1': 'ProtoManifest',
  '2': [
    {'1': 'manifest', '3': 1, '4': 3, '5': 11, '6': '.common.ProtoHash', '10': 'manifest'},
  ],
};

/// Descriptor for `ProtoManifest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoManifestDescriptor = $convert.base64Decode(
    'Cg1Qcm90b01hbmlmZXN0Ei0KCG1hbmlmZXN0GAEgAygLMhEuY29tbW9uLlByb3RvSGFzaFIIbW'
    'FuaWZlc3Q=');

@$core.Deprecated('Use protoAccessListDescriptor instead')
const ProtoAccessList$json = {
  '1': 'ProtoAccessList',
  '2': [
    {'1': 'access_tuples', '3': 1, '4': 3, '5': 11, '6': '.block.ProtoAccessTuple', '10': 'accessTuples'},
  ],
};

/// Descriptor for `ProtoAccessList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoAccessListDescriptor = $convert.base64Decode(
    'Cg9Qcm90b0FjY2Vzc0xpc3QSPAoNYWNjZXNzX3R1cGxlcxgBIAMoCzIXLmJsb2NrLlByb3RvQW'
    'NjZXNzVHVwbGVSDGFjY2Vzc1R1cGxlcw==');

@$core.Deprecated('Use protoWorkObjectHeaderDescriptor instead')
const ProtoWorkObjectHeader$json = {
  '1': 'ProtoWorkObjectHeader',
  '2': [
    {'1': 'header_hash', '3': 1, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 0, '10': 'headerHash', '17': true},
    {'1': 'parent_hash', '3': 2, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 1, '10': 'parentHash', '17': true},
    {'1': 'number', '3': 3, '4': 1, '5': 12, '9': 2, '10': 'number', '17': true},
    {'1': 'difficulty', '3': 4, '4': 1, '5': 12, '9': 3, '10': 'difficulty', '17': true},
    {'1': 'tx_hash', '3': 5, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 4, '10': 'txHash', '17': true},
    {'1': 'nonce', '3': 6, '4': 1, '5': 4, '9': 5, '10': 'nonce', '17': true},
    {'1': 'location', '3': 7, '4': 1, '5': 11, '6': '.common.ProtoLocation', '9': 6, '10': 'location', '17': true},
    {'1': 'mix_hash', '3': 8, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 7, '10': 'mixHash', '17': true},
    {'1': 'time', '3': 9, '4': 1, '5': 4, '9': 8, '10': 'time', '17': true},
    {'1': 'prime_terminus_number', '3': 10, '4': 1, '5': 12, '9': 9, '10': 'primeTerminusNumber', '17': true},
    {'1': 'lock', '3': 11, '4': 1, '5': 13, '9': 10, '10': 'lock', '17': true},
    {'1': 'primary_coinbase', '3': 12, '4': 1, '5': 11, '6': '.common.ProtoAddress', '9': 11, '10': 'primaryCoinbase', '17': true},
  ],
  '8': [
    {'1': '_header_hash'},
    {'1': '_parent_hash'},
    {'1': '_number'},
    {'1': '_difficulty'},
    {'1': '_tx_hash'},
    {'1': '_nonce'},
    {'1': '_location'},
    {'1': '_mix_hash'},
    {'1': '_time'},
    {'1': '_prime_terminus_number'},
    {'1': '_lock'},
    {'1': '_primary_coinbase'},
  ],
};

/// Descriptor for `ProtoWorkObjectHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoWorkObjectHeaderDescriptor = $convert.base64Decode(
    'ChVQcm90b1dvcmtPYmplY3RIZWFkZXISNwoLaGVhZGVyX2hhc2gYASABKAsyES5jb21tb24uUH'
    'JvdG9IYXNoSABSCmhlYWRlckhhc2iIAQESNwoLcGFyZW50X2hhc2gYAiABKAsyES5jb21tb24u'
    'UHJvdG9IYXNoSAFSCnBhcmVudEhhc2iIAQESGwoGbnVtYmVyGAMgASgMSAJSBm51bWJlcogBAR'
    'IjCgpkaWZmaWN1bHR5GAQgASgMSANSCmRpZmZpY3VsdHmIAQESLwoHdHhfaGFzaBgFIAEoCzIR'
    'LmNvbW1vbi5Qcm90b0hhc2hIBFIGdHhIYXNoiAEBEhkKBW5vbmNlGAYgASgESAVSBW5vbmNliA'
    'EBEjYKCGxvY2F0aW9uGAcgASgLMhUuY29tbW9uLlByb3RvTG9jYXRpb25IBlIIbG9jYXRpb26I'
    'AQESMQoIbWl4X2hhc2gYCCABKAsyES5jb21tb24uUHJvdG9IYXNoSAdSB21peEhhc2iIAQESFw'
    'oEdGltZRgJIAEoBEgIUgR0aW1liAEBEjcKFXByaW1lX3Rlcm1pbnVzX251bWJlchgKIAEoDEgJ'
    'UhNwcmltZVRlcm1pbnVzTnVtYmVyiAEBEhcKBGxvY2sYCyABKA1IClIEbG9ja4gBARJEChBwcm'
    'ltYXJ5X2NvaW5iYXNlGAwgASgLMhQuY29tbW9uLlByb3RvQWRkcmVzc0gLUg9wcmltYXJ5Q29p'
    'bmJhc2WIAQFCDgoMX2hlYWRlcl9oYXNoQg4KDF9wYXJlbnRfaGFzaEIJCgdfbnVtYmVyQg0KC1'
    '9kaWZmaWN1bHR5QgoKCF90eF9oYXNoQggKBl9ub25jZUILCglfbG9jYXRpb25CCwoJX21peF9o'
    'YXNoQgcKBV90aW1lQhgKFl9wcmltZV90ZXJtaW51c19udW1iZXJCBwoFX2xvY2tCEwoRX3ByaW'
    '1hcnlfY29pbmJhc2U=');

@$core.Deprecated('Use protoWorkObjectHeadersDescriptor instead')
const ProtoWorkObjectHeaders$json = {
  '1': 'ProtoWorkObjectHeaders',
  '2': [
    {'1': 'wo_headers', '3': 1, '4': 3, '5': 11, '6': '.block.ProtoWorkObjectHeader', '10': 'woHeaders'},
  ],
};

/// Descriptor for `ProtoWorkObjectHeaders`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoWorkObjectHeadersDescriptor = $convert.base64Decode(
    'ChZQcm90b1dvcmtPYmplY3RIZWFkZXJzEjsKCndvX2hlYWRlcnMYASADKAsyHC5ibG9jay5Qcm'
    '90b1dvcmtPYmplY3RIZWFkZXJSCXdvSGVhZGVycw==');

@$core.Deprecated('Use protoWorkObjectBodyDescriptor instead')
const ProtoWorkObjectBody$json = {
  '1': 'ProtoWorkObjectBody',
  '2': [
    {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.block.ProtoHeader', '9': 0, '10': 'header', '17': true},
    {'1': 'transactions', '3': 2, '4': 1, '5': 11, '6': '.block.ProtoTransactions', '9': 1, '10': 'transactions', '17': true},
    {'1': 'uncles', '3': 3, '4': 1, '5': 11, '6': '.block.ProtoWorkObjectHeaders', '9': 2, '10': 'uncles', '17': true},
    {'1': 'outbound_etxs', '3': 4, '4': 1, '5': 11, '6': '.block.ProtoTransactions', '9': 3, '10': 'outboundEtxs', '17': true},
    {'1': 'manifest', '3': 5, '4': 1, '5': 11, '6': '.block.ProtoManifest', '9': 4, '10': 'manifest', '17': true},
    {'1': 'interlink_hashes', '3': 6, '4': 1, '5': 11, '6': '.common.ProtoHashes', '9': 5, '10': 'interlinkHashes', '17': true},
  ],
  '8': [
    {'1': '_header'},
    {'1': '_transactions'},
    {'1': '_uncles'},
    {'1': '_outbound_etxs'},
    {'1': '_manifest'},
    {'1': '_interlink_hashes'},
  ],
};

/// Descriptor for `ProtoWorkObjectBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoWorkObjectBodyDescriptor = $convert.base64Decode(
    'ChNQcm90b1dvcmtPYmplY3RCb2R5Ei8KBmhlYWRlchgBIAEoCzISLmJsb2NrLlByb3RvSGVhZG'
    'VySABSBmhlYWRlcogBARJBCgx0cmFuc2FjdGlvbnMYAiABKAsyGC5ibG9jay5Qcm90b1RyYW5z'
    'YWN0aW9uc0gBUgx0cmFuc2FjdGlvbnOIAQESOgoGdW5jbGVzGAMgASgLMh0uYmxvY2suUHJvdG'
    '9Xb3JrT2JqZWN0SGVhZGVyc0gCUgZ1bmNsZXOIAQESQgoNb3V0Ym91bmRfZXR4cxgEIAEoCzIY'
    'LmJsb2NrLlByb3RvVHJhbnNhY3Rpb25zSANSDG91dGJvdW5kRXR4c4gBARI1CghtYW5pZmVzdB'
    'gFIAEoCzIULmJsb2NrLlByb3RvTWFuaWZlc3RIBFIIbWFuaWZlc3SIAQESQwoQaW50ZXJsaW5r'
    'X2hhc2hlcxgGIAEoCzITLmNvbW1vbi5Qcm90b0hhc2hlc0gFUg9pbnRlcmxpbmtIYXNoZXOIAQ'
    'FCCQoHX2hlYWRlckIPCg1fdHJhbnNhY3Rpb25zQgkKB191bmNsZXNCEAoOX291dGJvdW5kX2V0'
    'eHNCCwoJX21hbmlmZXN0QhMKEV9pbnRlcmxpbmtfaGFzaGVz');

@$core.Deprecated('Use protoWorkObjectDescriptor instead')
const ProtoWorkObject$json = {
  '1': 'ProtoWorkObject',
  '2': [
    {'1': 'wo_header', '3': 1, '4': 1, '5': 11, '6': '.block.ProtoWorkObjectHeader', '9': 0, '10': 'woHeader', '17': true},
    {'1': 'wo_body', '3': 2, '4': 1, '5': 11, '6': '.block.ProtoWorkObjectBody', '9': 1, '10': 'woBody', '17': true},
    {'1': 'tx', '3': 3, '4': 1, '5': 11, '6': '.block.ProtoTransaction', '9': 2, '10': 'tx', '17': true},
  ],
  '8': [
    {'1': '_wo_header'},
    {'1': '_wo_body'},
    {'1': '_tx'},
  ],
};

/// Descriptor for `ProtoWorkObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoWorkObjectDescriptor = $convert.base64Decode(
    'Cg9Qcm90b1dvcmtPYmplY3QSPgoJd29faGVhZGVyGAEgASgLMhwuYmxvY2suUHJvdG9Xb3JrT2'
    'JqZWN0SGVhZGVySABSCHdvSGVhZGVyiAEBEjgKB3dvX2JvZHkYAiABKAsyGi5ibG9jay5Qcm90'
    'b1dvcmtPYmplY3RCb2R5SAFSBndvQm9keYgBARIsCgJ0eBgDIAEoCzIXLmJsb2NrLlByb3RvVH'
    'JhbnNhY3Rpb25IAlICdHiIAQFCDAoKX3dvX2hlYWRlckIKCghfd29fYm9keUIFCgNfdHg=');

@$core.Deprecated('Use protoWorkObjectsDescriptor instead')
const ProtoWorkObjects$json = {
  '1': 'ProtoWorkObjects',
  '2': [
    {'1': 'work_objects', '3': 1, '4': 3, '5': 11, '6': '.block.ProtoWorkObject', '10': 'workObjects'},
  ],
};

/// Descriptor for `ProtoWorkObjects`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoWorkObjectsDescriptor = $convert.base64Decode(
    'ChBQcm90b1dvcmtPYmplY3RzEjkKDHdvcmtfb2JqZWN0cxgBIAMoCzIWLmJsb2NrLlByb3RvV2'
    '9ya09iamVjdFILd29ya09iamVjdHM=');

@$core.Deprecated('Use protoWorkObjectBlockViewDescriptor instead')
const ProtoWorkObjectBlockView$json = {
  '1': 'ProtoWorkObjectBlockView',
  '2': [
    {'1': 'work_object', '3': 1, '4': 1, '5': 11, '6': '.block.ProtoWorkObject', '9': 0, '10': 'workObject', '17': true},
  ],
  '8': [
    {'1': '_work_object'},
  ],
};

/// Descriptor for `ProtoWorkObjectBlockView`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoWorkObjectBlockViewDescriptor = $convert.base64Decode(
    'ChhQcm90b1dvcmtPYmplY3RCbG9ja1ZpZXcSPAoLd29ya19vYmplY3QYASABKAsyFi5ibG9jay'
    '5Qcm90b1dvcmtPYmplY3RIAFIKd29ya09iamVjdIgBAUIOCgxfd29ya19vYmplY3Q=');

@$core.Deprecated('Use protoWorkObjectBlocksViewDescriptor instead')
const ProtoWorkObjectBlocksView$json = {
  '1': 'ProtoWorkObjectBlocksView',
  '2': [
    {'1': 'work_objects', '3': 1, '4': 3, '5': 11, '6': '.block.ProtoWorkObjectBlockView', '10': 'workObjects'},
  ],
};

/// Descriptor for `ProtoWorkObjectBlocksView`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoWorkObjectBlocksViewDescriptor = $convert.base64Decode(
    'ChlQcm90b1dvcmtPYmplY3RCbG9ja3NWaWV3EkIKDHdvcmtfb2JqZWN0cxgBIAMoCzIfLmJsb2'
    'NrLlByb3RvV29ya09iamVjdEJsb2NrVmlld1ILd29ya09iamVjdHM=');

@$core.Deprecated('Use protoWorkObjectHeaderViewDescriptor instead')
const ProtoWorkObjectHeaderView$json = {
  '1': 'ProtoWorkObjectHeaderView',
  '2': [
    {'1': 'work_object', '3': 1, '4': 1, '5': 11, '6': '.block.ProtoWorkObject', '9': 0, '10': 'workObject', '17': true},
  ],
  '8': [
    {'1': '_work_object'},
  ],
};

/// Descriptor for `ProtoWorkObjectHeaderView`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoWorkObjectHeaderViewDescriptor = $convert.base64Decode(
    'ChlQcm90b1dvcmtPYmplY3RIZWFkZXJWaWV3EjwKC3dvcmtfb2JqZWN0GAEgASgLMhYuYmxvY2'
    'suUHJvdG9Xb3JrT2JqZWN0SABSCndvcmtPYmplY3SIAQFCDgoMX3dvcmtfb2JqZWN0');

@$core.Deprecated('Use protoWorkObjectShareViewDescriptor instead')
const ProtoWorkObjectShareView$json = {
  '1': 'ProtoWorkObjectShareView',
  '2': [
    {'1': 'work_object', '3': 1, '4': 1, '5': 11, '6': '.block.ProtoWorkObject', '9': 0, '10': 'workObject', '17': true},
  ],
  '8': [
    {'1': '_work_object'},
  ],
};

/// Descriptor for `ProtoWorkObjectShareView`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoWorkObjectShareViewDescriptor = $convert.base64Decode(
    'ChhQcm90b1dvcmtPYmplY3RTaGFyZVZpZXcSPAoLd29ya19vYmplY3QYASABKAsyFi5ibG9jay'
    '5Qcm90b1dvcmtPYmplY3RIAFIKd29ya09iamVjdIgBAUIOCgxfd29ya19vYmplY3Q=');

@$core.Deprecated('Use protoAccessTupleDescriptor instead')
const ProtoAccessTuple$json = {
  '1': 'ProtoAccessTuple',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
    {'1': 'storage_key', '3': 2, '4': 3, '5': 11, '6': '.common.ProtoHash', '10': 'storageKey'},
  ],
};

/// Descriptor for `ProtoAccessTuple`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoAccessTupleDescriptor = $convert.base64Decode(
    'ChBQcm90b0FjY2Vzc1R1cGxlEhgKB2FkZHJlc3MYASABKAxSB2FkZHJlc3MSMgoLc3RvcmFnZV'
    '9rZXkYAiADKAsyES5jb21tb24uUHJvdG9IYXNoUgpzdG9yYWdlS2V5');

@$core.Deprecated('Use protoReceiptForStorageDescriptor instead')
const ProtoReceiptForStorage$json = {
  '1': 'ProtoReceiptForStorage',
  '2': [
    {'1': 'post_state_or_status', '3': 1, '4': 1, '5': 12, '10': 'postStateOrStatus'},
    {'1': 'cumulative_gas_used', '3': 2, '4': 1, '5': 4, '10': 'cumulativeGasUsed'},
    {'1': 'logs', '3': 3, '4': 1, '5': 11, '6': '.block.ProtoLogsForStorage', '10': 'logs'},
    {'1': 'tx_hash', '3': 4, '4': 1, '5': 11, '6': '.common.ProtoHash', '10': 'txHash'},
    {'1': 'contract_address', '3': 5, '4': 1, '5': 11, '6': '.common.ProtoAddress', '10': 'contractAddress'},
    {'1': 'gas_used', '3': 6, '4': 1, '5': 4, '10': 'gasUsed'},
    {'1': 'outbound_etxs', '3': 7, '4': 1, '5': 11, '6': '.block.ProtoTransactions', '10': 'outboundEtxs'},
  ],
};

/// Descriptor for `ProtoReceiptForStorage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoReceiptForStorageDescriptor = $convert.base64Decode(
    'ChZQcm90b1JlY2VpcHRGb3JTdG9yYWdlEi8KFHBvc3Rfc3RhdGVfb3Jfc3RhdHVzGAEgASgMUh'
    'Fwb3N0U3RhdGVPclN0YXR1cxIuChNjdW11bGF0aXZlX2dhc191c2VkGAIgASgEUhFjdW11bGF0'
    'aXZlR2FzVXNlZBIuCgRsb2dzGAMgASgLMhouYmxvY2suUHJvdG9Mb2dzRm9yU3RvcmFnZVIEbG'
    '9ncxIqCgd0eF9oYXNoGAQgASgLMhEuY29tbW9uLlByb3RvSGFzaFIGdHhIYXNoEj8KEGNvbnRy'
    'YWN0X2FkZHJlc3MYBSABKAsyFC5jb21tb24uUHJvdG9BZGRyZXNzUg9jb250cmFjdEFkZHJlc3'
    'MSGQoIZ2FzX3VzZWQYBiABKARSB2dhc1VzZWQSPQoNb3V0Ym91bmRfZXR4cxgHIAEoCzIYLmJs'
    'b2NrLlByb3RvVHJhbnNhY3Rpb25zUgxvdXRib3VuZEV0eHM=');

@$core.Deprecated('Use protoReceiptsForStorageDescriptor instead')
const ProtoReceiptsForStorage$json = {
  '1': 'ProtoReceiptsForStorage',
  '2': [
    {'1': 'receipts', '3': 1, '4': 3, '5': 11, '6': '.block.ProtoReceiptForStorage', '10': 'receipts'},
  ],
};

/// Descriptor for `ProtoReceiptsForStorage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoReceiptsForStorageDescriptor = $convert.base64Decode(
    'ChdQcm90b1JlY2VpcHRzRm9yU3RvcmFnZRI5CghyZWNlaXB0cxgBIAMoCzIdLmJsb2NrLlByb3'
    'RvUmVjZWlwdEZvclN0b3JhZ2VSCHJlY2VpcHRz');

@$core.Deprecated('Use protoLogForStorageDescriptor instead')
const ProtoLogForStorage$json = {
  '1': 'ProtoLogForStorage',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 11, '6': '.common.ProtoAddress', '10': 'address'},
    {'1': 'topics', '3': 2, '4': 3, '5': 11, '6': '.common.ProtoHash', '10': 'topics'},
    {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `ProtoLogForStorage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoLogForStorageDescriptor = $convert.base64Decode(
    'ChJQcm90b0xvZ0ZvclN0b3JhZ2USLgoHYWRkcmVzcxgBIAEoCzIULmNvbW1vbi5Qcm90b0FkZH'
    'Jlc3NSB2FkZHJlc3MSKQoGdG9waWNzGAIgAygLMhEuY29tbW9uLlByb3RvSGFzaFIGdG9waWNz'
    'EhIKBGRhdGEYAyABKAxSBGRhdGE=');

@$core.Deprecated('Use protoLogsForStorageDescriptor instead')
const ProtoLogsForStorage$json = {
  '1': 'ProtoLogsForStorage',
  '2': [
    {'1': 'logs', '3': 1, '4': 3, '5': 11, '6': '.block.ProtoLogForStorage', '10': 'logs'},
  ],
};

/// Descriptor for `ProtoLogsForStorage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoLogsForStorageDescriptor = $convert.base64Decode(
    'ChNQcm90b0xvZ3NGb3JTdG9yYWdlEi0KBGxvZ3MYASADKAsyGS5ibG9jay5Qcm90b0xvZ0Zvcl'
    'N0b3JhZ2VSBGxvZ3M=');

@$core.Deprecated('Use protoPendingHeaderDescriptor instead')
const ProtoPendingHeader$json = {
  '1': 'ProtoPendingHeader',
  '2': [
    {'1': 'wo', '3': 1, '4': 1, '5': 11, '6': '.block.ProtoWorkObject', '9': 0, '10': 'wo', '17': true},
    {'1': 'termini', '3': 2, '4': 1, '5': 11, '6': '.block.ProtoTermini', '9': 1, '10': 'termini', '17': true},
  ],
  '8': [
    {'1': '_wo'},
    {'1': '_termini'},
  ],
};

/// Descriptor for `ProtoPendingHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoPendingHeaderDescriptor = $convert.base64Decode(
    'ChJQcm90b1BlbmRpbmdIZWFkZXISKwoCd28YASABKAsyFi5ibG9jay5Qcm90b1dvcmtPYmplY3'
    'RIAFICd2+IAQESMgoHdGVybWluaRgCIAEoCzITLmJsb2NrLlByb3RvVGVybWluaUgBUgd0ZXJt'
    'aW5piAEBQgUKA193b0IKCghfdGVybWluaQ==');

@$core.Deprecated('Use protoTerminiDescriptor instead')
const ProtoTermini$json = {
  '1': 'ProtoTermini',
  '2': [
    {'1': 'dom_termini', '3': 1, '4': 3, '5': 11, '6': '.common.ProtoHash', '10': 'domTermini'},
    {'1': 'sub_termini', '3': 2, '4': 3, '5': 11, '6': '.common.ProtoHash', '10': 'subTermini'},
  ],
};

/// Descriptor for `ProtoTermini`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoTerminiDescriptor = $convert.base64Decode(
    'CgxQcm90b1Rlcm1pbmkSMgoLZG9tX3Rlcm1pbmkYASADKAsyES5jb21tb24uUHJvdG9IYXNoUg'
    'pkb21UZXJtaW5pEjIKC3N1Yl90ZXJtaW5pGAIgAygLMhEuY29tbW9uLlByb3RvSGFzaFIKc3Vi'
    'VGVybWluaQ==');

@$core.Deprecated('Use protoEtxSetDescriptor instead')
const ProtoEtxSet$json = {
  '1': 'ProtoEtxSet',
  '2': [
    {'1': 'etx_hashes', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'etxHashes', '17': true},
  ],
  '8': [
    {'1': '_etx_hashes'},
  ],
};

/// Descriptor for `ProtoEtxSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoEtxSetDescriptor = $convert.base64Decode(
    'CgtQcm90b0V0eFNldBIiCgpldHhfaGFzaGVzGAEgASgMSABSCWV0eEhhc2hlc4gBAUINCgtfZX'
    'R4X2hhc2hlcw==');

@$core.Deprecated('Use protoPendingEtxsDescriptor instead')
const ProtoPendingEtxs$json = {
  '1': 'ProtoPendingEtxs',
  '2': [
    {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.block.ProtoWorkObject', '9': 0, '10': 'header', '17': true},
    {'1': 'outbound_etxs', '3': 2, '4': 1, '5': 11, '6': '.block.ProtoTransactions', '9': 1, '10': 'outboundEtxs', '17': true},
  ],
  '8': [
    {'1': '_header'},
    {'1': '_outbound_etxs'},
  ],
};

/// Descriptor for `ProtoPendingEtxs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoPendingEtxsDescriptor = $convert.base64Decode(
    'ChBQcm90b1BlbmRpbmdFdHhzEjMKBmhlYWRlchgBIAEoCzIWLmJsb2NrLlByb3RvV29ya09iam'
    'VjdEgAUgZoZWFkZXKIAQESQgoNb3V0Ym91bmRfZXR4cxgCIAEoCzIYLmJsb2NrLlByb3RvVHJh'
    'bnNhY3Rpb25zSAFSDG91dGJvdW5kRXR4c4gBAUIJCgdfaGVhZGVyQhAKDl9vdXRib3VuZF9ldH'
    'hz');

@$core.Deprecated('Use protoPendingEtxsRollupDescriptor instead')
const ProtoPendingEtxsRollup$json = {
  '1': 'ProtoPendingEtxsRollup',
  '2': [
    {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.block.ProtoWorkObject', '9': 0, '10': 'header', '17': true},
    {'1': 'etxs_rollup', '3': 2, '4': 1, '5': 11, '6': '.block.ProtoTransactions', '9': 1, '10': 'etxsRollup', '17': true},
  ],
  '8': [
    {'1': '_header'},
    {'1': '_etxs_rollup'},
  ],
};

/// Descriptor for `ProtoPendingEtxsRollup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoPendingEtxsRollupDescriptor = $convert.base64Decode(
    'ChZQcm90b1BlbmRpbmdFdHhzUm9sbHVwEjMKBmhlYWRlchgBIAEoCzIWLmJsb2NrLlByb3RvV2'
    '9ya09iamVjdEgAUgZoZWFkZXKIAQESPgoLZXR4c19yb2xsdXAYAiABKAsyGC5ibG9jay5Qcm90'
    'b1RyYW5zYWN0aW9uc0gBUgpldHhzUm9sbHVwiAEBQgkKB19oZWFkZXJCDgoMX2V0eHNfcm9sbH'
    'Vw');

@$core.Deprecated('Use protoTxInsDescriptor instead')
const ProtoTxIns$json = {
  '1': 'ProtoTxIns',
  '2': [
    {'1': 'tx_ins', '3': 1, '4': 3, '5': 11, '6': '.block.ProtoTxIn', '10': 'txIns'},
  ],
};

/// Descriptor for `ProtoTxIns`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoTxInsDescriptor = $convert.base64Decode(
    'CgpQcm90b1R4SW5zEicKBnR4X2lucxgBIAMoCzIQLmJsb2NrLlByb3RvVHhJblIFdHhJbnM=');

@$core.Deprecated('Use protoTxOutsDescriptor instead')
const ProtoTxOuts$json = {
  '1': 'ProtoTxOuts',
  '2': [
    {'1': 'tx_outs', '3': 1, '4': 3, '5': 11, '6': '.block.ProtoTxOut', '10': 'txOuts'},
  ],
};

/// Descriptor for `ProtoTxOuts`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoTxOutsDescriptor = $convert.base64Decode(
    'CgtQcm90b1R4T3V0cxIqCgd0eF9vdXRzGAEgAygLMhEuYmxvY2suUHJvdG9UeE91dFIGdHhPdX'
    'Rz');

@$core.Deprecated('Use protoTxInDescriptor instead')
const ProtoTxIn$json = {
  '1': 'ProtoTxIn',
  '2': [
    {'1': 'previous_out_point', '3': 1, '4': 1, '5': 11, '6': '.block.ProtoOutPoint', '9': 0, '10': 'previousOutPoint', '17': true},
    {'1': 'pub_key', '3': 2, '4': 1, '5': 12, '9': 1, '10': 'pubKey', '17': true},
  ],
  '8': [
    {'1': '_previous_out_point'},
    {'1': '_pub_key'},
  ],
};

/// Descriptor for `ProtoTxIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoTxInDescriptor = $convert.base64Decode(
    'CglQcm90b1R4SW4SRwoScHJldmlvdXNfb3V0X3BvaW50GAEgASgLMhQuYmxvY2suUHJvdG9PdX'
    'RQb2ludEgAUhBwcmV2aW91c091dFBvaW50iAEBEhwKB3B1Yl9rZXkYAiABKAxIAVIGcHViS2V5'
    'iAEBQhUKE19wcmV2aW91c19vdXRfcG9pbnRCCgoIX3B1Yl9rZXk=');

@$core.Deprecated('Use protoOutPointDescriptor instead')
const ProtoOutPoint$json = {
  '1': 'ProtoOutPoint',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 0, '10': 'hash', '17': true},
    {'1': 'index', '3': 2, '4': 1, '5': 13, '9': 1, '10': 'index', '17': true},
  ],
  '8': [
    {'1': '_hash'},
    {'1': '_index'},
  ],
};

/// Descriptor for `ProtoOutPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoOutPointDescriptor = $convert.base64Decode(
    'Cg1Qcm90b091dFBvaW50EioKBGhhc2gYASABKAsyES5jb21tb24uUHJvdG9IYXNoSABSBGhhc2'
    'iIAQESGQoFaW5kZXgYAiABKA1IAVIFaW5kZXiIAQFCBwoFX2hhc2hCCAoGX2luZGV4');

@$core.Deprecated('Use protoTxOutDescriptor instead')
const ProtoTxOut$json = {
  '1': 'ProtoTxOut',
  '2': [
    {'1': 'denomination', '3': 1, '4': 1, '5': 13, '9': 0, '10': 'denomination', '17': true},
    {'1': 'address', '3': 2, '4': 1, '5': 12, '9': 1, '10': 'address', '17': true},
    {'1': 'lock', '3': 3, '4': 1, '5': 12, '9': 2, '10': 'lock', '17': true},
  ],
  '8': [
    {'1': '_denomination'},
    {'1': '_address'},
    {'1': '_lock'},
  ],
};

/// Descriptor for `ProtoTxOut`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoTxOutDescriptor = $convert.base64Decode(
    'CgpQcm90b1R4T3V0EicKDGRlbm9taW5hdGlvbhgBIAEoDUgAUgxkZW5vbWluYXRpb26IAQESHQ'
    'oHYWRkcmVzcxgCIAEoDEgBUgdhZGRyZXNziAEBEhcKBGxvY2sYAyABKAxIAlIEbG9ja4gBAUIP'
    'Cg1fZGVub21pbmF0aW9uQgoKCF9hZGRyZXNzQgcKBV9sb2Nr');

@$core.Deprecated('Use protoOutPointAndDenominationDescriptor instead')
const ProtoOutPointAndDenomination$json = {
  '1': 'ProtoOutPointAndDenomination',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 11, '6': '.common.ProtoHash', '9': 0, '10': 'hash', '17': true},
    {'1': 'index', '3': 2, '4': 1, '5': 13, '9': 1, '10': 'index', '17': true},
    {'1': 'denomination', '3': 3, '4': 1, '5': 13, '9': 2, '10': 'denomination', '17': true},
  ],
  '8': [
    {'1': '_hash'},
    {'1': '_index'},
    {'1': '_denomination'},
  ],
};

/// Descriptor for `ProtoOutPointAndDenomination`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoOutPointAndDenominationDescriptor = $convert.base64Decode(
    'ChxQcm90b091dFBvaW50QW5kRGVub21pbmF0aW9uEioKBGhhc2gYASABKAsyES5jb21tb24uUH'
    'JvdG9IYXNoSABSBGhhc2iIAQESGQoFaW5kZXgYAiABKA1IAVIFaW5kZXiIAQESJwoMZGVub21p'
    'bmF0aW9uGAMgASgNSAJSDGRlbm9taW5hdGlvbogBAUIHCgVfaGFzaEIICgZfaW5kZXhCDwoNX2'
    'Rlbm9taW5hdGlvbg==');

@$core.Deprecated('Use protoAddressOutPointsDescriptor instead')
const ProtoAddressOutPoints$json = {
  '1': 'ProtoAddressOutPoints',
  '2': [
    {'1': 'out_points', '3': 1, '4': 3, '5': 11, '6': '.block.ProtoAddressOutPoints.OutPointsEntry', '10': 'outPoints'},
  ],
  '3': [ProtoAddressOutPoints_OutPointsEntry$json],
};

@$core.Deprecated('Use protoAddressOutPointsDescriptor instead')
const ProtoAddressOutPoints_OutPointsEntry$json = {
  '1': 'OutPointsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.block.ProtoOutPointAndDenomination', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ProtoAddressOutPoints`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoAddressOutPointsDescriptor = $convert.base64Decode(
    'ChVQcm90b0FkZHJlc3NPdXRQb2ludHMSSgoKb3V0X3BvaW50cxgBIAMoCzIrLmJsb2NrLlByb3'
    'RvQWRkcmVzc091dFBvaW50cy5PdXRQb2ludHNFbnRyeVIJb3V0UG9pbnRzGmEKDk91dFBvaW50'
    'c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjkKBXZhbHVlGAIgASgLMiMuYmxvY2suUHJvdG9PdX'
    'RQb2ludEFuZERlbm9taW5hdGlvblIFdmFsdWU6AjgB');

@$core.Deprecated('Use protoOutPointsMapDescriptor instead')
const ProtoOutPointsMap$json = {
  '1': 'ProtoOutPointsMap',
  '2': [
    {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.block.ProtoOutPointsMap.EntriesEntry', '10': 'entries'},
  ],
  '3': [ProtoOutPointsMap_EntriesEntry$json],
};

@$core.Deprecated('Use protoOutPointsMapDescriptor instead')
const ProtoOutPointsMap_EntriesEntry$json = {
  '1': 'EntriesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.block.ProtoAddressOutPoints', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ProtoOutPointsMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoOutPointsMapDescriptor = $convert.base64Decode(
    'ChFQcm90b091dFBvaW50c01hcBI/CgdlbnRyaWVzGAEgAygLMiUuYmxvY2suUHJvdG9PdXRQb2'
    'ludHNNYXAuRW50cmllc0VudHJ5UgdlbnRyaWVzGlgKDEVudHJpZXNFbnRyeRIQCgNrZXkYASAB'
    'KAlSA2tleRIyCgV2YWx1ZRgCIAEoCzIcLmJsb2NrLlByb3RvQWRkcmVzc091dFBvaW50c1IFdm'
    'FsdWU6AjgB');

@$core.Deprecated('Use protoSpentUTXODescriptor instead')
const ProtoSpentUTXO$json = {
  '1': 'ProtoSpentUTXO',
  '2': [
    {'1': 'outpoint', '3': 1, '4': 1, '5': 11, '6': '.block.ProtoOutPoint', '9': 0, '10': 'outpoint', '17': true},
    {'1': 'sutxo', '3': 2, '4': 1, '5': 11, '6': '.block.ProtoTxOut', '9': 1, '10': 'sutxo', '17': true},
  ],
  '8': [
    {'1': '_outpoint'},
    {'1': '_sutxo'},
  ],
};

/// Descriptor for `ProtoSpentUTXO`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoSpentUTXODescriptor = $convert.base64Decode(
    'Cg5Qcm90b1NwZW50VVRYTxI1CghvdXRwb2ludBgBIAEoCzIULmJsb2NrLlByb3RvT3V0UG9pbn'
    'RIAFIIb3V0cG9pbnSIAQESLAoFc3V0eG8YAiABKAsyES5ibG9jay5Qcm90b1R4T3V0SAFSBXN1'
    'dHhviAEBQgsKCV9vdXRwb2ludEIICgZfc3V0eG8=');

@$core.Deprecated('Use protoSpentUTXOsDescriptor instead')
const ProtoSpentUTXOs$json = {
  '1': 'ProtoSpentUTXOs',
  '2': [
    {'1': 'sutxos', '3': 1, '4': 3, '5': 11, '6': '.block.ProtoSpentUTXO', '10': 'sutxos'},
  ],
};

/// Descriptor for `ProtoSpentUTXOs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoSpentUTXOsDescriptor = $convert.base64Decode(
    'Cg9Qcm90b1NwZW50VVRYT3MSLQoGc3V0eG9zGAEgAygLMhUuYmxvY2suUHJvdG9TcGVudFVUWE'
    '9SBnN1dHhvcw==');

@$core.Deprecated('Use protoKeysDescriptor instead')
const ProtoKeys$json = {
  '1': 'ProtoKeys',
  '2': [
    {'1': 'keys', '3': 1, '4': 3, '5': 12, '10': 'keys'},
  ],
};

/// Descriptor for `ProtoKeys`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoKeysDescriptor = $convert.base64Decode(
    'CglQcm90b0tleXMSEgoEa2V5cxgBIAMoDFIEa2V5cw==');

