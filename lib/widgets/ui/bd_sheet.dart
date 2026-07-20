import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

enum BdSheetSide { left, right, top, bottom }

class BdSheet extends StatelessWidget {
  const BdSheet({
    super.key,
    this.title,
    this.description,
    required this.child,
    this.side = BdSheetSide.right,
  });

  final String? title;
  final String? description;
  final Widget child;
  final BdSheetSide side;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bd = BdColors.of(context);
    return Material(
      color: scheme.surface,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (title != null)
                          Text(
                            title!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        if (description != null) ...[
                          const SizedBox(height: 4),
                          Text(
                            description!,
                            style: TextStyle(
                              fontSize: 14,
                              color: scheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, size: 18),
                    onPressed: () => Navigator.of(context).maybePop(),
                    tooltip: 'Close',
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Container(height: 1, color: bd.border),
              const SizedBox(height: 16),
              Flexible(child: SingleChildScrollView(child: child)),
            ],
          ),
        ),
      ),
    );
  }
}

Future<T?> showBdSheet<T>({
  required BuildContext context,
  required Widget Function(BuildContext) builder,
  BdSheetSide side = BdSheetSide.right,
}) {
  if (side == BdSheetSide.bottom) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      builder: builder,
    );
  }
  return showGeneralDialog<T>(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'Sheet',
    barrierColor: Colors.black.withValues(alpha: 0.6),
    // Instant: no slide-in animation. The user has explicitly asked for
    // zero motion in transitions.
    transitionDuration: Duration.zero,
    pageBuilder: (ctx, anim, _) {
      Alignment align;
      switch (side) {
        case BdSheetSide.right:
          align = Alignment.centerRight;
          break;
        case BdSheetSide.left:
          align = Alignment.centerLeft;
          break;
        case BdSheetSide.top:
          align = Alignment.topCenter;
          break;
        case BdSheetSide.bottom:
          align = Alignment.bottomCenter;
          break;
      }
      final isHorizontal =
          side == BdSheetSide.left || side == BdSheetSide.right;
      return Align(
        alignment: align,
        child: Material(
          elevation: 12,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: isHorizontal ? 420 : double.infinity,
              minHeight: isHorizontal ? double.infinity : 0,
            ),
            child: SizedBox(
              width: isHorizontal ? 420 : MediaQuery.of(ctx).size.width,
              height: isHorizontal ? MediaQuery.of(ctx).size.height : null,
              child: builder(ctx),
            ),
          ),
        ),
      );
    },
  );
}
