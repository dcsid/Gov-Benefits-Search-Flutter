import 'dart:developer' as developer;

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/api/models/session.dart' as api;
import '../../../core/api/models/session.dart' show SessionAnswersRequest;
import '../../../core/api/providers.dart';
import '../../../core/api/services/sessions_service.dart';

/// UI-side question input kinds. The real API returns a free-form
/// `inputType` string per `QuestionOut`; we map it onto this enum so the
/// renderer widgets can switch on a known set.
enum QuestionInput { text, number, boolean, date, select, multiselect, radio }

/// Maps the backend's `inputType` string onto a [QuestionInput]. When the
/// backend ships an `inputType` we don't recognize, we fall back to
/// [QuestionInput.radio] if `hasOptions` is true (so the user can click a
/// choice rather than being forced to type) and otherwise to
/// [QuestionInput.text]. Unknowns are also logged so we notice in the
/// console when a new backend type appears.
QuestionInput questionInputFromString(String raw, {bool hasOptions = false}) {
  switch (raw.toLowerCase()) {
    case 'yes_no':
    case 'boolean':
      return QuestionInput.boolean;
    case 'radio':
      return QuestionInput.radio;
    case 'single_select':
    case 'select':
      return QuestionInput.select;
    case 'multi_select':
    case 'multiselect':
      return QuestionInput.multiselect;
    case 'date':
      return QuestionInput.date;
    case 'number':
    case 'currency':
    case 'integer':
      return QuestionInput.number;
    case 'free_text':
    case 'long_text':
    case 'text':
      return QuestionInput.text;
    default:
      final fallback =
          hasOptions ? QuestionInput.radio : QuestionInput.text;
      developer.log(
        'Unknown screening inputType "$raw" — falling back to ${fallback.name}',
        name: 'screening',
      );
      return fallback;
  }
}

/// UI-side option struct for select/multiselect inputs. We coerce the API's
/// dynamic `value` to a string for stable identity.
class QuestionOption {
  const QuestionOption({required this.value, required this.label});
  final String value;
  final String label;
}

/// UI-side rendering view of a screening question, derived from [QuestionOut].
class ScreeningQuestion {
  const ScreeningQuestion({
    required this.key,
    required this.prompt,
    required this.input,
    this.hint,
    this.options = const <QuestionOption>[],
    this.section = 'About you',
  });

  factory ScreeningQuestion.fromQuestionOut(api.QuestionOut q) {
    final hasOptions = (q.options ?? const <api.QuestionOption>[]).isNotEmpty;
    return ScreeningQuestion(
      key: q.key,
      prompt: q.prompt,
      hint: q.hint,
      input: questionInputFromString(q.inputType, hasOptions: hasOptions),
      options: (q.options ?? const <api.QuestionOption>[])
          .map(
            (o) => QuestionOption(
              value: o.value?.toString() ?? '',
              label: o.label,
            ),
          )
          .toList(growable: false),
      section: 'About you',
    );
  }

  final String key;
  final String prompt;
  final String? hint;
  final QuestionInput input;
  final List<QuestionOption> options;
  final String section;
}

Object? encodeAnswerValue(QuestionInput input, Object? raw) {
  if (raw == null) return null;
  switch (input) {
    case QuestionInput.boolean:
      return raw is bool ? raw : (raw.toString().toLowerCase() == 'true');
    case QuestionInput.number:
      if (raw is num) return raw;
      return num.tryParse(raw.toString());
    case QuestionInput.date:
      if (raw is DateTime) return raw.toIso8601String().split('T').first;
      return raw.toString();
    case QuestionInput.multiselect:
      if (raw is List) return raw.map((e) => e.toString()).toList();
      return <String>[];
    case QuestionInput.select:
    case QuestionInput.radio:
    case QuestionInput.text:
      return raw.toString();
  }
}

class ScreeningState {
  const ScreeningState({
    required this.sessionId,
    required this.history,
    required this.answers,
    this.current,
    this.completed = false,
    this.busy = false,
    this.error,
  });

