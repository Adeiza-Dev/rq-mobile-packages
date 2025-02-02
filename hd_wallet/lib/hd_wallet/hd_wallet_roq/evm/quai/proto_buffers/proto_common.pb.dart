//
//  Generated code. Do not modify.
//  source: proto_common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class ProtoLocation extends $pb.GeneratedMessage {
  factory ProtoLocation({
    $core.List<$core.int>? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  ProtoLocation._() : super();
  factory ProtoLocation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoLocation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoLocation', package: const $pb.PackageName(_omitMessageNames ? '' : 'common'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoLocation clone() => ProtoLocation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoLocation copyWith(void Function(ProtoLocation) updates) => super.copyWith((message) => updates(message as ProtoLocation)) as ProtoLocation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoLocation create() => ProtoLocation._();
  ProtoLocation createEmptyInstance() => create();
  static $pb.PbList<ProtoLocation> createRepeated() => $pb.PbList<ProtoLocation>();
  @$core.pragma('dart2js:noInline')
  static ProtoLocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoLocation>(create);
  static ProtoLocation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class ProtoHash extends $pb.GeneratedMessage {
  factory ProtoHash({
    $core.List<$core.int>? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  ProtoHash._() : super();
  factory ProtoHash.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoHash.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoHash', package: const $pb.PackageName(_omitMessageNames ? '' : 'common'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoHash clone() => ProtoHash()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoHash copyWith(void Function(ProtoHash) updates) => super.copyWith((message) => updates(message as ProtoHash)) as ProtoHash;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoHash create() => ProtoHash._();
  ProtoHash createEmptyInstance() => create();
  static $pb.PbList<ProtoHash> createRepeated() => $pb.PbList<ProtoHash>();
  @$core.pragma('dart2js:noInline')
  static ProtoHash getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoHash>(create);
  static ProtoHash? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class ProtoHashes extends $pb.GeneratedMessage {
  factory ProtoHashes({
    $core.Iterable<ProtoHash>? hashes,
  }) {
    final $result = create();
    if (hashes != null) {
      $result.hashes.addAll(hashes);
    }
    return $result;
  }
  ProtoHashes._() : super();
  factory ProtoHashes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoHashes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoHashes', package: const $pb.PackageName(_omitMessageNames ? '' : 'common'), createEmptyInstance: create)
    ..pc<ProtoHash>(1, _omitFieldNames ? '' : 'hashes', $pb.PbFieldType.PM, subBuilder: ProtoHash.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoHashes clone() => ProtoHashes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoHashes copyWith(void Function(ProtoHashes) updates) => super.copyWith((message) => updates(message as ProtoHashes)) as ProtoHashes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoHashes create() => ProtoHashes._();
  ProtoHashes createEmptyInstance() => create();
  static $pb.PbList<ProtoHashes> createRepeated() => $pb.PbList<ProtoHashes>();
  @$core.pragma('dart2js:noInline')
  static ProtoHashes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoHashes>(create);
  static ProtoHashes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProtoHash> get hashes => $_getList(0);
}

class ProtoAddress extends $pb.GeneratedMessage {
  factory ProtoAddress({
    $core.List<$core.int>? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  ProtoAddress._() : super();
  factory ProtoAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoAddress', package: const $pb.PackageName(_omitMessageNames ? '' : 'common'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoAddress clone() => ProtoAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoAddress copyWith(void Function(ProtoAddress) updates) => super.copyWith((message) => updates(message as ProtoAddress)) as ProtoAddress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoAddress create() => ProtoAddress._();
  ProtoAddress createEmptyInstance() => create();
  static $pb.PbList<ProtoAddress> createRepeated() => $pb.PbList<ProtoAddress>();
  @$core.pragma('dart2js:noInline')
  static ProtoAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoAddress>(create);
  static ProtoAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class ProtoNumber extends $pb.GeneratedMessage {
  factory ProtoNumber({
    $fixnum.Int64? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  ProtoNumber._() : super();
  factory ProtoNumber.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoNumber.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoNumber', package: const $pb.PackageName(_omitMessageNames ? '' : 'common'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoNumber clone() => ProtoNumber()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoNumber copyWith(void Function(ProtoNumber) updates) => super.copyWith((message) => updates(message as ProtoNumber)) as ProtoNumber;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoNumber create() => ProtoNumber._();
  ProtoNumber createEmptyInstance() => create();
  static $pb.PbList<ProtoNumber> createRepeated() => $pb.PbList<ProtoNumber>();
  @$core.pragma('dart2js:noInline')
  static ProtoNumber getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoNumber>(create);
  static ProtoNumber? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class ProtoLocations extends $pb.GeneratedMessage {
  factory ProtoLocations({
    $core.Iterable<ProtoLocation>? locations,
  }) {
    final $result = create();
    if (locations != null) {
      $result.locations.addAll(locations);
    }
    return $result;
  }
  ProtoLocations._() : super();
  factory ProtoLocations.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoLocations.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProtoLocations', package: const $pb.PackageName(_omitMessageNames ? '' : 'common'), createEmptyInstance: create)
    ..pc<ProtoLocation>(1, _omitFieldNames ? '' : 'locations', $pb.PbFieldType.PM, subBuilder: ProtoLocation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoLocations clone() => ProtoLocations()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoLocations copyWith(void Function(ProtoLocations) updates) => super.copyWith((message) => updates(message as ProtoLocations)) as ProtoLocations;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProtoLocations create() => ProtoLocations._();
  ProtoLocations createEmptyInstance() => create();
  static $pb.PbList<ProtoLocations> createRepeated() => $pb.PbList<ProtoLocations>();
  @$core.pragma('dart2js:noInline')
  static ProtoLocations getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoLocations>(create);
  static ProtoLocations? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProtoLocation> get locations => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
