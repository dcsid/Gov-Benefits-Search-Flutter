import 'package:flutter/material.dart';

import '../../../widgets/ui/bd_button.dart';
import '../../../widgets/ui/bd_card.dart';
import '../state/screening_controller.dart';
import 'input_renderers/boolean.dart';
import 'input_renderers/date.dart';
import 'input_renderers/multiselect.dart';
import 'input_renderers/number.dart';
import 'input_renderers/radio.dart';
import 'input_renderers/select.dart';
import 'input_renderers/text.dart';
import 'unsure_button.dart';

class BdQuestionCard extends StatefulWidget {
  const BdQuestionCard({
    super.key,
    required this.question,
    required this.draft,
    required this.onChange,
    required this.onSubmit,
    required this.onUnsure,
    this.onBack,
    this.busy = false,
  });

  final ScreeningQuestion question;
  final Object? draft;
  final ValueChanged<Object?> onChange;
  final VoidCallback onSubmit;
  final VoidCallback onUnsure;
  final VoidCallback? onBack;
  final bool busy;

  @override
  State<BdQuestionCard> createState() => _BdQuestionCardState();
}

class _BdQuestionCardState extends State<BdQuestionCard> {
  bool get _hasAnswer {
    final v = widget.draft;
    switch (widget.question.input) {
      case QuestionInput.boolean:
        return v == true || v == false;
      case QuestionInput.multiselect:
        return v is List && v.isNotEmpty;
      case QuestionInput.text:
      case QuestionInput.select:
      case QuestionInput.radio:
        return v is String && v.trim().isNotEmpty;
      case QuestionInput.number:
        if (v is num) return true;
        if (v is String) return num.tryParse(v) != null;
        return false;
      case QuestionInput.date:
        return v is DateTime;
    }
  }

  Widget _renderInput() {
    final q = widget.question;
    final draft = widget.draft;
    switch (q.input) {
      case QuestionInput.boolean:
        return BooleanInputRenderer(
          value: draft is bool ? draft : null,
          onChanged: widget.onChange,
        );
      case QuestionInput.multiselect:
        return MultiSelectInputRenderer(
          options: q.options,
          value: draft is List ? List<String>.from(draft) : <String>[],
          onChanged: widget.onChange,
        );
      case QuestionInput.select:
        return SelectInputRenderer(
          options: q.options,
          value: draft is String ? draft : null,
          onChanged: widget.onChange,
        );
      case QuestionInput.radio:
        return RadioInputRenderer(
          options: q.options,
          value: draft is String ? draft : null,
          onChanged: widget.onChange,
        );
      case QuestionInput.number:
        return NumberInputRenderer(
          value: draft is num
              ? draft.toString()
              : (draft is String ? draft : ''),
          onChanged: widget.onChange,
          autofocus: true,
        );
      case QuestionInput.date:
        return DateInputRenderer(
          value: draft is DateTime ? draft : null,
          onChanged: widget.onChange,
        );
      case QuestionInput.text:
        return TextInputRenderer(
          value: draft is String ? draft : '',
          onChanged: widget.onChange,
          autofocus: true,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context);

    return BdCard(
      padding: const EdgeInsets.all(28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            widget.question.section.toUpperCase(),
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              color: scheme.tertiary,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            widget.question.prompt,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          if (widget.question.hint != null) ...<Widget>[
            const SizedBox(height: 8),
            Text(
              widget.question.hint!,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ],
          const SizedBox(height: 24),
          _renderInput(),
          const SizedBox(height: 16),
          UnsureButton(
            onPressed: widget.busy ? null : widget.onUnsure,
          ),
          const SizedBox(height: 24),
          Row(
            children: <Widget>[
              if (widget.onBack != null)
                BdButton(
                  label: 'Back',
                  variant: BdButtonVariant.ghost,
                  leading: const Icon(Icons.arrow_back),
                  onPressed: widget.busy ? null : widget.onBack,
                )
              else
                const SizedBox.shrink(),
              const Spacer(),
              BdButton(
                label: widget.busy ? 'Working...' : 'Continue',
                variant: BdButtonVariant.accent,
                size: BdButtonSize.lg,
                trailing: const Icon(Icons.arrow_forward),
                onPressed: !_hasAnswer || widget.busy ? null : widget.onSubmit,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
