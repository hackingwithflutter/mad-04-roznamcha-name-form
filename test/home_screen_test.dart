import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'package:roznamcha/screens/home_screen.dart';

import 'phone.dart';

void main() {
  // Both tests pass before and after the TODOs: the home screen is given code.
  testWidgets('The home screen greets the user by name', (tester) async {
    await pumpOnPhone(tester, const MaterialApp(home: HomeScreen(name: 'Ali')));
    expect(find.text('Hi, Ali'), findsOneWidget);
  });

  testWidgets('Nothing overflows on the home screen', (tester) async {
    await pumpOnPhone(
      tester,
      const MaterialApp(home: HomeScreen(name: 'Fatima Noor')),
    );
    expect(tester.takeException(), isNull);
  });
}
