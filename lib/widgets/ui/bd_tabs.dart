import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

class BdTab {
  const BdTab({required this.value, required this.label, required this.content});
  final String value;
  final String label;
  final Widget content;
}

class BdTabs extends StatefulWidget {
  const BdTabs({
    super.key,
    required this.tabs,
    this.initialValue,
    this.onChanged,
  });

  final List<BdTab> tabs;
  final String? initialValue;
  final ValueChanged<String>? onChanged;

  @override
  State<BdTabs> createState() => _BdTabsState();
}

class _BdTabsState extends State<BdTabs> {
  late String _value =
      widget.initialValue ?? (widget.tabs.isNotEmpty ? widget.tabs.first.value : '');

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bd = BdColors.of(context);
    final active = widget.tabs.firstWhere(
      (t) => t.value == _value,
      orElse: () => widget.tabs.first,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: bd.muted,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              for (final t in widget.tabs)
                Expanded(
                  child: _TabTrigger(
                    label: t.label,
                    selected: t.value == _value,
                    onTap: () {
                      setState(() => _value = t.value);
                      widget.onChanged?.call(t.value);
                    },
                    bg: scheme.surface,
                    fgSelected: scheme.onSurface,
                    fgUnselected: bd.onMuted,
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        active.content,
      ],
    );
  }
}

class _TabTrigger extends StatelessWidget {
  const _TabTrigger({
    required this.label,
    required this.selected,
    required this.onTap,
    required this.bg,
    required this.fgSelected,
    required this.fgUnselected,
  });
  final String label;
  final bool selected;
  final VoidCallback onTap;
  final Color bg;
  final Color fgSelected;
  final Color fgUnselected;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? bg : Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(6),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: selected ? fgSelected : fgUnselected,
            ),
          ),
        ),
      ),
    );
  }
}
