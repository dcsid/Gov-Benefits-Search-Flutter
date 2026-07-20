import 'package:flutter/material.dart';

class BdSkeleton extends StatefulWidget {
  const BdSkeleton({
    super.key,
    this.width,
    this.height = 16,
    this.borderRadius,
    this.circle = false,
  });

  final double? width;
  final double height;
  final BorderRadius? borderRadius;
  final bool circle;

  @override
  State<BdSkeleton> createState() => _BdSkeletonState();
}

class _BdSkeletonState extends State<BdSkeleton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1500),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _ctl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return AnimatedBuilder(
      animation: _ctl,
      builder: (context, _) {
        final t = (_ctl.value - 0.5).abs() * 2;
        final color =
            Color.lerp(
              scheme.surfaceContainerHigh,
              scheme.surfaceContainerHighest,
              t,
            ) ??
            scheme.surfaceContainerHigh;
        return Container(
          width: widget.circle ? widget.height : widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: color,
            shape: widget.circle ? BoxShape.circle : BoxShape.rectangle,
            borderRadius: widget.circle
                ? null
                : widget.borderRadius ?? BorderRadius.circular(6),
          ),
        );
      },
    );
  }
}
