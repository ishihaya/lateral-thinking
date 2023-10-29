//
//  Generated code. Do not modify.
//  source: app/v1/puzzle.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use puzzleDescriptor instead')
const Puzzle$json = {
  '1': 'Puzzle',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'question', '3': 2, '4': 1, '5': 9, '10': 'question'},
    {'1': 'answer', '3': 3, '4': 1, '5': 9, '10': 'answer'},
  ],
};

/// Descriptor for `Puzzle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List puzzleDescriptor = $convert.base64Decode(
    'CgZQdXp6bGUSDgoCaWQYASABKAlSAmlkEhoKCHF1ZXN0aW9uGAIgASgJUghxdWVzdGlvbhIWCg'
    'ZhbnN3ZXIYAyABKAlSBmFuc3dlcg==');

@$core.Deprecated('Use listPuzzlesRequestDescriptor instead')
const ListPuzzlesRequest$json = {
  '1': 'ListPuzzlesRequest',
  '2': [
    {'1': 'limit', '3': 1, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `ListPuzzlesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPuzzlesRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0UHV6emxlc1JlcXVlc3QSFAoFbGltaXQYASABKA1SBWxpbWl0');

@$core.Deprecated('Use listPuzzlesResponseDescriptor instead')
const ListPuzzlesResponse$json = {
  '1': 'ListPuzzlesResponse',
  '2': [
    {'1': 'puzzles', '3': 1, '4': 3, '5': 11, '6': '.app.v1.Puzzle', '10': 'puzzles'},
  ],
};

/// Descriptor for `ListPuzzlesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPuzzlesResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0UHV6emxlc1Jlc3BvbnNlEigKB3B1enpsZXMYASADKAsyDi5hcHAudjEuUHV6emxlUg'
    'dwdXp6bGVz');

