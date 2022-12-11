// Project imports:
import 'package:flutter_test_practice/infrastructure/api_client.dart';
import 'package:flutter_test_practice/model/todo.dart';
import 'package:flutter_test_practice/repository/todo_repository_interface.dart';

class TodoRepository implements TodoRepositoryInterface {
  TodoRepository(this._client);

  final ApiClient _client;

  @override
  Future<List<Todo>> findAll() async {
    final response = await _client.getTodoList();
    return response
        .map((e) => Todo(
              id: e.id,
              userId: e.userId,
              title: e.title,
              completed: e.completed,
            ))
        .toList();
  }
}
