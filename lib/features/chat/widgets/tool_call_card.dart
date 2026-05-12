import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../widgets/ui/bd_card.dart';
import '../state/chat_controller.dart';

class ToolCallCard extends StatefulWidget {
  const ToolCallCard({super.key, required this.call});

  final UiToolCall call;

  @override
  State<ToolCallCard> createState() => _ToolCallCardState();
}

class _ToolCallCardState extends State<ToolCallCard> {
  bool _open = false;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final argsJson = const JsonEncoder.withIndent('  ').convert(widget.call.args);
    final resultJson = widget.call.result == null
        ? '(no result yet)'
        : const JsonEncoder.withIndent('  ').convert(widget.call.result);

    return BdCard(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          InkWell(
            onTap: () => setState(() => _open = !_open),
            child: Row(
              children: <Widget>[
                Icon(Icons.build, size: 14, color: scheme.tertiary),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    widget.call.name,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Icon(
                  _open ? Icons.expand_less : Icons.expand_more,
                  size: 18,
                ),
              ],
            ),
          ),
          if (_open) ...<Widget>[
            const SizedBox(height: 8),
            Text(
              'ARGS',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: scheme.onSurfaceVariant,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 4),
            SelectableText(
              argsJson,
              style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
            ),
            const SizedBox(height: 8),
            Text(
              'RESULT',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: scheme.onSurfaceVariant,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 4),
            SelectableText(
              resultJson,
              style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
            ),
          ],
        ],
      ),
    );
  }
}
