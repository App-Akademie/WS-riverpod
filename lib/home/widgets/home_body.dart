import 'package:flutter/material.dart';
import 'package:ws_riverpod/counter/view/counter_page.dart';
import 'package:ws_riverpod/home/provider/provider.dart';
import 'package:ws_riverpod/pull_to_refresh/view/pull_to_refresh_page.dart';
import 'package:ws_riverpod/todo/view/todo_page.dart';

/// {@template home_body}
/// Body of the HomePage.
///
/// Add what it does
/// {@endtemplate}
class HomeBody extends ConsumerWidget {
  /// {@macro home_body}
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        ListTile(
          title: const Text('Counter'),
          onTap: () => Navigator.of(context).push(
            CounterPage.route(),
          ),
        ),
        const Divider(),
        ListTile(
          title: const Text('Pull To Refresh'),
          onTap: () => Navigator.of(context).push(
            PullToRefreshPage.route(),
          ),
        ),
        const Divider(),
        ListTile(
          title: const Text('Todolist'),
          onTap: () => Navigator.of(context).push(
            TodoPage.route(),
          ),
        ),
      ],
    );
  }
}
