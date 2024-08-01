// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ws_riverpod/pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PullToRefreshPage', () {
    group('route', () {
      test('is routable', () {
        expect(PullToRefreshPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders PullToRefreshView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: PullToRefreshPage()));
      expect(find.byType(PullToRefreshView), findsOneWidget);
    });
  });
}
