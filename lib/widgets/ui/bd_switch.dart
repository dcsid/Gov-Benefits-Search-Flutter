import 'package:flutter/material.dart';

class BdSwitch extends StatelessWidget {
  const BdSwitch({
    super.key,
    required this.value,
    this.onChanged,
    this.semanticLabel,
  });

  final bool value;
  final ValueChanged<bool>? onChanged;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Semantics(
      label: semanticLabel,
      toggled: value,
      child: Switch.adaptive(
        value: value,
        onChanged: onChanged,
        activeThumbColor: scheme.primary,
        inactiveTrackColor: scheme.surfaceContainerHigh,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
