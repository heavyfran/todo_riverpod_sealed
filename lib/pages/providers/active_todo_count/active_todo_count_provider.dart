import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../todo_list/todo_list_provider.dart';

part 'active_todo_count_provider.g.dart';

@riverpod
int activeTodoCount(ActiveTodoCountRef ref) {
  final todoListState = ref.watch(todoListProvider);
  return todoListState.todos.where((todo) => !todo.completed).toList().length;
}
