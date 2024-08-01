// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ws_riverpod/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterPage', () {
    group('route', () {
      test('is routable', () {
        expect(CounterPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders CounterView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: CounterPage()));
      expect(find.byType(CounterView), findsOneWidget);
    });
  });
}
