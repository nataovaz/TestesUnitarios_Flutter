// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:contatos/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:contatos/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const Contatos());
    final HomeState state = tester.state(find.byType(Home));
    final fab = find.byType(FloatingActionButton);

    expect(find.byType(Scaffold), findsOneWidget);
    expect(fab, findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);

    expect(state.contatosList.isEmpty, true);

    await tester.tap(fab);
    await tester.pumpAndSettle();

    expect(find.text("Novo contato"), findsOneWidget);
  });
}
