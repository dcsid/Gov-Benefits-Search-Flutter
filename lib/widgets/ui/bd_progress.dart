import 'package:flutter/material.dart';

class BdProgress extends StatelessWidget {
  const BdProgress({
    super.key,
    this.value,
    this.height = 8,
  });

  /// 0..1 (null for indeterminate).
  final double? value;
  final double height;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(height / 2),
      child: SizedBox(
        height: height,
        child: LinearProgressIndicator(
          value: value,
          backgroundColor: scheme.surfaceContainerHigh,
          valueColor: AlwaysStoppedAnimation<Color>(scheme.primary),
        ),
      ),
    );
  }
}
