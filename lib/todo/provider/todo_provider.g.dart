// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$uncompletedTodosCountHash() =>
    r'4e69e632a897345c857cbb85ea7f69756c37fd1c';

/// The number of uncompleted todos
///
/// By using [Provider], this value is cached, making it performant.\
/// Even multiple widgets try to read the number of uncompleted todos,
/// the value will be computed only once (until the todo-list changes).
///
/// This will also optimise unneeded rebuilds if the todo-list changes, but the
/// number of uncompleted todos doesn't (such as when editing a todo).
///
///
/// Copied from [uncompletedTodosCount].
@ProviderFor(uncompletedTodosCount)
final uncompletedTodosCountProvider = AutoDisposeProvider<int>.internal(
  uncompletedTodosCount,
  name: r'uncompletedTodosCountProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$uncompletedTodosCountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UncompletedTodosCountRef = AutoDisposeProviderRef<int>;
String _$filteredTodosHash() => r'7b4117eb4c106726f887a0fc3b978e6e87406f1d';

/// The list of todos after applying of [todoListFilter].
///
/// This too uses [Provider], to avoid recomputing the filtered list unless either
/// the filter of or the todo-list updates.
///
/// Copied from [filteredTodos].
@ProviderFor(filteredTodos)
final filteredTodosProvider = AutoDisposeProvider<List<Todo>>.internal(
  filteredTodos,
  name: r'filteredTodosProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredTodosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilteredTodosRef = AutoDisposeProviderRef<List<Todo>>;
String _$currentTodoHash() => r'35519072283362705c09461bfd21a5f8a85d5c04';

/// A provider which exposes the [Todo] displayed by a [TodoItem].
///
/// By retrieving the [Todo] through a provider instead of through its
/// constructor, this allows [TodoItem] to be instantiated using the `const` keyword.
///
/// This ensures that when we add/remove/edit todos, only what the
/// impacted widgets rebuilds, instead of the entire list of items.
///
/// Copied from [currentTodo].
@ProviderFor(currentTodo)
final currentTodoProvider = AutoDisposeProvider<Todo>.internal(
  currentTodo,
  name: r'currentTodoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$currentTodoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentTodoRef = AutoDisposeProviderRef<Todo>;
String _$todoListHash() => r'ef7d2b43a6015000e40b445d591520f1a956b204';

/// Creates a [TodoList] and initialise it with pre-defined values.
///
/// We are using [StateNotifierProvider] here as a `List<Todo>` is a complex
/// object, with advanced business logic like how to edit a todo.
///
/// Copied from [TodoList].
@ProviderFor(TodoList)
final todoListProvider =
    AutoDisposeNotifierProvider<TodoList, List<Todo>>.internal(
  TodoList.new,
  name: r'todoListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todoListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoList = AutoDisposeNotifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
