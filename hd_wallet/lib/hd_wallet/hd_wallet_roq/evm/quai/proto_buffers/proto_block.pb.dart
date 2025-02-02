//
//  Generated code. Do not modify.
//  source: proto_block.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'proto_common.pb.dart' as $0;

class ProtoHeader extends $pb.GeneratedMessage {
  factory ProtoHeader({
    $core.Iterable<$0.ProtoHash>? parentHash,
    $0.ProtoHash? uncleHash,
    $0.ProtoHash? evmRoot,
    $0.ProtoHash? txHash,
    $0.ProtoHash? outboundEtxHash,
    $0.ProtoHash? etxRollupHash,
    $core.Iterable<$0.ProtoHash>? manifestHash,
    $0.ProtoHash? receiptHash,
    $core.List<$core.int>? difficulty,
    $core.Iterable<$core.List<$core.int>>? parentEntropy,
    $core.Iterable<$core.List<$core.int>>? parentDeltaEntropy,
    $core.Iterable<$core.List<$core.int>>? parentUncledDeltaEntropy,
    $core.List<$core.int>? uncledEntropy,
    $core.Iterable<$core.List<$core.int>>? number,
    $fixnum.Int64? gasLimit,
    $fixnum.Int64? gasUsed,
    $core.List<$core.int>? baseFee,
    $0.ProtoLocation? location,
    $core.List<$core.int>? extra,
    $0.ProtoHash? mixHash,
    $fixnum.Int64? nonce,
    $0.ProtoHash? utxoRoot,
    $0.ProtoHash? etxSetRoot,
    $fixnum.Int64? efficiencyScore,
    $fixnum.Int64? thresholdCount,
    $fixnum.Int64? expansionNumber,
    $0.ProtoHash? etxEligibleSlices,
    $0.ProtoHash? primeTerminusHash,
    $0.ProtoHash? interlinkRootHash,
    $fixnum.Int64? stateLimit,
    $fixnum.Int64? stateUsed,
    $core.List<$core.int>? quaiStateSize,
    $core.List<$core.int>? secondaryCoinbase,
    $core.List<$core.int>? exchangeRate,
    $core.List<$core.int>? quaiToQi,
    $core.List<$core.int>? qiToQuai,
  }) {
    final $result = create();
    if (parentHash != null) {
      $result.parentHash.addAll(parentHash);
    }
    if (uncleHash != null) {
      $result.uncleHash = uncleHash;
    }
    if (evmRoot != null) {
      $result.evmRoot = evmRoot;
    }
    if (txHash != null) {
      $result.txHash = txHash;
    }
    if (outboundEtxHash != null) {
      $result.outboundEtxHash = outboundEtxHash;
    }
    if (etxRollupHash != null) {
      $result.etxRollupHash = etxRollupHash;
    }
    if (manifestHash != null) {
      $result.manifestHash.addAll(manifestHash);
    }
    if (receiptHash != null) {
      $result.receiptHash = receiptHash;
    }
    if (difficulty != null) {
      $result.difficulty = difficulty;
    }
    if (parentEntropy != null) {
      $result.parentEntropy.addAll(parentEntropy);
    }
    if (parentDeltaEntropy != null) {
      $result.parentDeltaEntropy.addAll(parentDeltaEntropy);
    }
    if (parentUncledDeltaEntropy != null) {
      $result.parentUncledDeltaEntropy.addAll(parentUncledDeltaEntropy);
    }
    if (uncledEntropy != null) {
      $result.uncledEntropy = uncledEntropy;
    }
    if (number != null) {
      $result.number.addAll(number);
    }
    if (gasLimit != null) {
      $result.gasLimit = gasLimit;
    }
    if (gasUsed != null) {
      $result.gasUsed = gasUsed;
    }
    if (baseFee != null) {
      $result.baseFee = baseFee;
    }
    if (location != null) {
      $result.location = location;
    }
    if (extra != null) {
      $result.extra = extra;
    }
    if (mixHash != null) {
      $result.mixHash = mixHash;
    }
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (utxoRoot != null) {
      $result.utxoRoot = utxoRoot;
    }
    if (etxSetRoot != null) {
      $result.etxSetRoot = etxSetRoot;
    }
    if (efficiencyScore != null) {
      $result.efficiencyScore = efficiencyScore;
    }
    if (thresholdCount != null) {
      $result.thresholdCount = thresholdCount;
    }
    if (expansionNumber != null) {
      $result.expansionNumber = expansionNumber;
    }
    if (etxEligibleSlices != null) {
      $result.etxEligibleSlices = etxEligibleSlices;
    }
    if (primeTerminusHash != null) {
      $result.primeTerminusHash = primeTerminusHash;
    }
    if (interlinkRootHash != null) {
      $result.interlinkRootHash = interlinkRootHash;
    }
    if (stateLimit != null) {
      $result.stateLimit = stateLimit;
    }
    if (stateUsed != null) {
      $result.stateUsed = stateUsed;
    }
    if (quaiStateSize != null) {
      $result.quaiStateSize = quaiStateSize;
    }
    if (secondaryCoinbase != null) {
      $result.secondaryCoinbase = secondaryCoinbase;
    }
    if (exchangeRate != null) {
      $result.exchangeRate = exchangeRate;
    }
    if (quaiToQi != null) {
      $result.quaiToQi = quaiToQi;
    }
    if (qiToQuai != null) {
      $result.qiToQuai = qiToQuai;
    }
    return $result;
  }
  ProtoHeader._() : super();
  factory ProtoHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoHeader', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..pc<$0.ProtoHash>(1, _omitFieldNames ? '' : 'parentHash', $pb.PbFieldType.PM, subBuilder: $0.ProtoHash.create)
    ..aOM<$0.ProtoHash>(2, _omitFieldNames ? '' : 'uncleHash', subBuilder: $0.ProtoHash.create)
    ..aOM<$0.ProtoHash>(3, _omitFieldNames ? '' : 'evmRoot', subBuilder: $0.ProtoHash.create)
    ..aOM<$0.ProtoHash>(4, _omitFieldNames ? '' : 'txHash', subBuilder: $0.ProtoHash.create)
    ..aOM<$0.ProtoHash>(5, _omitFieldNames ? '' : 'outboundEtxHash', subBuilder: $0.ProtoHash.create)
    ..aOM<$0.ProtoHash>(6, _omitFieldNames ? '' : 'etxRollupHash', subBuilder: $0.ProtoHash.create)
    ..pc<$0.ProtoHash>(7, _omitFieldNames ? '' : 'manifestHash', $pb.PbFieldType.PM, subBuilder: $0.ProtoHash.create)
    ..aOM<$0.ProtoHash>(8, _omitFieldNames ? '' : 'receiptHash', subBuilder: $0.ProtoHash.create)
    ..a<$core.List<$core.int>>(9, _omitFieldNames ? '' : 'difficulty', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(10, _omitFieldNames ? '' : 'parentEntropy', $pb.PbFieldType.PY)
    ..p<$core.List<$core.int>>(11, _omitFieldNames ? '' : 'parentDeltaEntropy', $pb.PbFieldType.PY)
    ..p<$core.List<$core.int>>(12, _omitFieldNames ? '' : 'parentUncledDeltaEntropy', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(13, _omitFieldNames ? '' : 'uncledEntropy', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(14, _omitFieldNames ? '' : 'number', $pb.PbFieldType.PY)
    ..a<$fixnum.Int64>(15, _omitFieldNames ? '' : 'gasLimit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(16, _omitFieldNames ? '' : 'gasUsed', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(17, _omitFieldNames ? '' : 'baseFee', $pb.PbFieldType.OY)
    ..aOM<$0.ProtoLocation>(18, _omitFieldNames ? '' : 'location', subBuilder: $0.ProtoLocation.create)
    ..a<$core.List<$core.int>>(19, _omitFieldNames ? '' : 'extra', $pb.PbFieldType.OY)
    ..aOM<$0.ProtoHash>(20, _omitFieldNames ? '' : 'mixHash', subBuilder: $0.ProtoHash.create)
    ..a<$fixnum.Int64>(21, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.ProtoHash>(22, _omitFieldNames ? '' : 'utxoRoot', subBuilder: $0.ProtoHash.create)
    ..aOM<$0.ProtoHash>(23, _omitFieldNames ? '' : 'etxSetRoot', subBuilder: $0.ProtoHash.create)
    ..a<$fixnum.Int64>(24, _omitFieldNames ? '' : 'efficiencyScore', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(25, _omitFieldNames ? '' : 'thresholdCount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(26, _omitFieldNames ? '' : 'expansionNumber', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.ProtoHash>(27, _omitFieldNames ? '' : 'etxEligibleSlices', subBuilder: $0.ProtoHash.create)
    ..aOM<$0.ProtoHash>(28, _omitFieldNames ? '' : 'primeTerminusHash', subBuilder: $0.ProtoHash.create)
    ..aOM<$0.ProtoHash>(29, _omitFieldNames ? '' : 'interlinkRootHash', subBuilder: $0.ProtoHash.create)
    ..a<$fixnum.Int64>(30, _omitFieldNames ? '' : 'stateLimit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(31, _omitFieldNames ? '' : 'stateUsed', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(32, _omitFieldNames ? '' : 'quaiStateSize', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(33, _omitFieldNames ? '' : 'secondaryCoinbase', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(34, _omitFieldNames ? '' : 'exchangeRate', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(35, _omitFieldNames ? '' : 'quaiToQi', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(36, _omitFieldNames ? '' : 'qiToQuai', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoHeader clone() => ProtoHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoHeader copyWith(void Function(ProtoHeader) updates) => super.copyWith((message) => updates(message as ProtoHeader)) as ProtoHeader;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoHeader create() => ProtoHeader._();
  ProtoHeader createEmptyInstance() => create();
  static $pb.PbList<ProtoHeader> createRepeated() => $pb.PbList<ProtoHeader>();
  @$core.pragma('dart2js:noInline')
  static ProtoHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoHeader>(create);
  static ProtoHeader? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.ProtoHash> get parentHash => $_getList(0);

  @$pb.TagNumber(2)
  $0.ProtoHash get uncleHash => $_getN(1);
  @$pb.TagNumber(2)
  set uncleHash($0.ProtoHash v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUncleHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearUncleHash() => clearField(2);
  @$pb.TagNumber(2)
  $0.ProtoHash ensureUncleHash() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.ProtoHash get evmRoot => $_getN(2);
  @$pb.TagNumber(3)
  set evmRoot($0.ProtoHash v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEvmRoot() => $_has(2);
  @$pb.TagNumber(3)
  void clearEvmRoot() => clearField(3);
  @$pb.TagNumber(3)
  $0.ProtoHash ensureEvmRoot() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.ProtoHash get txHash => $_getN(3);
  @$pb.TagNumber(4)
  set txHash($0.ProtoHash v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTxHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearTxHash() => clearField(4);
  @$pb.TagNumber(4)
  $0.ProtoHash ensureTxHash() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.ProtoHash get outboundEtxHash => $_getN(4);
  @$pb.TagNumber(5)
  set outboundEtxHash($0.ProtoHash v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOutboundEtxHash() => $_has(4);
  @$pb.TagNumber(5)
  void clearOutboundEtxHash() => clearField(5);
  @$pb.TagNumber(5)
  $0.ProtoHash ensureOutboundEtxHash() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.ProtoHash get etxRollupHash => $_getN(5);
  @$pb.TagNumber(6)
  set etxRollupHash($0.ProtoHash v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasEtxRollupHash() => $_has(5);
  @$pb.TagNumber(6)
  void clearEtxRollupHash() => clearField(6);
  @$pb.TagNumber(6)
  $0.ProtoHash ensureEtxRollupHash() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<$0.ProtoHash> get manifestHash => $_getList(6);

  @$pb.TagNumber(8)
  $0.ProtoHash get receiptHash => $_getN(7);
  @$pb.TagNumber(8)
  set receiptHash($0.ProtoHash v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasReceiptHash() => $_has(7);
  @$pb.TagNumber(8)
  void clearReceiptHash() => clearField(8);
  @$pb.TagNumber(8)
  $0.ProtoHash ensureReceiptHash() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.List<$core.int> get difficulty => $_getN(8);
  @$pb.TagNumber(9)
  set difficulty($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDifficulty() => $_has(8);
  @$pb.TagNumber(9)
  void clearDifficulty() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.List<$core.int>> get parentEntropy => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<$core.List<$core.int>> get parentDeltaEntropy => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<$core.List<$core.int>> get parentUncledDeltaEntropy => $_getList(11);

  @$pb.TagNumber(13)
  $core.List<$core.int> get uncledEntropy => $_getN(12);
  @$pb.TagNumber(13)
  set uncledEntropy($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasUncledEntropy() => $_has(12);
  @$pb.TagNumber(13)
  void clearUncledEntropy() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.List<$core.int>> get number => $_getList(13);

  @$pb.TagNumber(15)
  $fixnum.Int64 get gasLimit => $_getI64(14);
  @$pb.TagNumber(15)
  set gasLimit($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasGasLimit() => $_has(14);
  @$pb.TagNumber(15)
  void clearGasLimit() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get gasUsed => $_getI64(15);
  @$pb.TagNumber(16)
  set gasUsed($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasGasUsed() => $_has(15);
  @$pb.TagNumber(16)
  void clearGasUsed() => clearField(16);

  @$pb.TagNumber(17)
  $core.List<$core.int> get baseFee => $_getN(16);
  @$pb.TagNumber(17)
  set baseFee($core.List<$core.int> v) { $_setBytes(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasBaseFee() => $_has(16);
  @$pb.TagNumber(17)
  void clearBaseFee() => clearField(17);

  @$pb.TagNumber(18)
  $0.ProtoLocation get location => $_getN(17);
  @$pb.TagNumber(18)
  set location($0.ProtoLocation v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasLocation() => $_has(17);
  @$pb.TagNumber(18)
  void clearLocation() => clearField(18);
  @$pb.TagNumber(18)
  $0.ProtoLocation ensureLocation() => $_ensure(17);

  @$pb.TagNumber(19)
  $core.List<$core.int> get extra => $_getN(18);
  @$pb.TagNumber(19)
  set extra($core.List<$core.int> v) { $_setBytes(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasExtra() => $_has(18);
  @$pb.TagNumber(19)
  void clearExtra() => clearField(19);

  @$pb.TagNumber(20)
  $0.ProtoHash get mixHash => $_getN(19);
  @$pb.TagNumber(20)
  set mixHash($0.ProtoHash v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasMixHash() => $_has(19);
  @$pb.TagNumber(20)
  void clearMixHash() => clearField(20);
  @$pb.TagNumber(20)
  $0.ProtoHash ensureMixHash() => $_ensure(19);

  @$pb.TagNumber(21)
  $fixnum.Int64 get nonce => $_getI64(20);
  @$pb.TagNumber(21)
  set nonce($fixnum.Int64 v) { $_setInt64(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasNonce() => $_has(20);
  @$pb.TagNumber(21)
  void clearNonce() => clearField(21);

  @$pb.TagNumber(22)
  $0.ProtoHash get utxoRoot => $_getN(21);
  @$pb.TagNumber(22)
  set utxoRoot($0.ProtoHash v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasUtxoRoot() => $_has(21);
  @$pb.TagNumber(22)
  void clearUtxoRoot() => clearField(22);
  @$pb.TagNumber(22)
  $0.ProtoHash ensureUtxoRoot() => $_ensure(21);

  @$pb.TagNumber(23)
  $0.ProtoHash get etxSetRoot => $_getN(22);
  @$pb.TagNumber(23)
  set etxSetRoot($0.ProtoHash v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasEtxSetRoot() => $_has(22);
  @$pb.TagNumber(23)
  void clearEtxSetRoot() => clearField(23);
  @$pb.TagNumber(23)
  $0.ProtoHash ensureEtxSetRoot() => $_ensure(22);

  @$pb.TagNumber(24)
  $fixnum.Int64 get efficiencyScore => $_getI64(23);
  @$pb.TagNumber(24)
  set efficiencyScore($fixnum.Int64 v) { $_setInt64(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasEfficiencyScore() => $_has(23);
  @$pb.TagNumber(24)
  void clearEfficiencyScore() => clearField(24);

  @$pb.TagNumber(25)
  $fixnum.Int64 get thresholdCount => $_getI64(24);
  @$pb.TagNumber(25)
  set thresholdCount($fixnum.Int64 v) { $_setInt64(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasThresholdCount() => $_has(24);
  @$pb.TagNumber(25)
  void clearThresholdCount() => clearField(25);

  @$pb.TagNumber(26)
  $fixnum.Int64 get expansionNumber => $_getI64(25);
  @$pb.TagNumber(26)
  set expansionNumber($fixnum.Int64 v) { $_setInt64(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasExpansionNumber() => $_has(25);
  @$pb.TagNumber(26)
  void clearExpansionNumber() => clearField(26);

  @$pb.TagNumber(27)
  $0.ProtoHash get etxEligibleSlices => $_getN(26);
  @$pb.TagNumber(27)
  set etxEligibleSlices($0.ProtoHash v) { setField(27, v); }
  @$pb.TagNumber(27)
  $core.bool hasEtxEligibleSlices() => $_has(26);
  @$pb.TagNumber(27)
  void clearEtxEligibleSlices() => clearField(27);
  @$pb.TagNumber(27)
  $0.ProtoHash ensureEtxEligibleSlices() => $_ensure(26);

  @$pb.TagNumber(28)
  $0.ProtoHash get primeTerminusHash => $_getN(27);
  @$pb.TagNumber(28)
  set primeTerminusHash($0.ProtoHash v) { setField(28, v); }
  @$pb.TagNumber(28)
  $core.bool hasPrimeTerminusHash() => $_has(27);
  @$pb.TagNumber(28)
  void clearPrimeTerminusHash() => clearField(28);
  @$pb.TagNumber(28)
  $0.ProtoHash ensurePrimeTerminusHash() => $_ensure(27);

  @$pb.TagNumber(29)
  $0.ProtoHash get interlinkRootHash => $_getN(28);
  @$pb.TagNumber(29)
  set interlinkRootHash($0.ProtoHash v) { setField(29, v); }
  @$pb.TagNumber(29)
  $core.bool hasInterlinkRootHash() => $_has(28);
  @$pb.TagNumber(29)
  void clearInterlinkRootHash() => clearField(29);
  @$pb.TagNumber(29)
  $0.ProtoHash ensureInterlinkRootHash() => $_ensure(28);

  @$pb.TagNumber(30)
  $fixnum.Int64 get stateLimit => $_getI64(29);
  @$pb.TagNumber(30)
  set stateLimit($fixnum.Int64 v) { $_setInt64(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasStateLimit() => $_has(29);
  @$pb.TagNumber(30)
  void clearStateLimit() => clearField(30);

  @$pb.TagNumber(31)
  $fixnum.Int64 get stateUsed => $_getI64(30);
  @$pb.TagNumber(31)
  set stateUsed($fixnum.Int64 v) { $_setInt64(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasStateUsed() => $_has(30);
  @$pb.TagNumber(31)
  void clearStateUsed() => clearField(31);

  @$pb.TagNumber(32)
  $core.List<$core.int> get quaiStateSize => $_getN(31);
  @$pb.TagNumber(32)
  set quaiStateSize($core.List<$core.int> v) { $_setBytes(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasQuaiStateSize() => $_has(31);
  @$pb.TagNumber(32)
  void clearQuaiStateSize() => clearField(32);

  @$pb.TagNumber(33)
  $core.List<$core.int> get secondaryCoinbase => $_getN(32);
  @$pb.TagNumber(33)
  set secondaryCoinbase($core.List<$core.int> v) { $_setBytes(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasSecondaryCoinbase() => $_has(32);
  @$pb.TagNumber(33)
  void clearSecondaryCoinbase() => clearField(33);

  @$pb.TagNumber(34)
  $core.List<$core.int> get exchangeRate => $_getN(33);
  @$pb.TagNumber(34)
  set exchangeRate($core.List<$core.int> v) { $_setBytes(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasExchangeRate() => $_has(33);
  @$pb.TagNumber(34)
  void clearExchangeRate() => clearField(34);

  @$pb.TagNumber(35)
  $core.List<$core.int> get quaiToQi => $_getN(34);
  @$pb.TagNumber(35)
  set quaiToQi($core.List<$core.int> v) { $_setBytes(34, v); }
  @$pb.TagNumber(35)
  $core.bool hasQuaiToQi() => $_has(34);
  @$pb.TagNumber(35)
  void clearQuaiToQi() => clearField(35);

  @$pb.TagNumber(36)
  $core.List<$core.int> get qiToQuai => $_getN(35);
  @$pb.TagNumber(36)
  set qiToQuai($core.List<$core.int> v) { $_setBytes(35, v); }
  @$pb.TagNumber(36)
  $core.bool hasQiToQuai() => $_has(35);
  @$pb.TagNumber(36)
  void clearQiToQuai() => clearField(36);
}

class ProtoTransaction extends $pb.GeneratedMessage {
  factory ProtoTransaction({
    $fixnum.Int64? type,
    $core.List<$core.int>? to,
    $fixnum.Int64? nonce,
    $core.List<$core.int>? value,
    $fixnum.Int64? gas,
    $core.List<$core.int>? data,
    $core.List<$core.int>? chainId,
    $core.List<$core.int>? minerTip,
    $core.List<$core.int>? gasPrice,
    ProtoAccessList? accessList,
    $core.List<$core.int>? v,
    $core.List<$core.int>? r,
    $core.List<$core.int>? s,
    $0.ProtoHash? originatingTxHash,
    $core.int? etxIndex,
    ProtoTxIns? txIns,
    ProtoTxOuts? txOuts,
    $core.List<$core.int>? signature,
    $core.List<$core.int>? etxSender,
    $0.ProtoHash? parentHash,
    $0.ProtoHash? mixHash,
    $fixnum.Int64? workNonce,
    $fixnum.Int64? etxType,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (to != null) {
      $result.to = to;
    }
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (value != null) {
      $result.value = value;
    }
    if (gas != null) {
      $result.gas = gas;
    }
    if (data != null) {
      $result.data = data;
    }
    if (chainId != null) {
      $result.chainId = chainId;
    }
    if (minerTip != null) {
      $result.minerTip = minerTip;
    }
    if (gasPrice != null) {
      $result.gasPrice = gasPrice;
    }
    if (accessList != null) {
      $result.accessList = accessList;
    }
    if (v != null) {
      $result.v = v;
    }
    if (r != null) {
      $result.r = r;
    }
    if (s != null) {
      $result.s = s;
    }
    if (originatingTxHash != null) {
      $result.originatingTxHash = originatingTxHash;
    }
    if (etxIndex != null) {
      $result.etxIndex = etxIndex;
    }
    if (txIns != null) {
      $result.txIns = txIns;
    }
    if (txOuts != null) {
      $result.txOuts = txOuts;
    }
    if (signature != null) {
      $result.signature = signature;
    }
    if (etxSender != null) {
      $result.etxSender = etxSender;
    }
    if (parentHash != null) {
      $result.parentHash = parentHash;
    }
    if (mixHash != null) {
      $result.mixHash = mixHash;
    }
    if (workNonce != null) {
      $result.workNonce = workNonce;
    }
    if (etxType != null) {
      $result.etxType = etxType;
    }
    return $result;
  }
  ProtoTransaction._() : super();
  factory ProtoTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoTransaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'to', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'gas', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'chainId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(8, _omitFieldNames ? '' : 'minerTip', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(9, _omitFieldNames ? '' : 'gasPrice', $pb.PbFieldType.OY)
    ..aOM<ProtoAccessList>(10, _omitFieldNames ? '' : 'accessList', subBuilder: ProtoAccessList.create)
    ..a<$core.List<$core.int>>(11, _omitFieldNames ? '' : 'v', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(12, _omitFieldNames ? '' : 'r', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(13, _omitFieldNames ? '' : 's', $pb.PbFieldType.OY)
    ..aOM<$0.ProtoHash>(14, _omitFieldNames ? '' : 'originatingTxHash', subBuilder: $0.ProtoHash.create)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'etxIndex', $pb.PbFieldType.OU3)
    ..aOM<ProtoTxIns>(16, _omitFieldNames ? '' : 'txIns', subBuilder: ProtoTxIns.create)
    ..aOM<ProtoTxOuts>(17, _omitFieldNames ? '' : 'txOuts', subBuilder: ProtoTxOuts.create)
    ..a<$core.List<$core.int>>(18, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(19, _omitFieldNames ? '' : 'etxSender', $pb.PbFieldType.OY)
    ..aOM<$0.ProtoHash>(20, _omitFieldNames ? '' : 'parentHash', subBuilder: $0.ProtoHash.create)
    ..aOM<$0.ProtoHash>(21, _omitFieldNames ? '' : 'mixHash', subBuilder: $0.ProtoHash.create)
    ..a<$fixnum.Int64>(22, _omitFieldNames ? '' : 'workNonce', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(23, _omitFieldNames ? '' : 'etxType', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoTransaction clone() => ProtoTransaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoTransaction copyWith(void Function(ProtoTransaction) updates) => super.copyWith((message) => updates(message as ProtoTransaction)) as ProtoTransaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoTransaction create() => ProtoTransaction._();
  ProtoTransaction createEmptyInstance() => create();
  static $pb.PbList<ProtoTransaction> createRepeated() => $pb.PbList<ProtoTransaction>();
  @$core.pragma('dart2js:noInline')
  static ProtoTransaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoTransaction>(create);
  static ProtoTransaction? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get type => $_getI64(0);
  @$pb.TagNumber(1)
  set type($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get to => $_getN(1);
  @$pb.TagNumber(2)
  set to($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTo() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get nonce => $_getI64(2);
  @$pb.TagNumber(3)
  set nonce($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNonce() => $_has(2);
  @$pb.TagNumber(3)
  void clearNonce() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get value => $_getN(3);
  @$pb.TagNumber(4)
  set value($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get gas => $_getI64(4);
  @$pb.TagNumber(5)
  set gas($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGas() => $_has(4);
  @$pb.TagNumber(5)
  void clearGas() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get data => $_getN(5);
  @$pb.TagNumber(6)
  set data($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasData() => $_has(5);
  @$pb.TagNumber(6)
  void clearData() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get chainId => $_getN(6);
  @$pb.TagNumber(7)
  set chainId($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasChainId() => $_has(6);
  @$pb.TagNumber(7)
  void clearChainId() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get minerTip => $_getN(7);
  @$pb.TagNumber(8)
  set minerTip($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMinerTip() => $_has(7);
  @$pb.TagNumber(8)
  void clearMinerTip() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get gasPrice => $_getN(8);
  @$pb.TagNumber(9)
  set gasPrice($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasGasPrice() => $_has(8);
  @$pb.TagNumber(9)
  void clearGasPrice() => clearField(9);

  @$pb.TagNumber(10)
  ProtoAccessList get accessList => $_getN(9);
  @$pb.TagNumber(10)
  set accessList(ProtoAccessList v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasAccessList() => $_has(9);
  @$pb.TagNumber(10)
  void clearAccessList() => clearField(10);
  @$pb.TagNumber(10)
  ProtoAccessList ensureAccessList() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.List<$core.int> get v => $_getN(10);
  @$pb.TagNumber(11)
  set v($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasV() => $_has(10);
  @$pb.TagNumber(11)
  void clearV() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.int> get r => $_getN(11);
  @$pb.TagNumber(12)
  set r($core.List<$core.int> v) { $_setBytes(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasR() => $_has(11);
  @$pb.TagNumber(12)
  void clearR() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get s => $_getN(12);
  @$pb.TagNumber(13)
  set s($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasS() => $_has(12);
  @$pb.TagNumber(13)
  void clearS() => clearField(13);

  @$pb.TagNumber(14)
  $0.ProtoHash get originatingTxHash => $_getN(13);
  @$pb.TagNumber(14)
  set originatingTxHash($0.ProtoHash v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasOriginatingTxHash() => $_has(13);
  @$pb.TagNumber(14)
  void clearOriginatingTxHash() => clearField(14);
  @$pb.TagNumber(14)
  $0.ProtoHash ensureOriginatingTxHash() => $_ensure(13);

  @$pb.TagNumber(15)
  $core.int get etxIndex => $_getIZ(14);
  @$pb.TagNumber(15)
  set etxIndex($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasEtxIndex() => $_has(14);
  @$pb.TagNumber(15)
  void clearEtxIndex() => clearField(15);

  @$pb.TagNumber(16)
  ProtoTxIns get txIns => $_getN(15);
  @$pb.TagNumber(16)
  set txIns(ProtoTxIns v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasTxIns() => $_has(15);
  @$pb.TagNumber(16)
  void clearTxIns() => clearField(16);
  @$pb.TagNumber(16)
  ProtoTxIns ensureTxIns() => $_ensure(15);

  @$pb.TagNumber(17)
  ProtoTxOuts get txOuts => $_getN(16);
  @$pb.TagNumber(17)
  set txOuts(ProtoTxOuts v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasTxOuts() => $_has(16);
  @$pb.TagNumber(17)
  void clearTxOuts() => clearField(17);
  @$pb.TagNumber(17)
  ProtoTxOuts ensureTxOuts() => $_ensure(16);

  @$pb.TagNumber(18)
  $core.List<$core.int> get signature => $_getN(17);
  @$pb.TagNumber(18)
  set signature($core.List<$core.int> v) { $_setBytes(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasSignature() => $_has(17);
  @$pb.TagNumber(18)
  void clearSignature() => clearField(18);

  @$pb.TagNumber(19)
  $core.List<$core.int> get etxSender => $_getN(18);
  @$pb.TagNumber(19)
  set etxSender($core.List<$core.int> v) { $_setBytes(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasEtxSender() => $_has(18);
  @$pb.TagNumber(19)
  void clearEtxSender() => clearField(19);

  @$pb.TagNumber(20)
  $0.ProtoHash get parentHash => $_getN(19);
  @$pb.TagNumber(20)
  set parentHash($0.ProtoHash v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasParentHash() => $_has(19);
  @$pb.TagNumber(20)
  void clearParentHash() => clearField(20);
  @$pb.TagNumber(20)
  $0.ProtoHash ensureParentHash() => $_ensure(19);

  @$pb.TagNumber(21)
  $0.ProtoHash get mixHash => $_getN(20);
  @$pb.TagNumber(21)
  set mixHash($0.ProtoHash v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasMixHash() => $_has(20);
  @$pb.TagNumber(21)
  void clearMixHash() => clearField(21);
  @$pb.TagNumber(21)
  $0.ProtoHash ensureMixHash() => $_ensure(20);

  @$pb.TagNumber(22)
  $fixnum.Int64 get workNonce => $_getI64(21);
  @$pb.TagNumber(22)
  set workNonce($fixnum.Int64 v) { $_setInt64(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasWorkNonce() => $_has(21);
  @$pb.TagNumber(22)
  void clearWorkNonce() => clearField(22);

  @$pb.TagNumber(23)
  $fixnum.Int64 get etxType => $_getI64(22);
  @$pb.TagNumber(23)
  set etxType($fixnum.Int64 v) { $_setInt64(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasEtxType() => $_has(22);
  @$pb.TagNumber(23)
  void clearEtxType() => clearField(23);
}

class ProtoTransactions extends $pb.GeneratedMessage {
  factory ProtoTransactions({
    $core.Iterable<ProtoTransaction>? transactions,
  }) {
    final $result = create();
    if (transactions != null) {
      $result.transactions.addAll(transactions);
    }
    return $result;
  }
  ProtoTransactions._() : super();
  factory ProtoTransactions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoTransactions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoTransactions', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..pc<ProtoTransaction>(1, _omitFieldNames ? '' : 'transactions', $pb.PbFieldType.PM, subBuilder: ProtoTransaction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoTransactions clone() => ProtoTransactions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoTransactions copyWith(void Function(ProtoTransactions) updates) => super.copyWith((message) => updates(message as ProtoTransactions)) as ProtoTransactions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoTransactions create() => ProtoTransactions._();
  ProtoTransactions createEmptyInstance() => create();
  static $pb.PbList<ProtoTransactions> createRepeated() => $pb.PbList<ProtoTransactions>();
  @$core.pragma('dart2js:noInline')
  static ProtoTransactions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoTransactions>(create);
  static ProtoTransactions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProtoTransaction> get transactions => $_getList(0);
}

class ProtoHeaders extends $pb.GeneratedMessage {
  factory ProtoHeaders({
    $core.Iterable<ProtoHeader>? headers,
  }) {
    final $result = create();
    if (headers != null) {
      $result.headers.addAll(headers);
    }
    return $result;
  }
  ProtoHeaders._() : super();
  factory ProtoHeaders.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoHeaders.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoHeaders', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..pc<ProtoHeader>(1, _omitFieldNames ? '' : 'headers', $pb.PbFieldType.PM, subBuilder: ProtoHeader.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoHeaders clone() => ProtoHeaders()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoHeaders copyWith(void Function(ProtoHeaders) updates) => super.copyWith((message) => updates(message as ProtoHeaders)) as ProtoHeaders;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoHeaders create() => ProtoHeaders._();
  ProtoHeaders createEmptyInstance() => create();
  static $pb.PbList<ProtoHeaders> createRepeated() => $pb.PbList<ProtoHeaders>();
  @$core.pragma('dart2js:noInline')
  static ProtoHeaders getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoHeaders>(create);
  static ProtoHeaders? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProtoHeader> get headers => $_getList(0);
}

class ProtoManifest extends $pb.GeneratedMessage {
  factory ProtoManifest({
    $core.Iterable<$0.ProtoHash>? manifest,
  }) {
    final $result = create();
    if (manifest != null) {
      $result.manifest.addAll(manifest);
    }
    return $result;
  }
  ProtoManifest._() : super();
  factory ProtoManifest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoManifest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoManifest', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..pc<$0.ProtoHash>(1, _omitFieldNames ? '' : 'manifest', $pb.PbFieldType.PM, subBuilder: $0.ProtoHash.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoManifest clone() => ProtoManifest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoManifest copyWith(void Function(ProtoManifest) updates) => super.copyWith((message) => updates(message as ProtoManifest)) as ProtoManifest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoManifest create() => ProtoManifest._();
  ProtoManifest createEmptyInstance() => create();
  static $pb.PbList<ProtoManifest> createRepeated() => $pb.PbList<ProtoManifest>();
  @$core.pragma('dart2js:noInline')
  static ProtoManifest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoManifest>(create);
  static ProtoManifest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.ProtoHash> get manifest => $_getList(0);
}

class ProtoAccessList extends $pb.GeneratedMessage {
  factory ProtoAccessList({
    $core.Iterable<ProtoAccessTuple>? accessTuples,
  }) {
    final $result = create();
    if (accessTuples != null) {
      $result.accessTuples.addAll(accessTuples);
    }
    return $result;
  }
  ProtoAccessList._() : super();
  factory ProtoAccessList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoAccessList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoAccessList', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..pc<ProtoAccessTuple>(1, _omitFieldNames ? '' : 'accessTuples', $pb.PbFieldType.PM, subBuilder: ProtoAccessTuple.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoAccessList clone() => ProtoAccessList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoAccessList copyWith(void Function(ProtoAccessList) updates) => super.copyWith((message) => updates(message as ProtoAccessList)) as ProtoAccessList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoAccessList create() => ProtoAccessList._();
  ProtoAccessList createEmptyInstance() => create();
  static $pb.PbList<ProtoAccessList> createRepeated() => $pb.PbList<ProtoAccessList>();
  @$core.pragma('dart2js:noInline')
  static ProtoAccessList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoAccessList>(create);
  static ProtoAccessList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProtoAccessTuple> get accessTuples => $_getList(0);
}

class ProtoWorkObjectHeader extends $pb.GeneratedMessage {
  factory ProtoWorkObjectHeader({
    $0.ProtoHash? headerHash,
    $0.ProtoHash? parentHash,
    $core.List<$core.int>? number,
    $core.List<$core.int>? difficulty,
    $0.ProtoHash? txHash,
    $fixnum.Int64? nonce,
    $0.ProtoLocation? location,
    $0.ProtoHash? mixHash,
    $fixnum.Int64? time,
    $core.List<$core.int>? primeTerminusNumber,
    $core.int? lock,
    $0.ProtoAddress? primaryCoinbase,
  }) {
    final $result = create();
    if (headerHash != null) {
      $result.headerHash = headerHash;
    }
    if (parentHash != null) {
      $result.parentHash = parentHash;
    }
    if (number != null) {
      $result.number = number;
    }
    if (difficulty != null) {
      $result.difficulty = difficulty;
    }
    if (txHash != null) {
      $result.txHash = txHash;
    }
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (location != null) {
      $result.location = location;
    }
    if (mixHash != null) {
      $result.mixHash = mixHash;
    }
    if (time != null) {
      $result.time = time;
    }
    if (primeTerminusNumber != null) {
      $result.primeTerminusNumber = primeTerminusNumber;
    }
    if (lock != null) {
      $result.lock = lock;
    }
    if (primaryCoinbase != null) {
      $result.primaryCoinbase = primaryCoinbase;
    }
    return $result;
  }
  ProtoWorkObjectHeader._() : super();
  factory ProtoWorkObjectHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoWorkObjectHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoWorkObjectHeader', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..aOM<$0.ProtoHash>(1, _omitFieldNames ? '' : 'headerHash', subBuilder: $0.ProtoHash.create)
    ..aOM<$0.ProtoHash>(2, _omitFieldNames ? '' : 'parentHash', subBuilder: $0.ProtoHash.create)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'number', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'difficulty', $pb.PbFieldType.OY)
    ..aOM<$0.ProtoHash>(5, _omitFieldNames ? '' : 'txHash', subBuilder: $0.ProtoHash.create)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.ProtoLocation>(7, _omitFieldNames ? '' : 'location', subBuilder: $0.ProtoLocation.create)
    ..aOM<$0.ProtoHash>(8, _omitFieldNames ? '' : 'mixHash', subBuilder: $0.ProtoHash.create)
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'time', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(10, _omitFieldNames ? '' : 'primeTerminusNumber', $pb.PbFieldType.OY)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'lock', $pb.PbFieldType.OU3)
    ..aOM<$0.ProtoAddress>(12, _omitFieldNames ? '' : 'primaryCoinbase', subBuilder: $0.ProtoAddress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoWorkObjectHeader clone() => ProtoWorkObjectHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoWorkObjectHeader copyWith(void Function(ProtoWorkObjectHeader) updates) => super.copyWith((message) => updates(message as ProtoWorkObjectHeader)) as ProtoWorkObjectHeader;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjectHeader create() => ProtoWorkObjectHeader._();
  ProtoWorkObjectHeader createEmptyInstance() => create();
  static $pb.PbList<ProtoWorkObjectHeader> createRepeated() => $pb.PbList<ProtoWorkObjectHeader>();
  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjectHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoWorkObjectHeader>(create);
  static ProtoWorkObjectHeader? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ProtoHash get headerHash => $_getN(0);
  @$pb.TagNumber(1)
  set headerHash($0.ProtoHash v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeaderHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeaderHash() => clearField(1);
  @$pb.TagNumber(1)
  $0.ProtoHash ensureHeaderHash() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.ProtoHash get parentHash => $_getN(1);
  @$pb.TagNumber(2)
  set parentHash($0.ProtoHash v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParentHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentHash() => clearField(2);
  @$pb.TagNumber(2)
  $0.ProtoHash ensureParentHash() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get number => $_getN(2);
  @$pb.TagNumber(3)
  set number($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get difficulty => $_getN(3);
  @$pb.TagNumber(4)
  set difficulty($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDifficulty() => $_has(3);
  @$pb.TagNumber(4)
  void clearDifficulty() => clearField(4);

  @$pb.TagNumber(5)
  $0.ProtoHash get txHash => $_getN(4);
  @$pb.TagNumber(5)
  set txHash($0.ProtoHash v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTxHash() => $_has(4);
  @$pb.TagNumber(5)
  void clearTxHash() => clearField(5);
  @$pb.TagNumber(5)
  $0.ProtoHash ensureTxHash() => $_ensure(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get nonce => $_getI64(5);
  @$pb.TagNumber(6)
  set nonce($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNonce() => $_has(5);
  @$pb.TagNumber(6)
  void clearNonce() => clearField(6);

  @$pb.TagNumber(7)
  $0.ProtoLocation get location => $_getN(6);
  @$pb.TagNumber(7)
  set location($0.ProtoLocation v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasLocation() => $_has(6);
  @$pb.TagNumber(7)
  void clearLocation() => clearField(7);
  @$pb.TagNumber(7)
  $0.ProtoLocation ensureLocation() => $_ensure(6);

  @$pb.TagNumber(8)
  $0.ProtoHash get mixHash => $_getN(7);
  @$pb.TagNumber(8)
  set mixHash($0.ProtoHash v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasMixHash() => $_has(7);
  @$pb.TagNumber(8)
  void clearMixHash() => clearField(8);
  @$pb.TagNumber(8)
  $0.ProtoHash ensureMixHash() => $_ensure(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get time => $_getI64(8);
  @$pb.TagNumber(9)
  set time($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearTime() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get primeTerminusNumber => $_getN(9);
  @$pb.TagNumber(10)
  set primeTerminusNumber($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPrimeTerminusNumber() => $_has(9);
  @$pb.TagNumber(10)
  void clearPrimeTerminusNumber() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get lock => $_getIZ(10);
  @$pb.TagNumber(11)
  set lock($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLock() => $_has(10);
  @$pb.TagNumber(11)
  void clearLock() => clearField(11);

  @$pb.TagNumber(12)
  $0.ProtoAddress get primaryCoinbase => $_getN(11);
  @$pb.TagNumber(12)
  set primaryCoinbase($0.ProtoAddress v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasPrimaryCoinbase() => $_has(11);
  @$pb.TagNumber(12)
  void clearPrimaryCoinbase() => clearField(12);
  @$pb.TagNumber(12)
  $0.ProtoAddress ensurePrimaryCoinbase() => $_ensure(11);
}

class ProtoWorkObjectHeaders extends $pb.GeneratedMessage {
  factory ProtoWorkObjectHeaders({
    $core.Iterable<ProtoWorkObjectHeader>? woHeaders,
  }) {
    final $result = create();
    if (woHeaders != null) {
      $result.woHeaders.addAll(woHeaders);
    }
    return $result;
  }
  ProtoWorkObjectHeaders._() : super();
  factory ProtoWorkObjectHeaders.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoWorkObjectHeaders.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoWorkObjectHeaders', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..pc<ProtoWorkObjectHeader>(1, _omitFieldNames ? '' : 'woHeaders', $pb.PbFieldType.PM, subBuilder: ProtoWorkObjectHeader.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoWorkObjectHeaders clone() => ProtoWorkObjectHeaders()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoWorkObjectHeaders copyWith(void Function(ProtoWorkObjectHeaders) updates) => super.copyWith((message) => updates(message as ProtoWorkObjectHeaders)) as ProtoWorkObjectHeaders;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjectHeaders create() => ProtoWorkObjectHeaders._();
  ProtoWorkObjectHeaders createEmptyInstance() => create();
  static $pb.PbList<ProtoWorkObjectHeaders> createRepeated() => $pb.PbList<ProtoWorkObjectHeaders>();
  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjectHeaders getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoWorkObjectHeaders>(create);
  static ProtoWorkObjectHeaders? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProtoWorkObjectHeader> get woHeaders => $_getList(0);
}

class ProtoWorkObjectBody extends $pb.GeneratedMessage {
  factory ProtoWorkObjectBody({
    ProtoHeader? header,
    ProtoTransactions? transactions,
    ProtoWorkObjectHeaders? uncles,
    ProtoTransactions? outboundEtxs,
    ProtoManifest? manifest,
    $0.ProtoHashes? interlinkHashes,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (transactions != null) {
      $result.transactions = transactions;
    }
    if (uncles != null) {
      $result.uncles = uncles;
    }
    if (outboundEtxs != null) {
      $result.outboundEtxs = outboundEtxs;
    }
    if (manifest != null) {
      $result.manifest = manifest;
    }
    if (interlinkHashes != null) {
      $result.interlinkHashes = interlinkHashes;
    }
    return $result;
  }
  ProtoWorkObjectBody._() : super();
  factory ProtoWorkObjectBody.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoWorkObjectBody.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoWorkObjectBody', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..aOM<ProtoHeader>(1, _omitFieldNames ? '' : 'header', subBuilder: ProtoHeader.create)
    ..aOM<ProtoTransactions>(2, _omitFieldNames ? '' : 'transactions', subBuilder: ProtoTransactions.create)
    ..aOM<ProtoWorkObjectHeaders>(3, _omitFieldNames ? '' : 'uncles', subBuilder: ProtoWorkObjectHeaders.create)
    ..aOM<ProtoTransactions>(4, _omitFieldNames ? '' : 'outboundEtxs', subBuilder: ProtoTransactions.create)
    ..aOM<ProtoManifest>(5, _omitFieldNames ? '' : 'manifest', subBuilder: ProtoManifest.create)
    ..aOM<$0.ProtoHashes>(6, _omitFieldNames ? '' : 'interlinkHashes', subBuilder: $0.ProtoHashes.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoWorkObjectBody clone() => ProtoWorkObjectBody()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoWorkObjectBody copyWith(void Function(ProtoWorkObjectBody) updates) => super.copyWith((message) => updates(message as ProtoWorkObjectBody)) as ProtoWorkObjectBody;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjectBody create() => ProtoWorkObjectBody._();
  ProtoWorkObjectBody createEmptyInstance() => create();
  static $pb.PbList<ProtoWorkObjectBody> createRepeated() => $pb.PbList<ProtoWorkObjectBody>();
  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjectBody getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoWorkObjectBody>(create);
  static ProtoWorkObjectBody? _defaultInstance;

  @$pb.TagNumber(1)
  ProtoHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ProtoHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ProtoHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  ProtoTransactions get transactions => $_getN(1);
  @$pb.TagNumber(2)
  set transactions(ProtoTransactions v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransactions() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactions() => clearField(2);
  @$pb.TagNumber(2)
  ProtoTransactions ensureTransactions() => $_ensure(1);

  @$pb.TagNumber(3)
  ProtoWorkObjectHeaders get uncles => $_getN(2);
  @$pb.TagNumber(3)
  set uncles(ProtoWorkObjectHeaders v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUncles() => $_has(2);
  @$pb.TagNumber(3)
  void clearUncles() => clearField(3);
  @$pb.TagNumber(3)
  ProtoWorkObjectHeaders ensureUncles() => $_ensure(2);

  @$pb.TagNumber(4)
  ProtoTransactions get outboundEtxs => $_getN(3);
  @$pb.TagNumber(4)
  set outboundEtxs(ProtoTransactions v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOutboundEtxs() => $_has(3);
  @$pb.TagNumber(4)
  void clearOutboundEtxs() => clearField(4);
  @$pb.TagNumber(4)
  ProtoTransactions ensureOutboundEtxs() => $_ensure(3);

  @$pb.TagNumber(5)
  ProtoManifest get manifest => $_getN(4);
  @$pb.TagNumber(5)
  set manifest(ProtoManifest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasManifest() => $_has(4);
  @$pb.TagNumber(5)
  void clearManifest() => clearField(5);
  @$pb.TagNumber(5)
  ProtoManifest ensureManifest() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.ProtoHashes get interlinkHashes => $_getN(5);
  @$pb.TagNumber(6)
  set interlinkHashes($0.ProtoHashes v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasInterlinkHashes() => $_has(5);
  @$pb.TagNumber(6)
  void clearInterlinkHashes() => clearField(6);
  @$pb.TagNumber(6)
  $0.ProtoHashes ensureInterlinkHashes() => $_ensure(5);
}

class ProtoWorkObject extends $pb.GeneratedMessage {
  factory ProtoWorkObject({
    ProtoWorkObjectHeader? woHeader,
    ProtoWorkObjectBody? woBody,
    ProtoTransaction? tx,
  }) {
    final $result = create();
    if (woHeader != null) {
      $result.woHeader = woHeader;
    }
    if (woBody != null) {
      $result.woBody = woBody;
    }
    if (tx != null) {
      $result.tx = tx;
    }
    return $result;
  }
  ProtoWorkObject._() : super();
  factory ProtoWorkObject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoWorkObject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoWorkObject', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..aOM<ProtoWorkObjectHeader>(1, _omitFieldNames ? '' : 'woHeader', subBuilder: ProtoWorkObjectHeader.create)
    ..aOM<ProtoWorkObjectBody>(2, _omitFieldNames ? '' : 'woBody', subBuilder: ProtoWorkObjectBody.create)
    ..aOM<ProtoTransaction>(3, _omitFieldNames ? '' : 'tx', subBuilder: ProtoTransaction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoWorkObject clone() => ProtoWorkObject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoWorkObject copyWith(void Function(ProtoWorkObject) updates) => super.copyWith((message) => updates(message as ProtoWorkObject)) as ProtoWorkObject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoWorkObject create() => ProtoWorkObject._();
  ProtoWorkObject createEmptyInstance() => create();
  static $pb.PbList<ProtoWorkObject> createRepeated() => $pb.PbList<ProtoWorkObject>();
  @$core.pragma('dart2js:noInline')
  static ProtoWorkObject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoWorkObject>(create);
  static ProtoWorkObject? _defaultInstance;

  @$pb.TagNumber(1)
  ProtoWorkObjectHeader get woHeader => $_getN(0);
  @$pb.TagNumber(1)
  set woHeader(ProtoWorkObjectHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWoHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearWoHeader() => clearField(1);
  @$pb.TagNumber(1)
  ProtoWorkObjectHeader ensureWoHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  ProtoWorkObjectBody get woBody => $_getN(1);
  @$pb.TagNumber(2)
  set woBody(ProtoWorkObjectBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasWoBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearWoBody() => clearField(2);
  @$pb.TagNumber(2)
  ProtoWorkObjectBody ensureWoBody() => $_ensure(1);

  @$pb.TagNumber(3)
  ProtoTransaction get tx => $_getN(2);
  @$pb.TagNumber(3)
  set tx(ProtoTransaction v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTx() => $_has(2);
  @$pb.TagNumber(3)
  void clearTx() => clearField(3);
  @$pb.TagNumber(3)
  ProtoTransaction ensureTx() => $_ensure(2);
}

class ProtoWorkObjects extends $pb.GeneratedMessage {
  factory ProtoWorkObjects({
    $core.Iterable<ProtoWorkObject>? workObjects,
  }) {
    final $result = create();
    if (workObjects != null) {
      $result.workObjects.addAll(workObjects);
    }
    return $result;
  }
  ProtoWorkObjects._() : super();
  factory ProtoWorkObjects.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoWorkObjects.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoWorkObjects', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..pc<ProtoWorkObject>(1, _omitFieldNames ? '' : 'workObjects', $pb.PbFieldType.PM, subBuilder: ProtoWorkObject.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoWorkObjects clone() => ProtoWorkObjects()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoWorkObjects copyWith(void Function(ProtoWorkObjects) updates) => super.copyWith((message) => updates(message as ProtoWorkObjects)) as ProtoWorkObjects;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjects create() => ProtoWorkObjects._();
  ProtoWorkObjects createEmptyInstance() => create();
  static $pb.PbList<ProtoWorkObjects> createRepeated() => $pb.PbList<ProtoWorkObjects>();
  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjects getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoWorkObjects>(create);
  static ProtoWorkObjects? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProtoWorkObject> get workObjects => $_getList(0);
}

class ProtoWorkObjectBlockView extends $pb.GeneratedMessage {
  factory ProtoWorkObjectBlockView({
    ProtoWorkObject? workObject,
  }) {
    final $result = create();
    if (workObject != null) {
      $result.workObject = workObject;
    }
    return $result;
  }
  ProtoWorkObjectBlockView._() : super();
  factory ProtoWorkObjectBlockView.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoWorkObjectBlockView.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoWorkObjectBlockView', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..aOM<ProtoWorkObject>(1, _omitFieldNames ? '' : 'workObject', subBuilder: ProtoWorkObject.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoWorkObjectBlockView clone() => ProtoWorkObjectBlockView()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoWorkObjectBlockView copyWith(void Function(ProtoWorkObjectBlockView) updates) => super.copyWith((message) => updates(message as ProtoWorkObjectBlockView)) as ProtoWorkObjectBlockView;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjectBlockView create() => ProtoWorkObjectBlockView._();
  ProtoWorkObjectBlockView createEmptyInstance() => create();
  static $pb.PbList<ProtoWorkObjectBlockView> createRepeated() => $pb.PbList<ProtoWorkObjectBlockView>();
  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjectBlockView getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoWorkObjectBlockView>(create);
  static ProtoWorkObjectBlockView? _defaultInstance;

  @$pb.TagNumber(1)
  ProtoWorkObject get workObject => $_getN(0);
  @$pb.TagNumber(1)
  set workObject(ProtoWorkObject v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWorkObject() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkObject() => clearField(1);
  @$pb.TagNumber(1)
  ProtoWorkObject ensureWorkObject() => $_ensure(0);
}

class ProtoWorkObjectBlocksView extends $pb.GeneratedMessage {
  factory ProtoWorkObjectBlocksView({
    $core.Iterable<ProtoWorkObjectBlockView>? workObjects,
  }) {
    final $result = create();
    if (workObjects != null) {
      $result.workObjects.addAll(workObjects);
    }
    return $result;
  }
  ProtoWorkObjectBlocksView._() : super();
  factory ProtoWorkObjectBlocksView.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoWorkObjectBlocksView.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoWorkObjectBlocksView', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..pc<ProtoWorkObjectBlockView>(1, _omitFieldNames ? '' : 'workObjects', $pb.PbFieldType.PM, subBuilder: ProtoWorkObjectBlockView.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoWorkObjectBlocksView clone() => ProtoWorkObjectBlocksView()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoWorkObjectBlocksView copyWith(void Function(ProtoWorkObjectBlocksView) updates) => super.copyWith((message) => updates(message as ProtoWorkObjectBlocksView)) as ProtoWorkObjectBlocksView;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjectBlocksView create() => ProtoWorkObjectBlocksView._();
  ProtoWorkObjectBlocksView createEmptyInstance() => create();
  static $pb.PbList<ProtoWorkObjectBlocksView> createRepeated() => $pb.PbList<ProtoWorkObjectBlocksView>();
  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjectBlocksView getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoWorkObjectBlocksView>(create);
  static ProtoWorkObjectBlocksView? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProtoWorkObjectBlockView> get workObjects => $_getList(0);
}

class ProtoWorkObjectHeaderView extends $pb.GeneratedMessage {
  factory ProtoWorkObjectHeaderView({
    ProtoWorkObject? workObject,
  }) {
    final $result = create();
    if (workObject != null) {
      $result.workObject = workObject;
    }
    return $result;
  }
  ProtoWorkObjectHeaderView._() : super();
  factory ProtoWorkObjectHeaderView.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoWorkObjectHeaderView.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoWorkObjectHeaderView', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..aOM<ProtoWorkObject>(1, _omitFieldNames ? '' : 'workObject', subBuilder: ProtoWorkObject.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoWorkObjectHeaderView clone() => ProtoWorkObjectHeaderView()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoWorkObjectHeaderView copyWith(void Function(ProtoWorkObjectHeaderView) updates) => super.copyWith((message) => updates(message as ProtoWorkObjectHeaderView)) as ProtoWorkObjectHeaderView;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjectHeaderView create() => ProtoWorkObjectHeaderView._();
  ProtoWorkObjectHeaderView createEmptyInstance() => create();
  static $pb.PbList<ProtoWorkObjectHeaderView> createRepeated() => $pb.PbList<ProtoWorkObjectHeaderView>();
  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjectHeaderView getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoWorkObjectHeaderView>(create);
  static ProtoWorkObjectHeaderView? _defaultInstance;

  @$pb.TagNumber(1)
  ProtoWorkObject get workObject => $_getN(0);
  @$pb.TagNumber(1)
  set workObject(ProtoWorkObject v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWorkObject() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkObject() => clearField(1);
  @$pb.TagNumber(1)
  ProtoWorkObject ensureWorkObject() => $_ensure(0);
}

class ProtoWorkObjectShareView extends $pb.GeneratedMessage {
  factory ProtoWorkObjectShareView({
    ProtoWorkObject? workObject,
  }) {
    final $result = create();
    if (workObject != null) {
      $result.workObject = workObject;
    }
    return $result;
  }
  ProtoWorkObjectShareView._() : super();
  factory ProtoWorkObjectShareView.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoWorkObjectShareView.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoWorkObjectShareView', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..aOM<ProtoWorkObject>(1, _omitFieldNames ? '' : 'workObject', subBuilder: ProtoWorkObject.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoWorkObjectShareView clone() => ProtoWorkObjectShareView()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoWorkObjectShareView copyWith(void Function(ProtoWorkObjectShareView) updates) => super.copyWith((message) => updates(message as ProtoWorkObjectShareView)) as ProtoWorkObjectShareView;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjectShareView create() => ProtoWorkObjectShareView._();
  ProtoWorkObjectShareView createEmptyInstance() => create();
  static $pb.PbList<ProtoWorkObjectShareView> createRepeated() => $pb.PbList<ProtoWorkObjectShareView>();
  @$core.pragma('dart2js:noInline')
  static ProtoWorkObjectShareView getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoWorkObjectShareView>(create);
  static ProtoWorkObjectShareView? _defaultInstance;

  @$pb.TagNumber(1)
  ProtoWorkObject get workObject => $_getN(0);
  @$pb.TagNumber(1)
  set workObject(ProtoWorkObject v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWorkObject() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkObject() => clearField(1);
  @$pb.TagNumber(1)
  ProtoWorkObject ensureWorkObject() => $_ensure(0);
}

class ProtoAccessTuple extends $pb.GeneratedMessage {
  factory ProtoAccessTuple({
    $core.List<$core.int>? address,
    $core.Iterable<$0.ProtoHash>? storageKey,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (storageKey != null) {
      $result.storageKey.addAll(storageKey);
    }
    return $result;
  }
  ProtoAccessTuple._() : super();
  factory ProtoAccessTuple.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoAccessTuple.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoAccessTuple', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'address', $pb.PbFieldType.OY)
    ..pc<$0.ProtoHash>(2, _omitFieldNames ? '' : 'storageKey', $pb.PbFieldType.PM, subBuilder: $0.ProtoHash.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoAccessTuple clone() => ProtoAccessTuple()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoAccessTuple copyWith(void Function(ProtoAccessTuple) updates) => super.copyWith((message) => updates(message as ProtoAccessTuple)) as ProtoAccessTuple;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoAccessTuple create() => ProtoAccessTuple._();
  ProtoAccessTuple createEmptyInstance() => create();
  static $pb.PbList<ProtoAccessTuple> createRepeated() => $pb.PbList<ProtoAccessTuple>();
  @$core.pragma('dart2js:noInline')
  static ProtoAccessTuple getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoAccessTuple>(create);
  static ProtoAccessTuple? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$0.ProtoHash> get storageKey => $_getList(1);
}

class ProtoReceiptForStorage extends $pb.GeneratedMessage {
  factory ProtoReceiptForStorage({
    $core.List<$core.int>? postStateOrStatus,
    $fixnum.Int64? cumulativeGasUsed,
    ProtoLogsForStorage? logs,
    $0.ProtoHash? txHash,
    $0.ProtoAddress? contractAddress,
    $fixnum.Int64? gasUsed,
    ProtoTransactions? outboundEtxs,
  }) {
    final $result = create();
    if (postStateOrStatus != null) {
      $result.postStateOrStatus = postStateOrStatus;
    }
    if (cumulativeGasUsed != null) {
      $result.cumulativeGasUsed = cumulativeGasUsed;
    }
    if (logs != null) {
      $result.logs = logs;
    }
    if (txHash != null) {
      $result.txHash = txHash;
    }
    if (contractAddress != null) {
      $result.contractAddress = contractAddress;
    }
    if (gasUsed != null) {
      $result.gasUsed = gasUsed;
    }
    if (outboundEtxs != null) {
      $result.outboundEtxs = outboundEtxs;
    }
    return $result;
  }
  ProtoReceiptForStorage._() : super();
  factory ProtoReceiptForStorage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoReceiptForStorage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoReceiptForStorage', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'postStateOrStatus', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'cumulativeGasUsed', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<ProtoLogsForStorage>(3, _omitFieldNames ? '' : 'logs', subBuilder: ProtoLogsForStorage.create)
    ..aOM<$0.ProtoHash>(4, _omitFieldNames ? '' : 'txHash', subBuilder: $0.ProtoHash.create)
    ..aOM<$0.ProtoAddress>(5, _omitFieldNames ? '' : 'contractAddress', subBuilder: $0.ProtoAddress.create)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'gasUsed', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<ProtoTransactions>(7, _omitFieldNames ? '' : 'outboundEtxs', subBuilder: ProtoTransactions.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoReceiptForStorage clone() => ProtoReceiptForStorage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoReceiptForStorage copyWith(void Function(ProtoReceiptForStorage) updates) => super.copyWith((message) => updates(message as ProtoReceiptForStorage)) as ProtoReceiptForStorage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoReceiptForStorage create() => ProtoReceiptForStorage._();
  ProtoReceiptForStorage createEmptyInstance() => create();
  static $pb.PbList<ProtoReceiptForStorage> createRepeated() => $pb.PbList<ProtoReceiptForStorage>();
  @$core.pragma('dart2js:noInline')
  static ProtoReceiptForStorage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoReceiptForStorage>(create);
  static ProtoReceiptForStorage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get postStateOrStatus => $_getN(0);
  @$pb.TagNumber(1)
  set postStateOrStatus($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPostStateOrStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostStateOrStatus() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get cumulativeGasUsed => $_getI64(1);
  @$pb.TagNumber(2)
  set cumulativeGasUsed($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCumulativeGasUsed() => $_has(1);
  @$pb.TagNumber(2)
  void clearCumulativeGasUsed() => clearField(2);

  @$pb.TagNumber(3)
  ProtoLogsForStorage get logs => $_getN(2);
  @$pb.TagNumber(3)
  set logs(ProtoLogsForStorage v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLogs() => $_has(2);
  @$pb.TagNumber(3)
  void clearLogs() => clearField(3);
  @$pb.TagNumber(3)
  ProtoLogsForStorage ensureLogs() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.ProtoHash get txHash => $_getN(3);
  @$pb.TagNumber(4)
  set txHash($0.ProtoHash v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTxHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearTxHash() => clearField(4);
  @$pb.TagNumber(4)
  $0.ProtoHash ensureTxHash() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.ProtoAddress get contractAddress => $_getN(4);
  @$pb.TagNumber(5)
  set contractAddress($0.ProtoAddress v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasContractAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearContractAddress() => clearField(5);
  @$pb.TagNumber(5)
  $0.ProtoAddress ensureContractAddress() => $_ensure(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get gasUsed => $_getI64(5);
  @$pb.TagNumber(6)
  set gasUsed($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGasUsed() => $_has(5);
  @$pb.TagNumber(6)
  void clearGasUsed() => clearField(6);

  @$pb.TagNumber(7)
  ProtoTransactions get outboundEtxs => $_getN(6);
  @$pb.TagNumber(7)
  set outboundEtxs(ProtoTransactions v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasOutboundEtxs() => $_has(6);
  @$pb.TagNumber(7)
  void clearOutboundEtxs() => clearField(7);
  @$pb.TagNumber(7)
  ProtoTransactions ensureOutboundEtxs() => $_ensure(6);
}

class ProtoReceiptsForStorage extends $pb.GeneratedMessage {
  factory ProtoReceiptsForStorage({
    $core.Iterable<ProtoReceiptForStorage>? receipts,
  }) {
    final $result = create();
    if (receipts != null) {
      $result.receipts.addAll(receipts);
    }
    return $result;
  }
  ProtoReceiptsForStorage._() : super();
  factory ProtoReceiptsForStorage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoReceiptsForStorage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoReceiptsForStorage', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..pc<ProtoReceiptForStorage>(1, _omitFieldNames ? '' : 'receipts', $pb.PbFieldType.PM, subBuilder: ProtoReceiptForStorage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoReceiptsForStorage clone() => ProtoReceiptsForStorage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoReceiptsForStorage copyWith(void Function(ProtoReceiptsForStorage) updates) => super.copyWith((message) => updates(message as ProtoReceiptsForStorage)) as ProtoReceiptsForStorage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoReceiptsForStorage create() => ProtoReceiptsForStorage._();
  ProtoReceiptsForStorage createEmptyInstance() => create();
  static $pb.PbList<ProtoReceiptsForStorage> createRepeated() => $pb.PbList<ProtoReceiptsForStorage>();
  @$core.pragma('dart2js:noInline')
  static ProtoReceiptsForStorage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoReceiptsForStorage>(create);
  static ProtoReceiptsForStorage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProtoReceiptForStorage> get receipts => $_getList(0);
}

class ProtoLogForStorage extends $pb.GeneratedMessage {
  factory ProtoLogForStorage({
    $0.ProtoAddress? address,
    $core.Iterable<$0.ProtoHash>? topics,
    $core.List<$core.int>? data,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (topics != null) {
      $result.topics.addAll(topics);
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  ProtoLogForStorage._() : super();
  factory ProtoLogForStorage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoLogForStorage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoLogForStorage', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..aOM<$0.ProtoAddress>(1, _omitFieldNames ? '' : 'address', subBuilder: $0.ProtoAddress.create)
    ..pc<$0.ProtoHash>(2, _omitFieldNames ? '' : 'topics', $pb.PbFieldType.PM, subBuilder: $0.ProtoHash.create)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoLogForStorage clone() => ProtoLogForStorage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoLogForStorage copyWith(void Function(ProtoLogForStorage) updates) => super.copyWith((message) => updates(message as ProtoLogForStorage)) as ProtoLogForStorage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoLogForStorage create() => ProtoLogForStorage._();
  ProtoLogForStorage createEmptyInstance() => create();
  static $pb.PbList<ProtoLogForStorage> createRepeated() => $pb.PbList<ProtoLogForStorage>();
  @$core.pragma('dart2js:noInline')
  static ProtoLogForStorage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoLogForStorage>(create);
  static ProtoLogForStorage? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ProtoAddress get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($0.ProtoAddress v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
  @$pb.TagNumber(1)
  $0.ProtoAddress ensureAddress() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$0.ProtoHash> get topics => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
}

class ProtoLogsForStorage extends $pb.GeneratedMessage {
  factory ProtoLogsForStorage({
    $core.Iterable<ProtoLogForStorage>? logs,
  }) {
    final $result = create();
    if (logs != null) {
      $result.logs.addAll(logs);
    }
    return $result;
  }
  ProtoLogsForStorage._() : super();
  factory ProtoLogsForStorage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoLogsForStorage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoLogsForStorage', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..pc<ProtoLogForStorage>(1, _omitFieldNames ? '' : 'logs', $pb.PbFieldType.PM, subBuilder: ProtoLogForStorage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoLogsForStorage clone() => ProtoLogsForStorage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoLogsForStorage copyWith(void Function(ProtoLogsForStorage) updates) => super.copyWith((message) => updates(message as ProtoLogsForStorage)) as ProtoLogsForStorage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoLogsForStorage create() => ProtoLogsForStorage._();
  ProtoLogsForStorage createEmptyInstance() => create();
  static $pb.PbList<ProtoLogsForStorage> createRepeated() => $pb.PbList<ProtoLogsForStorage>();
  @$core.pragma('dart2js:noInline')
  static ProtoLogsForStorage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoLogsForStorage>(create);
  static ProtoLogsForStorage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProtoLogForStorage> get logs => $_getList(0);
}

class ProtoPendingHeader extends $pb.GeneratedMessage {
  factory ProtoPendingHeader({
    ProtoWorkObject? wo,
    ProtoTermini? termini,
  }) {
    final $result = create();
    if (wo != null) {
      $result.wo = wo;
    }
    if (termini != null) {
      $result.termini = termini;
    }
    return $result;
  }
  ProtoPendingHeader._() : super();
  factory ProtoPendingHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoPendingHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoPendingHeader', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..aOM<ProtoWorkObject>(1, _omitFieldNames ? '' : 'wo', subBuilder: ProtoWorkObject.create)
    ..aOM<ProtoTermini>(2, _omitFieldNames ? '' : 'termini', subBuilder: ProtoTermini.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoPendingHeader clone() => ProtoPendingHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoPendingHeader copyWith(void Function(ProtoPendingHeader) updates) => super.copyWith((message) => updates(message as ProtoPendingHeader)) as ProtoPendingHeader;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoPendingHeader create() => ProtoPendingHeader._();
  ProtoPendingHeader createEmptyInstance() => create();
  static $pb.PbList<ProtoPendingHeader> createRepeated() => $pb.PbList<ProtoPendingHeader>();
  @$core.pragma('dart2js:noInline')
  static ProtoPendingHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoPendingHeader>(create);
  static ProtoPendingHeader? _defaultInstance;

  @$pb.TagNumber(1)
  ProtoWorkObject get wo => $_getN(0);
  @$pb.TagNumber(1)
  set wo(ProtoWorkObject v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWo() => $_has(0);
  @$pb.TagNumber(1)
  void clearWo() => clearField(1);
  @$pb.TagNumber(1)
  ProtoWorkObject ensureWo() => $_ensure(0);

  @$pb.TagNumber(2)
  ProtoTermini get termini => $_getN(1);
  @$pb.TagNumber(2)
  set termini(ProtoTermini v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTermini() => $_has(1);
  @$pb.TagNumber(2)
  void clearTermini() => clearField(2);
  @$pb.TagNumber(2)
  ProtoTermini ensureTermini() => $_ensure(1);
}

class ProtoTermini extends $pb.GeneratedMessage {
  factory ProtoTermini({
    $core.Iterable<$0.ProtoHash>? domTermini,
    $core.Iterable<$0.ProtoHash>? subTermini,
  }) {
    final $result = create();
    if (domTermini != null) {
      $result.domTermini.addAll(domTermini);
    }
    if (subTermini != null) {
      $result.subTermini.addAll(subTermini);
    }
    return $result;
  }
  ProtoTermini._() : super();
  factory ProtoTermini.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoTermini.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoTermini', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..pc<$0.ProtoHash>(1, _omitFieldNames ? '' : 'domTermini', $pb.PbFieldType.PM, subBuilder: $0.ProtoHash.create)
    ..pc<$0.ProtoHash>(2, _omitFieldNames ? '' : 'subTermini', $pb.PbFieldType.PM, subBuilder: $0.ProtoHash.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoTermini clone() => ProtoTermini()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoTermini copyWith(void Function(ProtoTermini) updates) => super.copyWith((message) => updates(message as ProtoTermini)) as ProtoTermini;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoTermini create() => ProtoTermini._();
  ProtoTermini createEmptyInstance() => create();
  static $pb.PbList<ProtoTermini> createRepeated() => $pb.PbList<ProtoTermini>();
  @$core.pragma('dart2js:noInline')
  static ProtoTermini getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoTermini>(create);
  static ProtoTermini? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.ProtoHash> get domTermini => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$0.ProtoHash> get subTermini => $_getList(1);
}

class ProtoEtxSet extends $pb.GeneratedMessage {
  factory ProtoEtxSet({
    $core.List<$core.int>? etxHashes,
  }) {
    final $result = create();
    if (etxHashes != null) {
      $result.etxHashes = etxHashes;
    }
    return $result;
  }
  ProtoEtxSet._() : super();
  factory ProtoEtxSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoEtxSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoEtxSet', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'etxHashes', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoEtxSet clone() => ProtoEtxSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoEtxSet copyWith(void Function(ProtoEtxSet) updates) => super.copyWith((message) => updates(message as ProtoEtxSet)) as ProtoEtxSet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoEtxSet create() => ProtoEtxSet._();
  ProtoEtxSet createEmptyInstance() => create();
  static $pb.PbList<ProtoEtxSet> createRepeated() => $pb.PbList<ProtoEtxSet>();
  @$core.pragma('dart2js:noInline')
  static ProtoEtxSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoEtxSet>(create);
  static ProtoEtxSet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get etxHashes => $_getN(0);
  @$pb.TagNumber(1)
  set etxHashes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEtxHashes() => $_has(0);
  @$pb.TagNumber(1)
  void clearEtxHashes() => clearField(1);
}

class ProtoPendingEtxs extends $pb.GeneratedMessage {
  factory ProtoPendingEtxs({
    ProtoWorkObject? header,
    ProtoTransactions? outboundEtxs,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (outboundEtxs != null) {
      $result.outboundEtxs = outboundEtxs;
    }
    return $result;
  }
  ProtoPendingEtxs._() : super();
  factory ProtoPendingEtxs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoPendingEtxs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoPendingEtxs', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..aOM<ProtoWorkObject>(1, _omitFieldNames ? '' : 'header', subBuilder: ProtoWorkObject.create)
    ..aOM<ProtoTransactions>(2, _omitFieldNames ? '' : 'outboundEtxs', subBuilder: ProtoTransactions.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoPendingEtxs clone() => ProtoPendingEtxs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoPendingEtxs copyWith(void Function(ProtoPendingEtxs) updates) => super.copyWith((message) => updates(message as ProtoPendingEtxs)) as ProtoPendingEtxs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoPendingEtxs create() => ProtoPendingEtxs._();
  ProtoPendingEtxs createEmptyInstance() => create();
  static $pb.PbList<ProtoPendingEtxs> createRepeated() => $pb.PbList<ProtoPendingEtxs>();
  @$core.pragma('dart2js:noInline')
  static ProtoPendingEtxs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoPendingEtxs>(create);
  static ProtoPendingEtxs? _defaultInstance;

  @$pb.TagNumber(1)
  ProtoWorkObject get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ProtoWorkObject v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ProtoWorkObject ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  ProtoTransactions get outboundEtxs => $_getN(1);
  @$pb.TagNumber(2)
  set outboundEtxs(ProtoTransactions v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOutboundEtxs() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutboundEtxs() => clearField(2);
  @$pb.TagNumber(2)
  ProtoTransactions ensureOutboundEtxs() => $_ensure(1);
}

class ProtoPendingEtxsRollup extends $pb.GeneratedMessage {
  factory ProtoPendingEtxsRollup({
    ProtoWorkObject? header,
    ProtoTransactions? etxsRollup,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (etxsRollup != null) {
      $result.etxsRollup = etxsRollup;
    }
    return $result;
  }
  ProtoPendingEtxsRollup._() : super();
  factory ProtoPendingEtxsRollup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoPendingEtxsRollup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoPendingEtxsRollup', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..aOM<ProtoWorkObject>(1, _omitFieldNames ? '' : 'header', subBuilder: ProtoWorkObject.create)
    ..aOM<ProtoTransactions>(2, _omitFieldNames ? '' : 'etxsRollup', subBuilder: ProtoTransactions.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoPendingEtxsRollup clone() => ProtoPendingEtxsRollup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoPendingEtxsRollup copyWith(void Function(ProtoPendingEtxsRollup) updates) => super.copyWith((message) => updates(message as ProtoPendingEtxsRollup)) as ProtoPendingEtxsRollup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoPendingEtxsRollup create() => ProtoPendingEtxsRollup._();
  ProtoPendingEtxsRollup createEmptyInstance() => create();
  static $pb.PbList<ProtoPendingEtxsRollup> createRepeated() => $pb.PbList<ProtoPendingEtxsRollup>();
  @$core.pragma('dart2js:noInline')
  static ProtoPendingEtxsRollup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoPendingEtxsRollup>(create);
  static ProtoPendingEtxsRollup? _defaultInstance;

  @$pb.TagNumber(1)
  ProtoWorkObject get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ProtoWorkObject v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ProtoWorkObject ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  ProtoTransactions get etxsRollup => $_getN(1);
  @$pb.TagNumber(2)
  set etxsRollup(ProtoTransactions v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEtxsRollup() => $_has(1);
  @$pb.TagNumber(2)
  void clearEtxsRollup() => clearField(2);
  @$pb.TagNumber(2)
  ProtoTransactions ensureEtxsRollup() => $_ensure(1);
}

class ProtoTxIns extends $pb.GeneratedMessage {
  factory ProtoTxIns({
    $core.Iterable<ProtoTxIn>? txIns,
  }) {
    final $result = create();
    if (txIns != null) {
      $result.txIns.addAll(txIns);
    }
    return $result;
  }
  ProtoTxIns._() : super();
  factory ProtoTxIns.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoTxIns.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoTxIns', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..pc<ProtoTxIn>(1, _omitFieldNames ? '' : 'txIns', $pb.PbFieldType.PM, subBuilder: ProtoTxIn.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoTxIns clone() => ProtoTxIns()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoTxIns copyWith(void Function(ProtoTxIns) updates) => super.copyWith((message) => updates(message as ProtoTxIns)) as ProtoTxIns;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoTxIns create() => ProtoTxIns._();
  ProtoTxIns createEmptyInstance() => create();
  static $pb.PbList<ProtoTxIns> createRepeated() => $pb.PbList<ProtoTxIns>();
  @$core.pragma('dart2js:noInline')
  static ProtoTxIns getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoTxIns>(create);
  static ProtoTxIns? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProtoTxIn> get txIns => $_getList(0);
}

class ProtoTxOuts extends $pb.GeneratedMessage {
  factory ProtoTxOuts({
    $core.Iterable<ProtoTxOut>? txOuts,
  }) {
    final $result = create();
    if (txOuts != null) {
      $result.txOuts.addAll(txOuts);
    }
    return $result;
  }
  ProtoTxOuts._() : super();
  factory ProtoTxOuts.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoTxOuts.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoTxOuts', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..pc<ProtoTxOut>(1, _omitFieldNames ? '' : 'txOuts', $pb.PbFieldType.PM, subBuilder: ProtoTxOut.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoTxOuts clone() => ProtoTxOuts()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoTxOuts copyWith(void Function(ProtoTxOuts) updates) => super.copyWith((message) => updates(message as ProtoTxOuts)) as ProtoTxOuts;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoTxOuts create() => ProtoTxOuts._();
  ProtoTxOuts createEmptyInstance() => create();
  static $pb.PbList<ProtoTxOuts> createRepeated() => $pb.PbList<ProtoTxOuts>();
  @$core.pragma('dart2js:noInline')
  static ProtoTxOuts getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoTxOuts>(create);
  static ProtoTxOuts? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProtoTxOut> get txOuts => $_getList(0);
}

class ProtoTxIn extends $pb.GeneratedMessage {
  factory ProtoTxIn({
    ProtoOutPoint? previousOutPoint,
    $core.List<$core.int>? pubKey,
  }) {
    final $result = create();
    if (previousOutPoint != null) {
      $result.previousOutPoint = previousOutPoint;
    }
    if (pubKey != null) {
      $result.pubKey = pubKey;
    }
    return $result;
  }
  ProtoTxIn._() : super();
  factory ProtoTxIn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoTxIn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoTxIn', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..aOM<ProtoOutPoint>(1, _omitFieldNames ? '' : 'previousOutPoint', subBuilder: ProtoOutPoint.create)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'pubKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoTxIn clone() => ProtoTxIn()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoTxIn copyWith(void Function(ProtoTxIn) updates) => super.copyWith((message) => updates(message as ProtoTxIn)) as ProtoTxIn;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoTxIn create() => ProtoTxIn._();
  ProtoTxIn createEmptyInstance() => create();
  static $pb.PbList<ProtoTxIn> createRepeated() => $pb.PbList<ProtoTxIn>();
  @$core.pragma('dart2js:noInline')
  static ProtoTxIn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoTxIn>(create);
  static ProtoTxIn? _defaultInstance;

  @$pb.TagNumber(1)
  ProtoOutPoint get previousOutPoint => $_getN(0);
  @$pb.TagNumber(1)
  set previousOutPoint(ProtoOutPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPreviousOutPoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreviousOutPoint() => clearField(1);
  @$pb.TagNumber(1)
  ProtoOutPoint ensurePreviousOutPoint() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get pubKey => $_getN(1);
  @$pb.TagNumber(2)
  set pubKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubKey() => clearField(2);
}

class ProtoOutPoint extends $pb.GeneratedMessage {
  factory ProtoOutPoint({
    $0.ProtoHash? hash,
    $core.int? index,
  }) {
    final $result = create();
    if (hash != null) {
      $result.hash = hash;
    }
    if (index != null) {
      $result.index = index;
    }
    return $result;
  }
  ProtoOutPoint._() : super();
  factory ProtoOutPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoOutPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoOutPoint', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..aOM<$0.ProtoHash>(1, _omitFieldNames ? '' : 'hash', subBuilder: $0.ProtoHash.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'index', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoOutPoint clone() => ProtoOutPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoOutPoint copyWith(void Function(ProtoOutPoint) updates) => super.copyWith((message) => updates(message as ProtoOutPoint)) as ProtoOutPoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoOutPoint create() => ProtoOutPoint._();
  ProtoOutPoint createEmptyInstance() => create();
  static $pb.PbList<ProtoOutPoint> createRepeated() => $pb.PbList<ProtoOutPoint>();
  @$core.pragma('dart2js:noInline')
  static ProtoOutPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoOutPoint>(create);
  static ProtoOutPoint? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ProtoHash get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash($0.ProtoHash v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);
  @$pb.TagNumber(1)
  $0.ProtoHash ensureHash() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);
}

class ProtoTxOut extends $pb.GeneratedMessage {
  factory ProtoTxOut({
    $core.int? denomination,
    $core.List<$core.int>? address,
    $core.List<$core.int>? lock,
  }) {
    final $result = create();
    if (denomination != null) {
      $result.denomination = denomination;
    }
    if (address != null) {
      $result.address = address;
    }
    if (lock != null) {
      $result.lock = lock;
    }
    return $result;
  }
  ProtoTxOut._() : super();
  factory ProtoTxOut.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoTxOut.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoTxOut', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'denomination', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'address', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'lock', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoTxOut clone() => ProtoTxOut()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoTxOut copyWith(void Function(ProtoTxOut) updates) => super.copyWith((message) => updates(message as ProtoTxOut)) as ProtoTxOut;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoTxOut create() => ProtoTxOut._();
  ProtoTxOut createEmptyInstance() => create();
  static $pb.PbList<ProtoTxOut> createRepeated() => $pb.PbList<ProtoTxOut>();
  @$core.pragma('dart2js:noInline')
  static ProtoTxOut getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoTxOut>(create);
  static ProtoTxOut? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get denomination => $_getIZ(0);
  @$pb.TagNumber(1)
  set denomination($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDenomination() => $_has(0);
  @$pb.TagNumber(1)
  void clearDenomination() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get address => $_getN(1);
  @$pb.TagNumber(2)
  set address($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get lock => $_getN(2);
  @$pb.TagNumber(3)
  set lock($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLock() => $_has(2);
  @$pb.TagNumber(3)
  void clearLock() => clearField(3);
}

class ProtoOutPointAndDenomination extends $pb.GeneratedMessage {
  factory ProtoOutPointAndDenomination({
    $0.ProtoHash? hash,
    $core.int? index,
    $core.int? denomination,
  }) {
    final $result = create();
    if (hash != null) {
      $result.hash = hash;
    }
    if (index != null) {
      $result.index = index;
    }
    if (denomination != null) {
      $result.denomination = denomination;
    }
    return $result;
  }
  ProtoOutPointAndDenomination._() : super();
  factory ProtoOutPointAndDenomination.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoOutPointAndDenomination.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoOutPointAndDenomination', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..aOM<$0.ProtoHash>(1, _omitFieldNames ? '' : 'hash', subBuilder: $0.ProtoHash.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'index', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'denomination', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoOutPointAndDenomination clone() => ProtoOutPointAndDenomination()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoOutPointAndDenomination copyWith(void Function(ProtoOutPointAndDenomination) updates) => super.copyWith((message) => updates(message as ProtoOutPointAndDenomination)) as ProtoOutPointAndDenomination;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoOutPointAndDenomination create() => ProtoOutPointAndDenomination._();
  ProtoOutPointAndDenomination createEmptyInstance() => create();
  static $pb.PbList<ProtoOutPointAndDenomination> createRepeated() => $pb.PbList<ProtoOutPointAndDenomination>();
  @$core.pragma('dart2js:noInline')
  static ProtoOutPointAndDenomination getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoOutPointAndDenomination>(create);
  static ProtoOutPointAndDenomination? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ProtoHash get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash($0.ProtoHash v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);
  @$pb.TagNumber(1)
  $0.ProtoHash ensureHash() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get denomination => $_getIZ(2);
  @$pb.TagNumber(3)
  set denomination($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDenomination() => $_has(2);
  @$pb.TagNumber(3)
  void clearDenomination() => clearField(3);
}

class ProtoAddressOutPoints extends $pb.GeneratedMessage {
  factory ProtoAddressOutPoints({
    $core.Map<$core.String, ProtoOutPointAndDenomination>? outPoints,
  }) {
    final $result = create();
    if (outPoints != null) {
      $result.outPoints.addAll(outPoints);
    }
    return $result;
  }
  ProtoAddressOutPoints._() : super();
  factory ProtoAddressOutPoints.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoAddressOutPoints.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoAddressOutPoints', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..m<$core.String, ProtoOutPointAndDenomination>(1, _omitFieldNames ? '' : 'outPoints', entryClassName: 'ProtoAddressOutPoints.OutPointsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: ProtoOutPointAndDenomination.create, valueDefaultOrMaker: ProtoOutPointAndDenomination.getDefault, packageName: const $pb.PackageName('block'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoAddressOutPoints clone() => ProtoAddressOutPoints()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoAddressOutPoints copyWith(void Function(ProtoAddressOutPoints) updates) => super.copyWith((message) => updates(message as ProtoAddressOutPoints)) as ProtoAddressOutPoints;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoAddressOutPoints create() => ProtoAddressOutPoints._();
  ProtoAddressOutPoints createEmptyInstance() => create();
  static $pb.PbList<ProtoAddressOutPoints> createRepeated() => $pb.PbList<ProtoAddressOutPoints>();
  @$core.pragma('dart2js:noInline')
  static ProtoAddressOutPoints getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoAddressOutPoints>(create);
  static ProtoAddressOutPoints? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, ProtoOutPointAndDenomination> get outPoints => $_getMap(0);
}

class ProtoOutPointsMap extends $pb.GeneratedMessage {
  factory ProtoOutPointsMap({
    $core.Map<$core.String, ProtoAddressOutPoints>? entries,
  }) {
    final $result = create();
    if (entries != null) {
      $result.entries.addAll(entries);
    }
    return $result;
  }
  ProtoOutPointsMap._() : super();
  factory ProtoOutPointsMap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoOutPointsMap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoOutPointsMap', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..m<$core.String, ProtoAddressOutPoints>(1, _omitFieldNames ? '' : 'entries', entryClassName: 'ProtoOutPointsMap.EntriesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: ProtoAddressOutPoints.create, valueDefaultOrMaker: ProtoAddressOutPoints.getDefault, packageName: const $pb.PackageName('block'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoOutPointsMap clone() => ProtoOutPointsMap()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoOutPointsMap copyWith(void Function(ProtoOutPointsMap) updates) => super.copyWith((message) => updates(message as ProtoOutPointsMap)) as ProtoOutPointsMap;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoOutPointsMap create() => ProtoOutPointsMap._();
  ProtoOutPointsMap createEmptyInstance() => create();
  static $pb.PbList<ProtoOutPointsMap> createRepeated() => $pb.PbList<ProtoOutPointsMap>();
  @$core.pragma('dart2js:noInline')
  static ProtoOutPointsMap getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoOutPointsMap>(create);
  static ProtoOutPointsMap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, ProtoAddressOutPoints> get entries => $_getMap(0);
}

class ProtoSpentUTXO extends $pb.GeneratedMessage {
  factory ProtoSpentUTXO({
    ProtoOutPoint? outpoint,
    ProtoTxOut? sutxo,
  }) {
    final $result = create();
    if (outpoint != null) {
      $result.outpoint = outpoint;
    }
    if (sutxo != null) {
      $result.sutxo = sutxo;
    }
    return $result;
  }
  ProtoSpentUTXO._() : super();
  factory ProtoSpentUTXO.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoSpentUTXO.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoSpentUTXO', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..aOM<ProtoOutPoint>(1, _omitFieldNames ? '' : 'outpoint', subBuilder: ProtoOutPoint.create)
    ..aOM<ProtoTxOut>(2, _omitFieldNames ? '' : 'sutxo', subBuilder: ProtoTxOut.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoSpentUTXO clone() => ProtoSpentUTXO()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoSpentUTXO copyWith(void Function(ProtoSpentUTXO) updates) => super.copyWith((message) => updates(message as ProtoSpentUTXO)) as ProtoSpentUTXO;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoSpentUTXO create() => ProtoSpentUTXO._();
  ProtoSpentUTXO createEmptyInstance() => create();
  static $pb.PbList<ProtoSpentUTXO> createRepeated() => $pb.PbList<ProtoSpentUTXO>();
  @$core.pragma('dart2js:noInline')
  static ProtoSpentUTXO getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoSpentUTXO>(create);
  static ProtoSpentUTXO? _defaultInstance;

  @$pb.TagNumber(1)
  ProtoOutPoint get outpoint => $_getN(0);
  @$pb.TagNumber(1)
  set outpoint(ProtoOutPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOutpoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearOutpoint() => clearField(1);
  @$pb.TagNumber(1)
  ProtoOutPoint ensureOutpoint() => $_ensure(0);

  @$pb.TagNumber(2)
  ProtoTxOut get sutxo => $_getN(1);
  @$pb.TagNumber(2)
  set sutxo(ProtoTxOut v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSutxo() => $_has(1);
  @$pb.TagNumber(2)
  void clearSutxo() => clearField(2);
  @$pb.TagNumber(2)
  ProtoTxOut ensureSutxo() => $_ensure(1);
}

class ProtoSpentUTXOs extends $pb.GeneratedMessage {
  factory ProtoSpentUTXOs({
    $core.Iterable<ProtoSpentUTXO>? sutxos,
  }) {
    final $result = create();
    if (sutxos != null) {
      $result.sutxos.addAll(sutxos);
    }
    return $result;
  }
  ProtoSpentUTXOs._() : super();
  factory ProtoSpentUTXOs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoSpentUTXOs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoSpentUTXOs', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..pc<ProtoSpentUTXO>(1, _omitFieldNames ? '' : 'sutxos', $pb.PbFieldType.PM, subBuilder: ProtoSpentUTXO.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoSpentUTXOs clone() => ProtoSpentUTXOs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoSpentUTXOs copyWith(void Function(ProtoSpentUTXOs) updates) => super.copyWith((message) => updates(message as ProtoSpentUTXOs)) as ProtoSpentUTXOs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoSpentUTXOs create() => ProtoSpentUTXOs._();
  ProtoSpentUTXOs createEmptyInstance() => create();
  static $pb.PbList<ProtoSpentUTXOs> createRepeated() => $pb.PbList<ProtoSpentUTXOs>();
  @$core.pragma('dart2js:noInline')
  static ProtoSpentUTXOs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoSpentUTXOs>(create);
  static ProtoSpentUTXOs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProtoSpentUTXO> get sutxos => $_getList(0);
}

class ProtoKeys extends $pb.GeneratedMessage {
  factory ProtoKeys({
    $core.Iterable<$core.List<$core.int>>? keys,
  }) {
    final $result = create();
    if (keys != null) {
      $result.keys.addAll(keys);
    }
    return $result;
  }
  ProtoKeys._() : super();
  factory ProtoKeys.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoKeys.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoKeys', package: const $pb.PackageName(_omitMessageNames ? '' : 'block'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'keys', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoKeys clone() => ProtoKeys()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoKeys copyWith(void Function(ProtoKeys) updates) => super.copyWith((message) => updates(message as ProtoKeys)) as ProtoKeys;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoKeys create() => ProtoKeys._();
  ProtoKeys createEmptyInstance() => create();
  static $pb.PbList<ProtoKeys> createRepeated() => $pb.PbList<ProtoKeys>();
  @$core.pragma('dart2js:noInline')
  static ProtoKeys getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoKeys>(create);
  static ProtoKeys? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get keys => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
