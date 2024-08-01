// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ws_riverpod/todo/todo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TodoPage', () {
    group('route', () {
      test('is routable', () {
        expect(TodoPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders TodoView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: TodoPage()));
      expect(find.byType(TodoView), findsOneWidget);
    });
  });
}
