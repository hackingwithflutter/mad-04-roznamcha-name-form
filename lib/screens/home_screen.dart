import 'package:material_ui/material_ui.dart';

/// Step 2 of Roznamcha: the home screen. For now it only greets the user by
/// name. Step 3 fills it with the diary's entries.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.name});

  /// The name from the form, given to this screen by app_flow.dart.
  final String name;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      // An AppBar sits under the status bar by itself, so no SafeArea here.
      appBar: AppBar(title: const Text('Roznamcha')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        // Center makes the Column sit in the middle of the width. Without it,
        // the Column is only as wide as its widest child, at the left.
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.auto_stories, size: 64, color: colors.primary),
              const SizedBox(height: 16),
              Text(
                'Hi, $name',
                textAlign: TextAlign.center,
                style: text.headlineMedium?.copyWith(
                  color: colors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Your diary is empty for now.',
                textAlign: TextAlign.center,
                style: text.bodyLarge?.copyWith(color: colors.onSurfaceVariant),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
