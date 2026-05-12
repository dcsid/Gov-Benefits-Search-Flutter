import 'package:flutter/material.dart';

class UnsureButton extends StatelessWidget {
  const UnsureButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(Icons.help_outline, color: scheme.onSurfaceVariant),
      label: Text(
        "I'm not sure",
        style: TextStyle(color: scheme.onSurfaceVariant),
      ),
    );
  }
}
