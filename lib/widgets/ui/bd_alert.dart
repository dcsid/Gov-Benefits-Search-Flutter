import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

enum BdAlertVariant { defaultV, destructive, success, warning, info }

class BdAlert extends StatelessWidget {
  const BdAlert({
    super.key,
    this.icon,
    this.title,
    required this.description,
    this.variant = BdAlertVariant.defaultV,
  });

  final Widget? icon;
  final String? title;
  final Widget description;
  final BdAlertVariant variant;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bd = BdColors.of(context);
    final (bg, fg, border) = switch (variant) {
      BdAlertVariant.defaultV => (scheme.surface, scheme.onSurface, bd.border),
      BdAlertVariant.destructive => (
        scheme.errorContainer,
        scheme.error,
        scheme.error.withValues(alpha: 0.5),
      ),
      BdAlertVariant.success => (
        bd.successSoft,
        bd.success,
        bd.success.withValues(alpha: 0.4),
      ),
      BdAlertVariant.warning => (
        bd.warningSoft,
        bd.warning,
        bd.warning.withValues(alpha: 0.5),
      ),
      BdAlertVariant.info => (
        bd.infoSoft,
        bd.info,
        bd.info.withValues(alpha: 0.4),
      ),
    };
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: border),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null) ...[
            IconTheme.merge(
              data: IconThemeData(size: 18, color: fg),
              child: icon!,
            ),
            const SizedBox(width: 12),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title != null) ...[
                  Text(
                    title!,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: fg,
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
                DefaultTextStyle.merge(
                  style: TextStyle(fontSize: 13, color: fg, height: 1.45),
                  child: description,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
