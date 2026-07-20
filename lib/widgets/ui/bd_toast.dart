import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

enum BdToastVariant { defaultV, destructive, success, warning, info }

void showBdToast(
  BuildContext context,
  String message, {
  BdToastVariant variant = BdToastVariant.defaultV,
  String? title,
  Duration duration = const Duration(seconds: 4),
  SnackBarAction? action,
}) {
  final scheme = Theme.of(context).colorScheme;
  final bd = BdColors.of(context);

  final (bg, fg) = switch (variant) {
    BdToastVariant.defaultV => (scheme.surface, scheme.onSurface),
    BdToastVariant.destructive => (scheme.error, scheme.onError),
    BdToastVariant.success => (bd.success, bd.onSuccess),
    BdToastVariant.warning => (bd.warning, bd.onWarning),
    BdToastVariant.info => (bd.info, bd.onInfo),
  };

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: bg,
      duration: duration,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: bd.border),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: fg,
              ),
            ),
          Text(message, style: TextStyle(fontSize: 13, color: fg, height: 1.4)),
        ],
      ),
      action: action,
    ),
  );
}
