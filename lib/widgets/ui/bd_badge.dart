import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

enum BdBadgeVariant {
  primary,
  secondary,
  destructive,
  outline,
  success,
  warning,
}

class BdBadge extends StatelessWidget {
  const BdBadge({
    super.key,
    required this.label,
    this.variant = BdBadgeVariant.primary,
    this.leading,
  });

  final String label;
  final BdBadgeVariant variant;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bd = BdColors.of(context);
    final (bg, fg, border) = switch (variant) {
      BdBadgeVariant.primary => (scheme.primary, scheme.onPrimary, null),
      BdBadgeVariant.secondary => (scheme.secondary, scheme.onSecondary, null),
      BdBadgeVariant.destructive => (scheme.error, scheme.onError, null),
      BdBadgeVariant.outline => (
        Colors.transparent,
        scheme.onSurface,
        bd.borderStrong,
      ),
      BdBadgeVariant.success => (bd.success, bd.onSuccess, null),
      BdBadgeVariant.warning => (bd.warning, bd.onWarning, null),
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(999),
        border: border == null ? null : Border.all(color: border),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) ...[
            IconTheme.merge(
              data: IconThemeData(size: 12, color: fg),
              child: leading!,
            ),
            const SizedBox(width: 4),
          ],
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: fg,
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
