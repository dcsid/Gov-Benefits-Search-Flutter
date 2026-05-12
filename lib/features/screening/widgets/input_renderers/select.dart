import 'package:flutter/material.dart';

import '../../state/screening_controller.dart';

class SelectInputRenderer extends StatelessWidget {
  const SelectInputRenderer({
    super.key,
    required this.options,
    required this.value,
    required this.onChanged,
  });

  final List<QuestionOption> options;
  final String? value;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        for (final opt in options)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: _Choice(
              label: opt.label,
              selected: value == opt.value,
              onTap: () => onChanged(opt.value),
            ),
          ),
      ],
    );
  }
}

class _Choice extends StatelessWidget {
  const _Choice({
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
    final fg = selected ? scheme.primary : scheme.onSurface;
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
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: selected ? scheme.primary : scheme.outline,
                    width: 1.5,
                  ),
                  color: selected ? scheme.primary : Colors.transparent,
                ),
                child: selected
                    ? Center(
                        child: Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            color: scheme.onPrimary,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    : null,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(label, style: TextStyle(color: fg, fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
