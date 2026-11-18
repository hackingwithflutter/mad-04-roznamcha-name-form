import 'package:material_ui/material_ui.dart';

import 'screens/home_screen.dart';
import 'screens/name_form_screen.dart';
import 'screens/welcome_screen.dart';

/// Step 2 of Roznamcha: the flow from the welcome screen to the home screen.
///
/// This widget remembers two things: whether the user tapped "Get started",
/// and their name. Its `build` reads them and returns the right screen. A
/// screen never switches to the next one itself: it calls the callback it was
/// given, this widget changes its state with `setState`, and `build` runs
/// again.
class AppFlow extends StatefulWidget {
  const AppFlow({super.key});

  @override
  State<AppFlow> createState() => _AppFlowState();
}

class _AppFlowState extends State<AppFlow> {
  // The state: the values this widget remembers between builds.
  bool _started = false;
  String? _name;

  @override
  Widget build(BuildContext context) {
    // Copy the field into a local variable, so Dart can promote it from
    // `String?` to `String` inside the `if` (week 2: promotion works for
    // local variables, not for fields).
    final name = _name;
    if (name != null) {
      return HomeScreen(name: name);
    }
    if (_started) {
      return NameFormScreen(
        onSubmit: (value) {
          // TODO 6: This line changes the state, but the screen doesn't know.
          // Wrap it in `setState(() { ... });`, so build runs again and
          // returns the home screen.
          _name = value;
        },
      );
    }
    return WelcomeScreen(
      onGetStarted: () {
        // TODO 2: This line changes the state, but the screen doesn't know.
        // Wrap it in `setState(() { ... });`, so build runs again and
        // returns the name form.
        _started = true;
      },
    );
  }
}
