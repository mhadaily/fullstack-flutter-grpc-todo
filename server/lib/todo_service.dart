import 'dart:math';

import 'package:protos/protos.dart';

class TodoService extends TodoServiceBase {
  @override
  Future<Todo> create(ServiceCall call, Todo request) async {
    return request;
  }

  @override
  Future<Todo> read(ServiceCall call, TodoByIdRequest request) async {
    return Todo()
      ..id = request.id
      ..title = 'Read'
      ..description = 'Read'
      ..done = false
      ..labels.addAll(['Read', 'Label']);
  }

  @override
  Future<Todo> update(ServiceCall call, Todo request) async {
    return request;
  }

  @override
  Future<Empty> delete(ServiceCall call, Todo request) async {
    return Empty();
  }

  @override
  Future<TodoList> list(ServiceCall call, Empty request) async {
    return TodoList();
  }

  @override
  Stream<Todo> listTodosStream(ServiceCall call, Empty request) async* {
    while (true) {
      final id = Random.secure().nextInt(100);
      yield Todo()
        ..id = id
        ..title = 'Title $id'
        ..description = 'Description $id'
        ..done = false
        ..labels.addAll(['Label $id']);
      await Future.delayed(
        Duration(
          seconds: 2,
        ),
      );
    }
  }
}
