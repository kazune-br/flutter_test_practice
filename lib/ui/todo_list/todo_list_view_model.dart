// Package imports:
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_test_practice/infrastructure/api_client.dart';
import 'package:flutter_test_practice/repository/todo_repository.dart';
import 'package:flutter_test_practice/repository/todo_repository_interface.dart';
import 'todo_list_state.dart';

final client = ApiClient(Dio());

final StateNotifierProvider<TodoListViewModel, AsyncValue<TodoListState>>
    todoListProvider = StateNotifierProvider(
  (_) => TodoListViewModel(
    TodoRepository(client),
  ),
);

class TodoListViewModel extends StateNotifier<AsyncValue<TodoListState>> {
  final TodoRepositoryInterface _todoRepository;

  TodoListViewModel(this._todoRepository) : super(const AsyncValue.loading());

  Future<void> fetchTodoList() async {
    state = const AsyncValue.loading();

    // try {
    //   final todoList = await _todoRepository.findAll();
    //   state = AsyncValue.data(TodoListState(todoList: todoList));
    // } catch (e, stack) {
    //   state = AsyncValue.error(e, stack);
    // }
    state = await AsyncValue.guard(() async {
      final todoList = await _todoRepository.findAll();
      return TodoListState(todoList: todoList);
    });
  }
}
