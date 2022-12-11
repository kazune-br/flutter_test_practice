// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_test_practice/model/todo.dart';

part 'todo_list_state.freezed.dart';

@freezed
class TodoListState with _$TodoListState {
  const factory TodoListState({
    @Default([]) List<Todo> todoList,
  }) = _TodoListState;
}
