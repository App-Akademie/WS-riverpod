import 'package:flutter/material.dart';
import 'package:ws_riverpod/pull_to_refresh/models/fact.dart';
import 'package:ws_riverpod/pull_to_refresh/provider/provider.dart';

/// {@template pull_to_refresh_body}
/// Body of the PullToRefreshPage.
///
/// Add what it does
/// {@endtemplate}
class PullToRefreshBody extends ConsumerWidget {
  /// {@macro pull_to_refresh_body}
  const PullToRefreshBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activity = ref.watch(factProvider);

    return RefreshIndicator(
      onRefresh: () => ref.refresh(factProvider.future),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            switch (activity) {
              AsyncValue<Fact>(:final valueOrNull?) => Text(valueOrNull.text),
              AsyncValue(:final error?) => Text('Error: $error'),
              _ => const Center(child: CircularProgressIndicator()),
            },
          ],
        ),
      ),
    );
  }
}
