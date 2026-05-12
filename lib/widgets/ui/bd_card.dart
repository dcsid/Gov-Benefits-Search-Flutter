import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

class BdCard extends StatelessWidget {
  const BdCard({
    super.key,
    required this.child,
    this.padding,
    this.onTap,
    this.elevation = 0,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bd = BdColors.of(context);
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: BorderSide(color: bd.border),
    );
    final body = Padding(
      padding: padding ?? EdgeInsets.zero,
      child: child,
    );
    return Material(
      color: scheme.surface,
      shape: shape,
      elevation: elevation,
      shadowColor: scheme.shadow.withValues(alpha: 0.06),
      surfaceTintColor: Colors.transparent,
      clipBehavior: Clip.antiAlias,
      child: onTap == null ? body : InkWell(onTap: onTap, child: body),
    );
  }
}

class BdCardHeader extends StatelessWidget {
  const BdCardHeader({
    super.key,
    this.title,
    this.description,
    this.trailing,
    this.padding = const EdgeInsets.fromLTRB(24, 24, 24, 0),
  });

  final Widget? title;
  final Widget? description;
  final Widget? trailing;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title != null) BdCardTitle(child: title!),
                if (description != null) ...[
                  const SizedBox(height: 6),
                  BdCardDescription(child: description!),
                ],
              ],
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}

class BdCardTitle extends StatelessWidget {
  const BdCardTitle({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme.titleMedium;
    return DefaultTextStyle.merge(
      style: t?.copyWith(fontWeight: FontWeight.w600, height: 1.1),
      child: child,
    );
  }
}

class BdCardDescription extends StatelessWidget {
  const BdCardDescription({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return DefaultTextStyle.merge(
      style: TextStyle(fontSize: 14, color: scheme.onSurfaceVariant),
      child: child,
    );
  }
}

class BdCardContent extends StatelessWidget {
  const BdCardContent({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.fromLTRB(24, 24, 24, 24),
  });
  final Widget child;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) => Padding(padding: padding, child: child);
}

class BdCardFooter extends StatelessWidget {
  const BdCardFooter({
    super.key,
    required this.children,
    this.padding = const EdgeInsets.fromLTRB(24, 0, 24, 24),
    this.spacing = 12,
  });
  final List<Widget> children;
  final EdgeInsetsGeometry padding;
  final double spacing;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          for (var i = 0; i < children.length; i++) ...[
            if (i > 0) SizedBox(width: spacing),
            children[i],
          ],
        ],
      ),
    );
  }
}
