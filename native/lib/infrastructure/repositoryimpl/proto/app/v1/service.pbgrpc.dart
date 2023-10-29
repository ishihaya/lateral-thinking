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

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'puzzle.pb.dart' as $0;

export 'service.pb.dart';

@$pb.GrpcServiceName('app.v1.AppService')
class AppServiceClient extends $grpc.Client {
  static final _$listPuzzles = $grpc.ClientMethod<$0.ListPuzzlesRequest, $0.ListPuzzlesResponse>(
      '/app.v1.AppService/ListPuzzles',
      ($0.ListPuzzlesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListPuzzlesResponse.fromBuffer(value));

  AppServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListPuzzlesResponse> listPuzzles($0.ListPuzzlesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPuzzles, request, options: options);
  }
}

@$pb.GrpcServiceName('app.v1.AppService')
abstract class AppServiceBase extends $grpc.Service {
  $core.String get $name => 'app.v1.AppService';

  AppServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListPuzzlesRequest, $0.ListPuzzlesResponse>(
        'ListPuzzles',
        listPuzzles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListPuzzlesRequest.fromBuffer(value),
        ($0.ListPuzzlesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListPuzzlesResponse> listPuzzles_Pre($grpc.ServiceCall call, $async.Future<$0.ListPuzzlesRequest> request) async {
    return listPuzzles(call, await request);
  }

  $async.Future<$0.ListPuzzlesResponse> listPuzzles($grpc.ServiceCall call, $0.ListPuzzlesRequest request);
}
