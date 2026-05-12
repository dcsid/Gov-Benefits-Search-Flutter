import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

class BdAccordionItem {
  const BdAccordionItem({
    required this.value,
    required this.title,
    required this.content,
  });
  final String value;
  final Widget title;
  final Widget content;
}

class BdAccordion extends StatefulWidget {
  const BdAccordion({
    super.key,
    required this.items,
    this.allowMultiple = false,
    this.initiallyOpen = const <String>{},
  });

  final List<BdAccordionItem> items;
  final bool allowMultiple;
  final Set<String> initiallyOpen;

  @override
  State<BdAccordion> createState() => _BdAccordionState();
}

class _BdAccordionState extends State<BdAccordion> {
  late Set<String> _open = {...widget.initiallyOpen};

  @override
  Widget build(BuildContext context) {
    final bd = BdColors.of(context);
    return Column(
      children: [
        for (final item in widget.items)
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: bd.border)),
            ),
            child: _AccordionRow(
              item: item,
              open: _open.contains(item.value),
              onTap: () => setState(() {
                final isOpen = _open.contains(item.value);
                if (widget.allowMultiple) {
                  isOpen ? _open.remove(item.value) : _open.add(item.value);
                } else {
                  _open = isOpen ? <String>{} : {item.value};
                }
              }),
            ),
          ),
      ],
    );
  }
}

class _AccordionRow extends StatelessWidget {
  const _AccordionRow({required this.item, required this.open, required this.onTap});
  final BdAccordionItem item;
  final bool open;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Row(
              children: [
                Expanded(
                  child: DefaultTextStyle.merge(
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    child: item.title,
                  ),
                ),
                // Instant flip — no AnimatedRotation, no 200ms tween.
                Transform.rotate(
                  angle: open ? 3.14159 : 0,
                  child: Icon(Icons.expand_more, size: 18, color: scheme.onSurfaceVariant),
                ),
              ],
            ),
          ),
        ),
        // Instant show/hide — no AnimatedCrossFade.
        if (open)
          Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: DefaultTextStyle.merge(
              style: const TextStyle(fontSize: 14, height: 1.5),
              child: item.content,
            ),
          ),
      ],
    );
  }
}
