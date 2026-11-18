import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'package:roznamcha/main.dart';
import 'package:roznamcha/screens/home_screen.dart';
import 'package:roznamcha/screens/name_form_screen.dart';
import 'package:roznamcha/screens/welcome_screen.dart';

import 'phone.dart';

void main() {
  // TODO 2 (it also needs TODO 1)
  testWidgets('Tapping Get started opens the name form', (tester) async {
    await pumpOnPhone(tester, const RoznamchaApp());
    await tester.tap(find.text('Get started'));
    await tester.pump();
    expect(find.byType(NameFormScreen), findsOneWidget);
    expect(find.byType(WelcomeScreen), findsNothing);
  });

  // TODO 5 (it also needs TODO 2 and TODO 4)
  testWidgets(
    'Submitting an empty name shows the error and stays on the form',
    (tester) async {
      await pumpOnPhone(tester, const RoznamchaApp());
      await tester.tap(find.text('Get started'));
      await tester.pump();
      await tester.tap(find.text('Continue'));
      await tester.pump();
      expect(find.text('Please enter your name.'), findsOneWidget);
      expect(find.byType(NameFormScreen), findsOneWidget);
      expect(find.byType(HomeScreen), findsNothing);
    },
  );

  // TODO 6 (it also needs TODO 1, 2 and 5)
  testWidgets('Submitting a name opens the home screen with the greeting', (
    tester,
  ) async {
    await pumpOnPhone(tester, const RoznamchaApp());
    await tester.tap(find.text('Get started'));
    await tester.pump();
    await tester.enterText(find.byType(TextFormField), 'Ali');
    await tester.tap(find.text('Continue'));
    await tester.pump();
    expect(find.byType(HomeScreen), findsOneWidget);
    expect(find.text('Hi, Ali'), findsOneWidget);
    expect(find.byType(NameFormScreen), findsNothing);
  });
}
