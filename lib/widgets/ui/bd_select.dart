import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

class BdSelectItem<T> {
  const BdSelectItem({required this.value, required this.label});
  final T value;
  final String label;
}

class BdSelect<T> extends StatelessWidget {
  const BdSelect({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.placeholder,
    this.enabled = true,
  });

  final T? value;
  final List<BdSelectItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final String? placeholder;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final bd = BdColors.of(context);
    final scheme = Theme.of(context).colorScheme;
    return DropdownButtonFormField<T>(
      initialValue: value,
      onChanged: enabled ? onChanged : null,
      isExpanded: true,
      icon: const Icon(Icons.expand_more, size: 18),
      items: [
        for (final it in items)
          DropdownMenuItem<T>(
            value: it.value,
            child: Text(it.label, style: const TextStyle(fontSize: 14)),
          ),
      ],
      hint: placeholder == null
          ? null
          : Text(
              placeholder!,
              style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 14),
            ),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),
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
      ),
    );
  }
}
