import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

class BdDialog extends StatelessWidget {
  const BdDialog({
    super.key,
    this.title,
    this.description,
    required this.child,
    this.footer,
    this.maxWidth = 480,
    this.showCloseButton = true,
  });

  final String? title;
  final String? description;
  final Widget child;
  final Widget? footer;
  final double maxWidth;
  final bool showCloseButton;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bd = BdColors.of(context);
    return Dialog(
      backgroundColor: scheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: bd.border),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (title != null) ...[
                    Text(
                      title!,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 6),
                  ],
                  if (description != null) ...[
                    Text(
                      description!,
                      style: TextStyle(fontSize: 14, color: scheme.onSurfaceVariant),
                    ),
                    const SizedBox(height: 16),
                  ] else if (title != null)
                    const SizedBox(height: 12),
                  child,
                  if (footer != null) ...[
                    const SizedBox(height: 20),
                    footer!,
                  ],
                ],
              ),
              if (showCloseButton)
                Positioned(
                  top: -8,
                  right: -8,
                  child: IconButton(
                    icon: const Icon(Icons.close, size: 18),
                    splashRadius: 20,
                    color: scheme.onSurfaceVariant,
                    onPressed: () => Navigator.of(context).maybePop(),
                    tooltip: 'Close',
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<T?> showBdDialog<T>({
  required BuildContext context,
  required Widget Function(BuildContext) builder,
  bool barrierDismissible = true,
}) {
  return showDialog<T>(
    context: context,
    barrierDismissible: barrierDismissible,
    barrierColor: Colors.black.withValues(alpha: 0.6),
    builder: builder,
  );
}
