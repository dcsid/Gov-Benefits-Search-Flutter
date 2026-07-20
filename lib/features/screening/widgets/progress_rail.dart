import 'package:flutter/material.dart';

import '../state/screening_controller.dart';

class ProgressRail extends StatelessWidget {
  const ProgressRail({
    super.key,
    required this.history,
    required this.answers,
    required this.currentKey,
    this.onJump,
  });

  final List<ScreeningQuestion> history;
  final Map<String, Object?> answers;
  final String? currentKey;
  final ValueChanged<String>? onJump;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Container(
      width: 240,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerLow,
        border: Border(right: BorderSide(color: scheme.outlineVariant)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Your screening',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
              itemCount: history.length,
              separatorBuilder: (_, __) => const SizedBox(height: 4),
              itemBuilder: (context, idx) {
                final q = history[idx];
                final answered = answers.containsKey(q.key);
                final current = q.key == currentKey;
                return _RailRow(
                  index: idx + 1,
                  label: q.section,
                  prompt: q.prompt,
                  answered: answered,
                  current: current,
                  onTap: answered && !current && onJump != null
                      ? () => onJump!(q.key)
                      : null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _RailRow extends StatelessWidget {
  const _RailRow({
    required this.index,
    required this.label,
    required this.prompt,
    required this.answered,
    required this.current,
    this.onTap,
  });

  final int index;
  final String label;
  final String prompt;
  final bool answered;
  final bool current;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final color = current
        ? scheme.primary
        : answered
        ? scheme.onSurface
        : scheme.onSurfaceVariant;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 22,
              height: 22,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: current ? scheme.primary : Colors.transparent,
                border: Border.all(
                  color: current
                      ? scheme.primary
                      : answered
                      ? scheme.outline
                      : scheme.outlineVariant,
                ),
                shape: BoxShape.circle,
              ),
              child: answered
                  ? Icon(
                      Icons.check,
                      size: 14,
                      color: current ? scheme.onPrimary : scheme.primary,
                    )
                  : Text(
                      '$index',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: current ? scheme.onPrimary : color,
                      ),
                    ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 11,
                      color: scheme.onSurfaceVariant,
                      letterSpacing: 0.4,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    prompt,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13,
                      color: color,
                      fontWeight: current ? FontWeight.w600 : FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
