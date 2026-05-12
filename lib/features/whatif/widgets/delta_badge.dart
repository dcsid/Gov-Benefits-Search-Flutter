import 'package:flutter/material.dart';

import '../../../widgets/ui/bd_badge.dart';
import '../../../widgets/ui/bd_card.dart';

class DeltaBadge extends StatelessWidget {
  const DeltaBadge({
    super.key,
    required this.label,
    required this.value,
    this.unit = 'programs',
  });

  final String label;
  final int value;
  final String unit;

  @override
  Widget build(BuildContext context) {
    final variant = value > 0
        ? BdBadgeVariant.success
        : value < 0
        ? BdBadgeVariant.destructive
        : BdBadgeVariant.outline;
    final icon = value > 0
        ? Icons.arrow_upward
        : value < 0
        ? Icons.arrow_downward
        : Icons.remove;
    final sign = value > 0 ? '+' : '';
    return BdCard(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label.toUpperCase(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              letterSpacing: 1.2,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 6),
          BdBadge(
            label: unit.isEmpty ? '$sign$value' : '$sign$value $unit',
            variant: variant,
            leading: Icon(icon),
          ),
        ],
      ),
    );
  }
}
