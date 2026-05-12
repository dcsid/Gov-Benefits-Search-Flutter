import 'package:flutter/material.dart';

import '../../../../widgets/ui/bd_button.dart';
import '../../state/screening_controller.dart';

/// Single-choice picker for `input_type: "radio"` (and the dispatcher's
/// fallback for unknown input types that still ship `options`).
///
/// Renders one [BdButton] per option in a [Wrap]. The selected option uses
/// the primary variant; others use outline. Tapping any option calls
/// [onChanged] with that option's `value`.
class RadioInputRenderer extends StatelessWidget {
  const RadioInputRenderer({
    super.key,
    required this.options,
    required this.value,
    required this.onChanged,
  });

  final List<QuestionOption> options;
  final String? value;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: <Widget>[
        for (final opt in options)
          BdButton(
            label: opt.label,
            variant: opt.value == value
                ? BdButtonVariant.primary
                : BdButtonVariant.outline,
            size: BdButtonSize.lg,
            onPressed: () => onChanged(opt.value),
            semanticLabel: opt.label,
          ),
      ],
    );
  }
}
