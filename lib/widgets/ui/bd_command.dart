import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

class BdCommandItem {
  const BdCommandItem({
    required this.id,
    required this.label,
    this.subtitle,
    this.leading,
    this.keywords = const [],
    this.onSelected,
  });
  final String id;
  final String label;
  final String? subtitle;
  final Widget? leading;
  final List<String> keywords;
  final VoidCallback? onSelected;
}

class BdCommand extends StatefulWidget {
  const BdCommand({
    super.key,
    required this.items,
    this.placeholder = 'Search…',
    this.onSelected,
    this.emptyText = 'No results.',
  });

  final List<BdCommandItem> items;
  final String placeholder;
  final ValueChanged<BdCommandItem>? onSelected;
  final String emptyText;

  @override
  State<BdCommand> createState() => _BdCommandState();
}

class _BdCommandState extends State<BdCommand> {
  final TextEditingController _ctl = TextEditingController();

  @override
  void dispose() {
    _ctl.dispose();
    super.dispose();
  }

  List<BdCommandItem> get _filtered {
    final q = _ctl.text.trim().toLowerCase();
    if (q.isEmpty) return widget.items;
    return widget.items.where((it) {
      final hay = [
        it.label,
        it.subtitle ?? '',
        ...it.keywords,
      ].join(' ').toLowerCase();
      return hay.contains(q);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bd = BdColors.of(context);
    return Container(
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: bd.border),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Icon(Icons.search, size: 16, color: scheme.onSurfaceVariant),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: _ctl,
                    onChanged: (_) => setState(() {}),
                    decoration: InputDecoration(
                      hintText: widget.placeholder,
                      isDense: true,
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: scheme.onSurfaceVariant),
                    ),
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          Container(height: 1, color: bd.border),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 320),
            child: _filtered.isEmpty
                ? Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      widget.emptyText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: scheme.onSurfaceVariant,
                        fontSize: 13,
                      ),
                    ),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: _filtered.length,
                    itemBuilder: (ctx, i) {
                      final it = _filtered[i];
                      return InkWell(
                        onTap: () {
                          it.onSelected?.call();
                          widget.onSelected?.call(it);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10,
                          ),
                          child: Row(
                            children: [
                              if (it.leading != null) ...[
                                IconTheme.merge(
                                  data: IconThemeData(
                                    size: 16,
                                    color: scheme.onSurfaceVariant,
                                  ),
                                  child: it.leading!,
                                ),
                                const SizedBox(width: 10),
                              ],
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      it.label,
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                    if (it.subtitle != null)
                                      Text(
                                        it.subtitle!,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: scheme.onSurfaceVariant,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
