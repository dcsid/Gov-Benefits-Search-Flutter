import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/error/error_handler.dart';
import '../../l10n/app_localizations.dart';
import '../../widgets/chrome/bd_header.dart';
import '../../widgets/ui/bd_button.dart';
import 'state/screening_controller.dart';
import 'widgets/bd_question_card.dart';
import 'widgets/progress_rail.dart';

/// Estimated total used in the progress bar denominator. Mirrors the
/// backend's standard-breadth `max_answers` (see app/services.py
/// BREADTH_ANCHORS). Showing this as the denominator keeps the counter
/// readable ("Question 5 of about 30") instead of "5 of 5" — the engine
/// may finish earlier or, on deep mode, run a bit longer.
const int _kStandardScreeningCap = 30;

class QuestionPage extends ConsumerStatefulWidget {
  const QuestionPage({super.key, required this.sessionId});

  final String sessionId;

  @override
  ConsumerState<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends ConsumerState<QuestionPage> {
  Object? _draft;
  String? _draftFor;

  void _seedDraftIfNeeded(
    ScreeningQuestion current,
    Map<String, Object?> answers,
  ) {
    if (_draftFor == current.key) return;
    _draftFor = current.key;
    final saved = answers[current.key];
    if (saved != null) {
      _draft = _decodeForInput(current.input, saved);
    } else {
      _draft = current.input == QuestionInput.multiselect ? <String>[] : null;
    }
  }

  Object? _decodeForInput(QuestionInput input, Object? saved) {
    if (saved == null) return null;
    if (saved == 'unknown') return null;
    switch (input) {
      case QuestionInput.boolean:
        return saved is bool ? saved : null;
      case QuestionInput.number:
        return saved is num ? saved : num.tryParse(saved.toString());
      case QuestionInput.date:
        if (saved is DateTime) return saved;
        return DateTime.tryParse(saved.toString());
      case QuestionInput.multiselect:
        if (saved is List) {
          return List<String>.from(saved.map((e) => e.toString()));
        }
        return <String>[];
      case QuestionInput.text:
      case QuestionInput.select:
      case QuestionInput.radio:
        return saved.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    final asyncState = ref.watch(screeningControllerProvider(widget.sessionId));

    return Scaffold(
      body: Column(
        children: [
          const RepaintBoundary(
            child: BdHeader(variant: BdHeaderVariant.question),
          ),
          Expanded(
            child: asyncState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, st) => _ScreeningError(
                error: e,
                stackTrace: st,
                onRetry: () => ref.invalidate(
                  screeningControllerProvider(widget.sessionId),
                ),
              ),
              data: (state) {
                if (state.completed && state.current == null) {
                  // Defer navigation until after the build phase.
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (mounted) context.go('/results/${widget.sessionId}');
                  });
                  return const Center(child: CircularProgressIndicator());
                }

                final current = state.current;
                if (current == null) {
                  return const Center(child: CircularProgressIndicator());
                }

                _seedDraftIfNeeded(current, state.answers);

                final canGoBack = state.currentIndex > 0;
                final width = MediaQuery.of(context).size.width;
                final showRail = width >= 880;

                final questionView = SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 720),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        _ProgressBar(
                          // Use the standard-breadth cap (30) as the denominator
                          // so the count doesn't read "1 of 1, 2 of 2, ..." (which
                          // happened when we passed history.length — both grew
                          // together). The backend caps standard screening at 30
                          // questions; if the user is on deep breadth (cap 80),
                          // the bar may briefly exceed 100% but that's fine.
                          current: state.questionNumber,
                          total: state.history.length > _kStandardScreeningCap
                              ? state.history.length + 1
                              : _kStandardScreeningCap,
                          answered: state.answeredCount,
                        ),
                        const SizedBox(height: 24),
                        // RepaintBoundary so an `_draft` setState (fired on every
                        // keystroke / option tap) repaints just the question card
                        // and not the surrounding chrome / progress bar.
                        RepaintBoundary(
                          child: BdQuestionCard(
                            question: current,
                            draft: _draft,
                            onChange: (v) => setState(() => _draft = v),
                            busy: state.busy,
                            onSubmit: () async {
                              final ctl = ref.read(
                                screeningControllerProvider(
                                  widget.sessionId,
                                ).notifier,
                              );
                              final done = await ctl.submit(_draft);
                              if (!context.mounted) return;
                              if (done) {
                                context.go('/results/${widget.sessionId}');
                              } else {
                                _draftFor = null;
                              }
                            },
                            onUnsure: () async {
                              final ctl = ref.read(
                                screeningControllerProvider(
                                  widget.sessionId,
                                ).notifier,
                              );
                              final done = await ctl.submit(null, unsure: true);
                              if (!context.mounted) return;
                              if (done) {
                                context.go('/results/${widget.sessionId}');
                              } else {
                                _draftFor = null;
                              }
                            },
                            onBack: canGoBack
                                ? () {
                                    final prev =
                                        state.history[state.currentIndex - 1];
                                    ref
                                        .read(
                                          screeningControllerProvider(
                                            widget.sessionId,
                                          ).notifier,
                                        )
                                        .jumpTo(prev.key);
                                    _draftFor = null;
                                  }
                                : null,
                          ),
                        ),
                        if (state.error != null) ...<Widget>[
                          const SizedBox(height: 12),
                          Text(
                            state.error!,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                );

                if (showRail) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ProgressRail(
                        history: state.history,
                        answers: state.answers,
                        currentKey: current.key,
                        onJump: (key) => ref
                            .read(
                              screeningControllerProvider(
                                widget.sessionId,
                              ).notifier,
                            )
                            .jumpTo(key),
                      ),
                      Expanded(child: questionView),
                    ],
                  );
                }
                return questionView;
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ProgressBar extends StatelessWidget {
  const _ProgressBar({
    required this.current,
    required this.total,
    required this.answered,
  });

  final int current;
  final int total;
  final int answered;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final denom = total == 0 ? 1 : total;
    final pct = (current / denom).clamp(0.0, 1.0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              'Question $current of about $denom',
              style: TextStyle(fontSize: 12, color: scheme.onSurfaceVariant),
            ),
            const Spacer(),
            Text(
              '$answered answered',
              style: TextStyle(fontSize: 12, color: scheme.onSurfaceVariant),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(999),
          child: LinearProgressIndicator(
            value: pct,
            minHeight: 6,
            backgroundColor: scheme.surfaceContainerHighest,
          ),
        ),
      ],
    );
  }
}

class _ScreeningError extends StatefulWidget {
  const _ScreeningError({
    required this.error,
    required this.stackTrace,
    required this.onRetry,
  });
  final Object error;
  final StackTrace stackTrace;
  final VoidCallback onRetry;
  @override
  State<_ScreeningError> createState() => _ScreeningErrorState();
}

class _ScreeningErrorState extends State<_ScreeningError> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      showApiError(context, widget.error, stackTrace: widget.stackTrace);
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              size: 48,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: 16),
            Text(
              l10n?.errors_genericTitle ?? 'Something went wrong',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            BdButton(
              label: l10n?.errors_tryAgain ?? 'Try again',
              leading: const Icon(Icons.refresh),
              onPressed: widget.onRetry,
            ),
          ],
        ),
      ),
    );
  }
}
