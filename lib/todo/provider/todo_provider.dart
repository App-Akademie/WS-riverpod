import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:ws_riverpod/todo/models/todo.dart';

part 'todo_provider.g.dart';

/// The different ways to filter the list of todos
enum TodoListFilter {
  all,
  active,
  completed,
}

/// Creates a [TodoList] and initialise it with pre-defined values.
///
/// We are using [StateNotifierProvider] here as a `List<Todo>` is a complex
/// object, with advanced business logic like how to edit a todo.
@riverpod
class TodoList extends _$TodoList {
  static const _uuid = Uuid();
  @override
  List<Todo> build() => [
        const Todo(id: 'todo-0', description: 'Buy cookies'),
        const Todo(id: 'todo-1', description: 'Star Riverpod'),
        const Todo(id: 'todo-2', description: 'Have a walk'),
      ];

  void add(String description) {
    state = [
      ...state,
      Todo(
        id: _uuid.v4(),
        description: description,
      ),
    ];
  }

  void toggle(String id) {
    state = [
      for (final todo in state)
        if (todo.id == id)
          Todo(
            id: todo.id,
            completed: !todo.completed,
            description: todo.description,
          )
        else
          todo,
    ];
  }

  void edit({required String id, required String description}) {
    state = [
      for (final todo in state)
        if (todo.id == id)
          Todo(
            id: todo.id,
            completed: todo.completed,
            description: description,
          )
        else
          todo,
    ];
  }

  void remove(Todo target) {
    state = state.where((todo) => todo.id != target.id).toList();
  }
}

/// The currently active filter.

@riverpod
class ActiveTodoListFilter extends _$ActiveTodoListFilter {
  @override
  TodoListFilter build() {
    return TodoListFilter.all;
  }

  void setFilter(TodoListFilter filter) {
    state = filter;
  }
}

/// The number of uncompleted todos
///
/// By using [Provider], this value is cached, making it performant.\
/// Even multiple widgets try to read the number of uncompleted todos,
/// the value will be computed only once (until the todo-list changes).
///
/// This will also optimise unneeded rebuilds if the todo-list changes, but the
/// number of uncompleted todos doesn't (such as when editing a todo).
///
@riverpod
int uncompletedTodosCount(UncompletedTodosCountRef ref) {
  return ref.watch(todoListProvider).where((todo) => !todo.completed).length;
}

/// The list of todos after applying of [todoListFilter].
///
/// This too uses [Provider], to avoid recomputing the filtered list unless either
/// the filter of or the todo-list updates.

@riverpod
List<Todo> filteredTodos(FilteredTodosRef ref) {
  final filter = ref.watch(activeTodoListFilterProvider);
  final todos = ref.watch(todoListProvider);

  switch (filter) {
    case TodoListFilter.completed:
      return todos.where((todo) => todo.completed).toList();
    case TodoListFilter.active:
      return todos.where((todo) => !todo.completed).toList();
    case TodoListFilter.all:
      return todos;
  }
}

/// A provider which exposes the [Todo] displayed by a [TodoItem].
///
/// By retrieving the [Todo] through a provider instead of through its
/// constructor, this allows [TodoItem] to be instantiated using the `const` keyword.
///
/// This ensures that when we add/remove/edit todos, only what the
/// impacted widgets rebuilds, instead of the entire list of items.
@riverpod
Todo currentTodo(CurrentTodoRef ref) {
  throw UnimplementedError();
}
