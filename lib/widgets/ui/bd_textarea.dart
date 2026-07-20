import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

class BdTextarea extends StatelessWidget {
  const BdTextarea({
    super.key,
    this.controller,
    this.value,
    this.onChanged,
    this.placeholder,
    this.minLines = 4,
    this.maxLines = 8,
    this.enabled = true,
  });

  final TextEditingController? controller;
  final String? value;
  final ValueChanged<String>? onChanged;
  final String? placeholder;
  final int minLines;
  final int maxLines;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final bd = BdColors.of(context);
    final scheme = Theme.of(context).colorScheme;
    return TextField(
      controller:
          controller ??
          (value != null ? TextEditingController(text: value) : null),
      onChanged: onChanged,
      enabled: enabled,
      minLines: minLines,
      maxLines: maxLines,
      style: const TextStyle(fontSize: 14),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),
        hintText: placeholder,
        hintStyle: TextStyle(color: scheme.onSurfaceVariant),
        filled: true,
        fillColor: scheme.surface,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: bd.borderStrong),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: scheme.primary, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: bd.border),
        ),
      ),
    );
  }
}
