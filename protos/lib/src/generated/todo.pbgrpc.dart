//
//  Generated code. Do not modify.
//  source: todo.proto
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

import 'todo.pb.dart' as $0;

export 'todo.pb.dart';

@$pb.GrpcServiceName('TodoService')
class TodoServiceClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.Todo, $0.Todo>(
      '/TodoService/Create',
      ($0.Todo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Todo.fromBuffer(value));
  static final _$read = $grpc.ClientMethod<$0.TodoByIdRequest, $0.Todo>(
      '/TodoService/Read',
      ($0.TodoByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Todo.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.Todo, $0.Todo>(
      '/TodoService/Update',
      ($0.Todo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Todo.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.Todo, $0.Empty>(
      '/TodoService/Delete',
      ($0.Todo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.Empty, $0.TodoList>(
      '/TodoService/List',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoList.fromBuffer(value));
  static final _$listTodosStream = $grpc.ClientMethod<$0.Empty, $0.Todo>(
      '/TodoService/ListTodosStream',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Todo.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Todo> create($0.Todo request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.Todo> read($0.TodoByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$read, request, options: options);
  }

  $grpc.ResponseFuture<$0.Todo> update($0.Todo request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete($0.Todo request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.TodoList> list($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseStream<$0.Todo> listTodosStream($0.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$listTodosStream, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('TodoService')
abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Todo, $0.Todo>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Todo.fromBuffer(value),
        ($0.Todo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TodoByIdRequest, $0.Todo>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoByIdRequest.fromBuffer(value),
        ($0.Todo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Todo, $0.Todo>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Todo.fromBuffer(value),
        ($0.Todo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Todo, $0.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Todo.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.TodoList>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.TodoList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Todo>(
        'ListTodosStream',
        listTodosStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Todo value) => value.writeToBuffer()));
  }

  $async.Future<$0.Todo> create_Pre($grpc.ServiceCall call, $async.Future<$0.Todo> request) async {
    return create(call, await request);
  }

  $async.Future<$0.Todo> read_Pre($grpc.ServiceCall call, $async.Future<$0.TodoByIdRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$0.Todo> update_Pre($grpc.ServiceCall call, $async.Future<$0.Todo> request) async {
    return update(call, await request);
  }

  $async.Future<$0.Empty> delete_Pre($grpc.ServiceCall call, $async.Future<$0.Todo> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.TodoList> list_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return list(call, await request);
  }

  $async.Stream<$0.Todo> listTodosStream_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* listTodosStream(call, await request);
  }

  $async.Future<$0.Todo> create($grpc.ServiceCall call, $0.Todo request);
  $async.Future<$0.Todo> read($grpc.ServiceCall call, $0.TodoByIdRequest request);
  $async.Future<$0.Todo> update($grpc.ServiceCall call, $0.Todo request);
  $async.Future<$0.Empty> delete($grpc.ServiceCall call, $0.Todo request);
  $async.Future<$0.TodoList> list($grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$0.Todo> listTodosStream($grpc.ServiceCall call, $0.Empty request);
}
