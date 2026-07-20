import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

enum BdButtonVariant {
  primary,
  secondary,
  outline,
  ghost,
  link,
  destructive,
  accent,
}

enum BdButtonSize { sm, md, lg, xl, icon }

class BdButton extends StatelessWidget {
  const BdButton({
    super.key,
    this.onPressed,
    this.variant = BdButtonVariant.primary,
    this.size = BdButtonSize.md,
    this.leading,
    this.trailing,
    this.child,
    this.label,
    this.expand = false,
    this.semanticLabel,
  }) : assert(child != null || label != null);

  final VoidCallback? onPressed;
  final BdButtonVariant variant;
  final BdButtonSize size;
  final Widget? leading;
  final Widget? trailing;
  final Widget? child;
  final String? label;
  final bool expand;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    // One Theme.of (was two: colorScheme + textTheme via _textStyle).
    // BdButton is the most-used widget in the app; the doubled lookup
    // attached two listeners per instance.
    final t = Theme.of(context);
    final scheme = t.colorScheme;
    final bd = BdColors.of(context);

    final bg = _bg(scheme, bd);
    final fg = _fg(scheme, bd);
    final border = _border(scheme, bd);
    final radius = BorderRadius.circular(_radius());
    final pad = _padding();
    final height = _height();
    final textStyle = _textStyle(t.textTheme, fg);

    final content =
        child ??
        DefaultTextStyle.merge(
          style: textStyle,
          child: _row(textStyle.color ?? fg),
        );

    final core = SizedBox(
      height: height,
      width: size == BdButtonSize.icon ? height : null,
      child: Material(
        color: bg,
        shape: RoundedRectangleBorder(
          borderRadius: radius,
          side: border == null
              ? BorderSide.none
              : BorderSide(color: border, width: 1),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onPressed,
          splashColor: fg.withValues(alpha: 0.08),
          hoverColor: fg.withValues(alpha: 0.04),
          child: Padding(
            padding: pad,
            child: Center(
              widthFactor: expand ? null : 1,
              child: variant == BdButtonVariant.link
                  ? _Underlined(child: content)
                  : content,
            ),
          ),
        ),
      ),
    );

    final result = Opacity(opacity: onPressed == null ? 0.5 : 1, child: core);

    return Semantics(
      button: true,
      enabled: onPressed != null,
      label: semanticLabel,
      child: expand ? SizedBox(width: double.infinity, child: result) : result,
    );
  }

  Widget _row(Color color) {
    final children = <Widget>[];
    if (leading != null) {
      children.add(
        IconTheme.merge(
          data: IconThemeData(size: 16, color: color),
          child: leading!,
        ),
      );
    }
    if (label != null) children.add(Text(label!));
    if (trailing != null) {
      children.add(
        IconTheme.merge(
          data: IconThemeData(size: 16, color: color),
          child: trailing!,
        ),
      );
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (var i = 0; i < children.length; i++) ...[
          if (i > 0) const SizedBox(width: 8),
          children[i],
        ],
      ],
    );
  }

  Color _bg(ColorScheme scheme, BdColors bd) {
    switch (variant) {
      case BdButtonVariant.primary:
        return scheme.primary;
      case BdButtonVariant.secondary:
        return scheme.secondary;
      case BdButtonVariant.destructive:
        return scheme.error;
      case BdButtonVariant.accent:
        return bd.accent;
      case BdButtonVariant.outline:
        return scheme.surface;
      case BdButtonVariant.ghost:
      case BdButtonVariant.link:
        return Colors.transparent;
    }
  }

  Color _fg(ColorScheme scheme, BdColors bd) {
    switch (variant) {
      case BdButtonVariant.primary:
        return scheme.onPrimary;
      case BdButtonVariant.secondary:
        return scheme.onSecondary;
      case BdButtonVariant.destructive:
        return scheme.onError;
      case BdButtonVariant.accent:
        return bd.onAccent;
      case BdButtonVariant.outline:
      case BdButtonVariant.ghost:
        return scheme.onSurface;
      case BdButtonVariant.link:
        return scheme.primary;
    }
  }

  Color? _border(ColorScheme scheme, BdColors bd) {
    if (variant == BdButtonVariant.outline) return bd.borderStrong;
    return null;
  }

  double _radius() {
    if (size == BdButtonSize.xl) return 12;
    return 10;
  }

  EdgeInsets _padding() {
    switch (size) {
      case BdButtonSize.sm:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 0);
      case BdButtonSize.md:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 0);
      case BdButtonSize.lg:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 0);
      case BdButtonSize.xl:
        return const EdgeInsets.symmetric(horizontal: 28, vertical: 0);
      case BdButtonSize.icon:
        return EdgeInsets.zero;
    }
  }

  double _height() {
    switch (size) {
      case BdButtonSize.sm:
        return 36;
      case BdButtonSize.md:
        return 40;
      case BdButtonSize.lg:
        return 44;
      case BdButtonSize.xl:
        return 48;
      case BdButtonSize.icon:
        return 40;
    }
  }

  TextStyle _textStyle(TextTheme textTheme, Color fg) {
    final base = textTheme.bodyMedium ?? const TextStyle();
    switch (size) {
      case BdButtonSize.sm:
        return base.copyWith(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: fg,
        );
      case BdButtonSize.lg:
      case BdButtonSize.xl:
        return base.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: fg,
        );
      case BdButtonSize.md:
      case BdButtonSize.icon:
        return base.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: fg,
        );
    }
  }
}

class _Underlined extends StatelessWidget {
  const _Underlined({required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) => DefaultTextStyle.merge(
    style: const TextStyle(decoration: TextDecoration.underline),
    child: child,
  );
}
