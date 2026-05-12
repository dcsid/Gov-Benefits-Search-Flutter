import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../icons/bd_icons.dart';

class BdLogo extends StatelessWidget {
  const BdLogo({
    super.key,
    this.brandName = 'Benefits Digger',
    this.compact = false,
    this.linkToHome = true,
  });

  final String brandName;
  final bool compact;
  final bool linkToHome;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    // RepaintBoundary on the painted logo mark: it appears in the chrome
    // on every page and never changes between routes, so caching its
    // layer means scroll/route repaints don't re-paint the SVG-style
    // strokes inside CustomPaint.
    final mark = RepaintBoundary(
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: scheme.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: BdIcons.logoMark(size: 18, color: scheme.onPrimary),
      ),
    );

    final row = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        mark,
        if (!compact) ...[
          const SizedBox(width: 10),
          Text(
            brandName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.2,
              color: scheme.onSurface,
            ),
          ),
        ],
      ],
    );

    if (!linkToHome) return Semantics(label: brandName, child: row);

    return Semantics(
      link: true,
      label: brandName,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () => GoRouter.of(context).go('/'),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          child: row,
        ),
      ),
    );
  }
}
