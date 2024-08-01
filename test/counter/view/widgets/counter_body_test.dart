// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ws_riverpod/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        MaterialApp(home: CounterBody()),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
