import 'package:flutter/material.dart';

import '../../../widgets/ui/bd_switch.dart';

class ChatContextToggle extends StatelessWidget {
  const ChatContextToggle({
    super.key,
    required this.value,
    required this.onChanged,
    this.hasSession = false,
  });

  final bool value;
  final ValueChanged<bool> onChanged;
  final bool hasSession;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerLow,
        border: Border(bottom: BorderSide(color: scheme.outlineVariant)),
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.assignment, size: 16, color: scheme.tertiary),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value
                  ? 'Using your screening context'
                  : hasSession
                  ? 'Not using your screening yet'
                  : 'No active screening — general questions only',
              style: TextStyle(
                color: scheme.onSurfaceVariant,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          BdSwitch(value: value, onChanged: hasSession ? onChanged : (_) {}),
        ],
      ),
    );
  }
}
