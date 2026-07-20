import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

class BdTooltip extends StatelessWidget {
  const BdTooltip({super.key, required this.message, required this.child});

  final String message;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bd = BdColors.of(context);
    return Tooltip(
      message: message,
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: bd.border),
        boxShadow: [
          BoxShadow(
            color: scheme.shadow.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      textStyle: TextStyle(fontSize: 12, color: scheme.onSurface),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      waitDuration: const Duration(milliseconds: 300),
      child: child,
    );
  }
}
