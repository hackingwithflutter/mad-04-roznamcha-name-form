import 'package:material_ui/material_ui.dart';

/// Step 2 of Roznamcha: the form that asks for the user's name.
///
/// A StatefulWidget, because this screen has things to remember while it is
/// shown: the text typed so far, and the Form's state. The widget class holds
/// only what it was given (`onSubmit`). The State class below holds the rest.
class NameFormScreen extends StatefulWidget {
  const NameFormScreen({super.key, required this.onSubmit});

  /// Called with the name once it passes validation. The screen doesn't know
  /// what happens next: whoever built it decides (see app_flow.dart).
  final ValueChanged<String> onSubmit;

  @override
  State<NameFormScreen> createState() => _NameFormScreenState();
}

class _NameFormScreenState extends State<NameFormScreen> {
  // The key is a handle to the Form's state, so _submit can ask it to
  // validate.
  final _formKey = GlobalKey<FormState>();
  // The controller holds the text in the field, and lets _submit read it.
  final _nameController = TextEditingController();

  // TODO 3: A controller must be released when the screen goes away, or it
  // leaks. Override `dispose`: call `_nameController.dispose()`, then
  // `super.dispose()` last. Put the method here, above `_validateName`.

  /// Returns null when the name is fine, or the message to show under the
  /// field. The Form calls it with the field's text when it validates.
  String? _validateName(String? value) {
    // TODO 4: Trim `value` (it may be null: use `?.` and `?? ''`). Return
    // 'Please enter your name.' if the trimmed name is empty, and
    // 'A name needs at least 2 letters.' if it is shorter than 2 characters.
    // Otherwise return null: the name is fine.
    return null;
  }

  /// Runs when the user taps Continue, or the keyboard's done key.
  void _submit() {
    // TODO 5: Ask the Form to validate: `_formKey.currentState!.validate()`
    // runs every field's validator and returns true when all of them returned
    // null. If it does, call `widget.onSubmit` with the trimmed text of
    // `_nameController`.
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          // A Form groups its fields, so one call validates all of them.
          child: Form(
            key: _formKey,
            child: Column(
              // stretch: every child is as wide as the Column, the button too.
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'What is your name?',
                  style: text.headlineMedium?.copyWith(
                    color: colors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Roznamcha uses it to greet you.',
                  style: text.bodyLarge?.copyWith(
                    color: colors.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 32),
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'Your name',
                    hintText: 'For example, Ali',
                    border: OutlineInputBorder(),
                  ),
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.done,
                  // The Form calls this function when it validates.
                  validator: _validateName,
                  // The keyboard's done key does the same as the button.
                  onFieldSubmitted: (_) => _submit(),
                ),
                const SizedBox(height: 24),
                FilledButton(
                  // A method as a value: no parentheses, it isn't called here.
                  onPressed: _submit,
                  child: const Text('Continue'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
