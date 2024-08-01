import 'package:flutter/material.dart';
import 'package:ws_riverpod/todo/widgets/todo_body.dart';

/// {@template todo_page}
/// A description for TodoPage
/// {@endtemplate}
class TodoPage extends StatelessWidget {
  /// {@macro todo_page}
  const TodoPage({super.key});

  /// The static route for TodoPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const TodoPage());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: const Scaffold(
        body: TodoView(),
      ),
    );
  }
}

/// {@template todo_view}
/// Displays the Body of TodoView
/// {@endtemplate}
class TodoView extends StatelessWidget {
  /// {@macro todo_view}
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const TodoBody();
  }
}
