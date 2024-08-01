// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ws_riverpod/todo/todo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TodoBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        MaterialApp(home: TodoBody()),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
