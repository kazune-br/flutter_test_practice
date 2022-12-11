// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_test_practice/ui/todo_list/todo_list_view_model.dart';

class TodoListPage extends HookConsumerWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoListProvider);
    final notifier = ref.watch(todoListProvider.notifier);
    useEffect(() {
      notifier.fetchTodoList();
      return () {};
    }, const []);
    return Scaffold(
      body: state.when(
        data: (data) => ListView.builder(
          itemCount: data.todoList.length,
          itemBuilder: (context, index) {
            final todo = data.todoList[index];
            return Card(
              child: ListTile(
                leading: const Icon(Icons.book),
                title: Text(todo.title ?? ""),
                trailing: const Icon(Icons.more_vert),
                onTap: () {},
              ),
            );
          },
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stack) => Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }
}
