import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ws_riverpod/todo/provider/provider.dart';

part 'todo_item.dart';
part 'todo_title.dart';
part 'todo_toolbar.dart';

class TodoBody extends HookConsumerWidget {
  const TodoBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(filteredTodosProvider);
    final newTodoController = useTextEditingController();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      children: [
        const TodoTitle(),
        TextField(
          controller: newTodoController,
          decoration: const InputDecoration(
            labelText: 'What needs to be done?',
          ),
          onSubmitted: (value) {
            ref.read(todoListProvider.notifier).add(value);
            newTodoController.clear();
          },
        ),
        const SizedBox(height: 42),
        const TodoToolbar(),
        if (todos.isNotEmpty) const Divider(height: 0),
        for (var i = 0; i < todos.length; i++) ...[
          if (i > 0) const Divider(height: 0),
          Dismissible(
            key: ValueKey(todos[i].id),
            onDismissed: (_) {
              ref.read(todoListProvider.notifier).remove(todos[i]);
            },
            child: ProviderScope(
              overrides: [
                currentTodoProvider.overrideWithValue(todos[i]),
              ],
              child: const TodoItem(),
            ),
          ),
        ],
      ],
    );
  }
}
