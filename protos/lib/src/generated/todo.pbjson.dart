//
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use todoDescriptor instead')
const Todo$json = {
  '1': 'Todo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'done', '3': 4, '4': 1, '5': 8, '10': 'done'},
    {'1': 'labels', '3': 5, '4': 3, '5': 9, '10': 'labels'},
  ],
};

/// Descriptor for `Todo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoDescriptor = $convert.base64Decode(
    'CgRUb2RvEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSIAoLZGVzY3JpcH'
    'Rpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhIKBGRvbmUYBCABKAhSBGRvbmUSFgoGbGFiZWxzGAUg'
    'AygJUgZsYWJlbHM=');

@$core.Deprecated('Use todoListDescriptor instead')
const TodoList$json = {
  '1': 'TodoList',
  '2': [
    {'1': 'todos', '3': 1, '4': 3, '5': 11, '6': '.Todo', '10': 'todos'},
  ],
};

/// Descriptor for `TodoList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoListDescriptor = $convert.base64Decode(
    'CghUb2RvTGlzdBIbCgV0b2RvcxgBIAMoCzIFLlRvZG9SBXRvZG9z');

@$core.Deprecated('Use todoByIdRequestDescriptor instead')
const TodoByIdRequest$json = {
  '1': 'TodoByIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `TodoByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoByIdRequestDescriptor = $convert.base64Decode(
    'Cg9Ub2RvQnlJZFJlcXVlc3QSDgoCaWQYASABKAVSAmlk');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

