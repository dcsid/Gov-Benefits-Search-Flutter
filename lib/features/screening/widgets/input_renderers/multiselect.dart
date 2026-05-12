import 'package:flutter/material.dart';

import '../../state/screening_controller.dart';

class MultiSelectInputRenderer extends StatelessWidget {
  const MultiSelectInputRenderer({
    super.key,
    required this.options,
    required this.value,
    required this.onChanged,
  });

  final List<QuestionOption> options;
  final List<String> value;
  final ValueChanged<List<String>> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        for (final opt in options)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: _Row(
              label: opt.label,
              selected: value.contains(opt.value),
              onTap: () {
                final next = List<String>.from(value);
                if (next.contains(opt.value)) {
                  next.remove(opt.value);
                } else {
                  next.add(opt.value);
                }
                onChanged(next);
              },
            ),
          ),
      ],
    );
  }
}

class _Row extends StatelessWidget {
  const _Row({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final border = selected ? scheme.primary : scheme.outlineVariant;
    final bg = selected ? scheme.primary.withValues(alpha: 0.08) : scheme.surface;

    return Material(
      color: bg,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: border, width: selected ? 1.5 : 1),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          child: Row(
            children: <Widget>[
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: selected ? scheme.primary : scheme.outline,
                    width: 1.5,
                  ),
                  color: selected ? scheme.primary : Colors.transparent,
                ),
                child: selected
                    ? Icon(Icons.check, size: 14, color: scheme.onPrimary)
                    : null,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(label, style: const TextStyle(fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
