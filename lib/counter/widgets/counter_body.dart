import 'package:flutter/material.dart';
import 'package:ws_riverpod/counter/provider/provider.dart';

/// {@template counter_body}
/// Body of the CounterPage.
///
/// Add what it does
/// {@endtemplate}
class CounterBody extends ConsumerWidget {
  /// {@macro counter_body}
  const CounterBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