  final String sessionId;
  final List<ScreeningQuestion> history;
  final Map<String, Object?> answers;
  final ScreeningQuestion? current;
  final bool completed;
  final bool busy;
  final String? error;

  ScreeningState copyWith({
    List<ScreeningQuestion>? history,
    Map<String, Object?>? answers,
    ScreeningQuestion? current,
    bool clearCurrent = false,
    bool? completed,
    bool? busy,
    String? error,
    bool clearError = false,
  }) =>
      ScreeningState(
        sessionId: sessionId,
        history: history ?? this.history,
        answers: answers ?? this.answers,
        current: clearCurrent ? null : (current ?? this.current),
        completed: completed ?? this.completed,
        busy: busy ?? this.busy,
        error: clearError ? null : (error ?? this.error),
      );

  int get answeredCount =>
      history.where((q) => answers.containsKey(q.key)).length;

  int get currentIndex {
    if (current == null) return -1;
    return history.indexWhere((q) => q.key == current!.key);
  }

  int get questionNumber {
    final idx = currentIndex;
    if (idx >= 0) return idx + 1;
    return answeredCount + 1;
  }
}

class ScreeningController
    extends AutoDisposeFamilyAsyncNotifier<ScreeningState, String> {
  late SessionsService _service;

  @override
  Future<ScreeningState> build(String sessionId) async {
    _service = ref.read(sessionsServiceProvider);
    // Submit an empty-answers payload to get the current next question; this
    // is idempotent on the backend and matches the way the previous stub's
    // `currentQuestion` was used as a "what's next" probe.
    final envelope = await _service.submitAnswers(
      sessionId,
      const SessionAnswersRequest(),
    );
    final next = envelope.nextQuestion;
    final current =
        next == null ? null : ScreeningQuestion.fromQuestionOut(next);
    return ScreeningState(
      sessionId: sessionId,
      history: current != null
          ? <ScreeningQuestion>[current]
          : <ScreeningQuestion>[],
      answers: <String, Object?>{},
      current: current,
      completed: current == null,
    );
  }

  Future<bool> submit(Object? rawValue, {bool unsure = false}) async {
    final s = state.value;
    if (s == null || s.current == null) return false;
    final question = s.current!;
    final encoded = unsure
        ? 'unknown'
        : encodeAnswerValue(question.input, rawValue);
    if (!unsure && encoded == null) return false;

    state = AsyncData(s.copyWith(busy: true, clearError: true));

    try {
      final envelope = await _service.submitAnswers(
        s.sessionId,
        SessionAnswersRequest(answers: <String, dynamic>{question.key: encoded}),
      );
      final next = envelope.nextQuestion == null
          ? null
          : ScreeningQuestion.fromQuestionOut(envelope.nextQuestion!);

      final updatedAnswers = Map<String, Object?>.from(s.answers)
        ..[question.key] = encoded;
      final history = List<ScreeningQuestion>.from(s.history);
      if (next != null && !history.any((q) => q.key == next.key)) {
        history.add(next);
      }

      state = AsyncData(
        s.copyWith(
          history: history,
          answers: updatedAnswers,
          current: next,
          clearCurrent: next == null,
          completed: next == null,
          busy: false,
        ),
      );
      return next == null;
    } catch (e) {
      state = AsyncData(s.copyWith(busy: false, error: e.toString()));
      return false;
    }
  }

  void jumpTo(String questionKey) {
    final s = state.value;
    if (s == null) return;
    final q = s.history.firstWhere(
      (q) => q.key == questionKey,
      orElse: () => s.current ?? s.history.last,
    );
    if (s.answers.containsKey(q.key) || q.key == s.current?.key) {
      state = AsyncData(s.copyWith(current: q, completed: false));
    }
  }
}

final screeningControllerProvider =
    AsyncNotifierProvider.autoDispose.family<ScreeningController, ScreeningState, String>(
      ScreeningController.new,
    );
