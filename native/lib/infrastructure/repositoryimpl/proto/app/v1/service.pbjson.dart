//
//  Generated code. Do not modify.
//  source: app/v1/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import 'puzzle.pbjson.dart' as $0;

const $core.Map<$core.String, $core.dynamic> AppServiceBase$json = {
  '1': 'AppService',
  '2': [
    {'1': 'ListPuzzles', '2': '.app.v1.ListPuzzlesRequest', '3': '.app.v1.ListPuzzlesResponse', '4': {}},
  ],
};

@$core.Deprecated('Use appServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> AppServiceBase$messageJson = {
  '.app.v1.ListPuzzlesRequest': $0.ListPuzzlesRequest$json,
  '.app.v1.ListPuzzlesResponse': $0.ListPuzzlesResponse$json,
  '.app.v1.Puzzle': $0.Puzzle$json,
};

/// Descriptor for `AppService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List appServiceDescriptor = $convert.base64Decode(
    'CgpBcHBTZXJ2aWNlEkgKC0xpc3RQdXp6bGVzEhouYXBwLnYxLkxpc3RQdXp6bGVzUmVxdWVzdB'
    'obLmFwcC52MS5MaXN0UHV6emxlc1Jlc3BvbnNlIgA=');

