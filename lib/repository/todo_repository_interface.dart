// Project imports:
import 'package:flutter_test_practice/model/todo.dart';

abstract class TodoRepositoryInterface {
  Future<List<Todo>> findAll();
}
