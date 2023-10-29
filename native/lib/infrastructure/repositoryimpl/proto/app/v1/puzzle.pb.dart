//
//  Generated code. Do not modify.
//  source: app/v1/puzzle.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Puzzle extends $pb.GeneratedMessage {
  factory Puzzle({
    $core.String? id,
    $core.String? question,
    $core.String? answer,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (question != null) {
      $result.question = question;
    }
    if (answer != null) {
      $result.answer = answer;
    }
    return $result;
  }
  Puzzle._() : super();
  factory Puzzle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Puzzle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Puzzle', package: const $pb.PackageName(_omitMessageNames ? '' : 'app.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'question')
    ..aOS(3, _omitFieldNames ? '' : 'answer')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Puzzle clone() => Puzzle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Puzzle copyWith(void Function(Puzzle) updates) => super.copyWith((message) => updates(message as Puzzle)) as Puzzle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Puzzle create() => Puzzle._();
  Puzzle createEmptyInstance() => create();
  static $pb.PbList<Puzzle> createRepeated() => $pb.PbList<Puzzle>();
  @$core.pragma('dart2js:noInline')
  static Puzzle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Puzzle>(create);
  static Puzzle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get question => $_getSZ(1);
  @$pb.TagNumber(2)
  set question($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuestion() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuestion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get answer => $_getSZ(2);
  @$pb.TagNumber(3)
  set answer($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAnswer() => $_has(2);
  @$pb.TagNumber(3)
  void clearAnswer() => clearField(3);
}

class ListPuzzlesRequest extends $pb.GeneratedMessage {
  factory ListPuzzlesRequest({
    $core.int? limit,
  }) {
    final $result = create();
    if (limit != null) {
      $result.limit = limit;
    }
    return $result;
  }
  ListPuzzlesRequest._() : super();
  factory ListPuzzlesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPuzzlesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPuzzlesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'app.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPuzzlesRequest clone() => ListPuzzlesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPuzzlesRequest copyWith(void Function(ListPuzzlesRequest) updates) => super.copyWith((message) => updates(message as ListPuzzlesRequest)) as ListPuzzlesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPuzzlesRequest create() => ListPuzzlesRequest._();
  ListPuzzlesRequest createEmptyInstance() => create();
  static $pb.PbList<ListPuzzlesRequest> createRepeated() => $pb.PbList<ListPuzzlesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPuzzlesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPuzzlesRequest>(create);
  static ListPuzzlesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => clearField(1);
}

class ListPuzzlesResponse extends $pb.GeneratedMessage {
  factory ListPuzzlesResponse({
    $core.Iterable<Puzzle>? puzzles,
  }) {
    final $result = create();
    if (puzzles != null) {
      $result.puzzles.addAll(puzzles);
    }
    return $result;
  }
  ListPuzzlesResponse._() : super();
  factory ListPuzzlesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPuzzlesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPuzzlesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'app.v1'), createEmptyInstance: create)
    ..pc<Puzzle>(1, _omitFieldNames ? '' : 'puzzles', $pb.PbFieldType.PM, subBuilder: Puzzle.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPuzzlesResponse clone() => ListPuzzlesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPuzzlesResponse copyWith(void Function(ListPuzzlesResponse) updates) => super.copyWith((message) => updates(message as ListPuzzlesResponse)) as ListPuzzlesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPuzzlesResponse create() => ListPuzzlesResponse._();
  ListPuzzlesResponse createEmptyInstance() => create();
  static $pb.PbList<ListPuzzlesResponse> createRepeated() => $pb.PbList<ListPuzzlesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPuzzlesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPuzzlesResponse>(create);
  static ListPuzzlesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Puzzle> get puzzles => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
