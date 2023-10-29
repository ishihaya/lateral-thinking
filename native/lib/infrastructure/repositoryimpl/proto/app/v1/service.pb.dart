//
//  Generated code. Do not modify.
//  source: app/v1/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'puzzle.pb.dart' as $0;

class AppServiceApi {
  $pb.RpcClient _client;
  AppServiceApi(this._client);

  $async.Future<$0.ListPuzzlesResponse> listPuzzles($pb.ClientContext? ctx, $0.ListPuzzlesRequest request) =>
    _client.invoke<$0.ListPuzzlesResponse>(ctx, 'AppService', 'ListPuzzles', request, $0.ListPuzzlesResponse())
  ;
}

