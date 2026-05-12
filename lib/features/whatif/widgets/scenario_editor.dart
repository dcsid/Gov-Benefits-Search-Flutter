import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../widgets/ui/bd_alert.dart';
import '../../../widgets/ui/bd_button.dart';
import '../../../widgets/ui/bd_input.dart';
import '../../../widgets/ui/bd_select.dart';
import '../state/whatif_controller.dart';

const _presets = <(String, List<(String, String, String)>)>[
  ('Two more dependents', [('household_size', 'number', '5')]),
  ('Income drops \$5k/yr', [('annual_income_usd', 'number', '20000')]),
  ('Now lives in Texas', [('state', 'string', 'TX')]),
];

class ScenarioEditor extends StatelessWidget {
  const ScenarioEditor({super.key, required this.sessionId});

  final String sessionId;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _LabelInput(),
        const SizedBox(height: 16),
        Text(
          'QUICK PRESETS',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                letterSpacing: 1.2,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
        ),
        const SizedBox(height: 8),
        const _PresetButtons(),
        const SizedBox(height: 20),
        Row(
          children: [
            Text(
              'Override answers',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const Spacer(),
            const _AddOverrideButton(),
          ],
        ),
        const SizedBox(height: 8),
        const _RowsList(),
        const SizedBox(height: 16),
        _SubmitButton(sessionId: sessionId),
        const _ErrorBanner(),
      ],
    );
  }
}

/// Owns its own [TextEditingController] so the cursor doesn't get clobbered
/// every time the underlying state changes (e.g. when a row keystroke
/// triggers a state-wide rebuild). Previously the controller was rebuilt
/// in the parent's build() on every keystroke, dropping cursor position
/// and leaking listeners.
class _LabelInput extends ConsumerStatefulWidget {
  const _LabelInput();

  @override
  ConsumerState<_LabelInput> createState() => _LabelInputState();
}

class _LabelInputState extends ConsumerState<_LabelInput> {
  late final TextEditingController _controller;
  ProviderSubscription<String>? _sub;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: ref.read(whatIfControllerProvider).label,
    );
    // Sync external label changes (preset application) into the field
    // without rebuilding this widget on every state change.
    _sub = ref.listenManual<String>(
      whatIfControllerProvider.select((s) => s.label),
      (prev, next) {
        if (next != _controller.text) {
          _controller.value = TextEditingValue(
            text: next,
            selection: TextSelection.collapsed(offset: next.length),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _sub?.close();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BdInput(
      placeholder: 'e.g. Two more dependents',
      controller: _controller,
      onChanged: ref.read(whatIfControllerProvider.notifier).setLabel,
    );
  }
}

class _PresetButtons extends ConsumerWidget {
  const _PresetButtons();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(whatIfControllerProvider.notifier);
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final preset in _presets)
          BdButton(
            label: preset.$1,
            variant: BdButtonVariant.outline,
            size: BdButtonSize.sm,
            onPressed: () => controller.applyPreset(
              preset.$1,
              [
                for (final a in preset.$2)
                  ScenarioRow(
                    id: 'p-${a.$1}-${DateTime.now().microsecondsSinceEpoch}',
                    questionKey: a.$1,
                    type: a.$2,
                    value: a.$3,
                  ),
              ],
            ),
          ),
      ],
    );
  }
}

class _AddOverrideButton extends ConsumerWidget {
  const _AddOverrideButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BdButton(
      label: 'Add override',
      leading: const Icon(Icons.add),
      variant: BdButtonVariant.ghost,
      size: BdButtonSize.sm,
      onPressed: ref.read(whatIfControllerProvider.notifier).addRow,
    );
  }
}

class _RowsList extends ConsumerWidget {
  const _RowsList();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Only rebuilds when the row list identity changes (add/remove/preset),
    // not on every per-row keystroke.
    final rows = ref.watch(
      whatIfControllerProvider.select((s) => s.rows),
    );
    if (rows.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.outlineVariant,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text(
          'No overrides yet — add one or pick a preset above.',
        ),
      );
    }
    return Column(
      children: [
        for (final row in rows)
          KeyedSubtree(
            key: ValueKey<String>(row.id),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: _RowEditor(row: row),
            ),
          ),
      ],
    );
  }
}

/// Stateful so the question-key and value [TextEditingController]s persist
/// across rebuilds; previously these were re-created on every state change,
/// dropping the cursor on every keystroke and allocating two new
/// controllers per row per keystroke.
class _RowEditor extends ConsumerStatefulWidget {
  const _RowEditor({required this.row});
  final ScenarioRow row;
  @override
  ConsumerState<_RowEditor> createState() => _RowEditorState();
}

class _RowEditorState extends ConsumerState<_RowEditor> {
  late final TextEditingController _keyCtl;
  late final TextEditingController _valueCtl;

  @override
  void initState() {
    super.initState();
    _keyCtl = TextEditingController(text: widget.row.questionKey);
    _valueCtl = TextEditingController(text: widget.row.value);
  }

  @override
  void didUpdateWidget(covariant _RowEditor old) {
    super.didUpdateWidget(old);
    // External preset application can replace the row data; reflect that
    // without breaking user-driven cursor state.
    if (widget.row.questionKey != _keyCtl.text) {
      _keyCtl.text = widget.row.questionKey;
    }
    if (widget.row.value != _valueCtl.text) {
      _valueCtl.text = widget.row.value;
    }
  }

  @override
  void dispose() {
    _keyCtl.dispose();
    _valueCtl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.read(whatIfControllerProvider.notifier);
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: BdInput(
              placeholder: 'question_key (e.g. household_size)',
              controller: _keyCtl,
              onChanged: (v) =>
                  controller.updateRow(widget.row.id, questionKey: v),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 130,
            child: BdSelect<String>(
              value: widget.row.type,
              items: const [
                BdSelectItem(value: 'string', label: 'Text'),
                BdSelectItem(value: 'number', label: 'Number'),
                BdSelectItem(value: 'boolean', label: 'Boolean'),
                BdSelectItem(value: 'date', label: 'Date'),
              ],
              onChanged: (v) {
                if (v != null) controller.updateRow(widget.row.id, type: v);
              },
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 3,
            child: BdInput(
              placeholder: switch (widget.row.type) {
                'boolean' => 'true / false',
                'date' => 'YYYY-MM-DD',
                _ => 'value',
              },
              controller: _valueCtl,
              onChanged: (v) =>
                  controller.updateRow(widget.row.id, value: v),
            ),
          ),
          IconButton(
            tooltip: 'Remove override',
            icon: const Icon(Icons.delete_outline, size: 18),
            onPressed: () => controller.removeRow(widget.row.id),
          ),
        ],
      ),
    );
  }
}

class _SubmitButton extends ConsumerWidget {
  const _SubmitButton({required this.sessionId});
  final String sessionId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSubmitting = ref.watch(
      whatIfControllerProvider.select((s) => s.isSubmitting),
    );
    final hasRows = ref.watch(
      whatIfControllerProvider.select((s) => s.rows.isNotEmpty),
    );
    return BdButton(
      label: isSubmitting ? 'Running scenario...' : 'Run comparison',
      onPressed: isSubmitting || !hasRows
          ? null
          : () => ref.read(whatIfControllerProvider.notifier).submit(sessionId),
    );
  }
}

class _ErrorBanner extends ConsumerWidget {
  const _ErrorBanner();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final error = ref.watch(
      whatIfControllerProvider.select((s) => s.error),
    );
    if (error == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: BdAlert(
        variant: BdAlertVariant.destructive,
        description: Text('Could not run scenario: $error'),
      ),
    );
  }
}
