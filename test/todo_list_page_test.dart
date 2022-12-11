import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_practice/model/todo.dart';

import 'package:flutter_test_practice/repository/todo_repository_interface.dart';
import 'package:flutter_test_practice/ui/todo_list/todo_list_page.dart';
import 'package:flutter_test_practice/ui/todo_list/todo_list_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class MockTodoRepository extends Mock implements TodoRepositoryInterface {}

void main() {
  late MockTodoRepository mockTodoRepository;

  setUp(() {
    mockTodoRepository = MockTodoRepository();
  });

  testWidgets('show up loading indicator', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          todoListProvider
              .overrideWith((ref) => TodoListViewModel(mockTodoRepository))
        ],
        child: const ProviderScope(
          child: MaterialApp(
            home: TodoListPage(),
          ),
        ),
      ),
    );

    // The first frame is a loading state.
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('show up todo items after fetching', (WidgetTester tester) async {
    final testItems = [
      const Todo(
        id: 1,
        userId: 1,
        title: 'title',
        completed: false,
      )
    ];
    when(() => mockTodoRepository.findAll()).thenAnswer((_) async => testItems);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          todoListProvider
              .overrideWith((ref) => TodoListViewModel(mockTodoRepository))
        ],
        child: const ProviderScope(
          child: MaterialApp(
            home: TodoListPage(),
          ),
        ),
      ),
    );

    // Re-render. TodoListProvider should have finished fetching the todos by now
    await tester.pump();

    // No longer loading
    expect(find.byType(CircularProgressIndicator), findsNothing);

    // Rendered one TodoItem with the data returned by FakeRepository
    final actual = tester.widgetList<ListTile>(find.byType(ListTile)).toList();
    expect(actual.length, testItems.length);
    for (var i = 0; i < actual.length; i++) {
      expect((actual[i].title as Text).data, testItems[i].title);
    }
  });
}
