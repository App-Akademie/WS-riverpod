import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ws_riverpod/counter/provider/counter_provider.dart';
import 'package:ws_riverpod/counter/widgets/counter_body.dart';

/// {@template counter_page}
/// A description for CounterPage
/// {@endtemplate}
class CounterPage extends ConsumerWidget {
  /// {@macro counter_page}
  const CounterPage({super.key});

  /// The static route for CounterPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const CounterPage());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: const CounterView(),
      floatingActionButton: FloatingActionButton(
        onPressed: ref.read(counterProvider.notifier).increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

/// {@template counter_view}
/// Displays the Body of CounterView
/// {@endtemplate}
class CounterView extends StatelessWidget {
  /// {@macro counter_view}
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CounterBody();
  }
}
