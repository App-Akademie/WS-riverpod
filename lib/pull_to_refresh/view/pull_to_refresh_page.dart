import 'package:flutter/material.dart';
import 'package:ws_riverpod/pull_to_refresh/widgets/pull_to_refresh_body.dart';

/// {@template pull_to_refresh_page}
/// A description for PullToRefreshPage
/// {@endtemplate}
class PullToRefreshPage extends StatelessWidget {
  /// {@macro pull_to_refresh_page}
  const PullToRefreshPage({super.key});

  /// The static route for PullToRefreshPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
        builder: (_) => const PullToRefreshPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pull to Refresh'),
      ),
      body: const PullToRefreshView(),
    );
  }
}

/// {@template pull_to_refresh_view}
/// Displays the Body of PullToRefreshView
/// {@endtemplate}
class PullToRefreshView extends StatelessWidget {
  /// {@macro pull_to_refresh_view}
  const PullToRefreshView({super.key});

  @override
  Widget build(BuildContext context) {
    return const PullToRefreshBody();
  }
}
