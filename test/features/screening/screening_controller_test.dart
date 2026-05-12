import 'package:benefits_digger/core/api/models/session.dart' as api;
import 'package:benefits_digger/core/api/providers.dart';
import 'package:benefits_digger/core/api/services/sessions_service.dart';
import 'package:benefits_digger/features/screening/state/screening_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockSessionsService extends Mock implements SessionsService {}

api.QuestionOut _q(
  String key,
  String prompt,
  String inputType, {
  List<api.QuestionOption>? options,
}) =>
    api.QuestionOut(
      key: key,
      prompt: prompt,
      inputType: inputType,
      sensitivityLevel: 'low',
      options: options,
    );

void _setupFlow(_MockSessionsService svc) {
  final flow = <api.QuestionOut>[
    _q('household_size', 'Household size?', 'number'),
    _q('state', 'State?', 'select', options: const <api.QuestionOption>[
      api.QuestionOption(label: 'Texas', value: 'TX'),
    ]),
    _q('employed', 'Employed?', 'boolean'),
    _q('birthdate', 'DOB?', 'date'),
    _q(
      'needs',
      'Needs?',
      'multiselect',
      options: const <api.QuestionOption>[
        api.QuestionOption(label: 'Food', value: 'food'),
      ],
    ),
  ];
  var cursor = 0;
  when(() => svc.create(any())).thenAnswer(
    (_) async => api.SessionEnvelope(
      sessionId: 'sess-1',
      nextQuestion: flow[0],
    ),
  );
  when(() => svc.submitAnswers(any(), any())).thenAnswer((inv) async {
    final body = inv.positionalArguments[1] as api.SessionAnswersRequest;
    if (body.answers.isEmpty) {
      // The "what's next" probe sent during build() should not advance the
      // cursor — it just returns the question at the current index.
      return api.SessionEnvelope(
        sessionId: 'sess-1',
        nextQuestion: cursor < flow.length ? flow[cursor] : null,
      );
    }
    cursor += 1;
    return api.SessionEnvelope(
      sessionId: 'sess-1',
      nextQuestion: cursor < flow.length ? flow[cursor] : null,
    );
  });
}

void main() {
  setUpAll(() {
    registerFallbackValue(const api.SessionAnswersRequest());
    registerFallbackValue(const api.SessionCreateRequest());
  });

  test('submit advances to the next question; finishes when none left',
      () async {
    final svc = _MockSessionsService();
    _setupFlow(svc);

    final container = ProviderContainer(overrides: [
      sessionsServiceProvider.overrideWithValue(svc),
    ]);
    addTearDown(container.dispose);

    final session = await svc.create(const api.SessionCreateRequest());
    await container
        .read(screeningControllerProvider(session.sessionId).future);
    final notifier = container
        .read(screeningControllerProvider(session.sessionId).notifier);

    final first =
        container.read(screeningControllerProvider(session.sessionId)).value!;
    expect(first.current, isNotNull);
    expect(first.completed, isFalse);

    var done = false;
    var loops = 0;
    while (!done && loops < 10) {
      final s = container
          .read(screeningControllerProvider(session.sessionId))
          .value!;
      final q = s.current!;
      Object? draft;
      switch (q.input) {
        case QuestionInput.boolean:
          draft = true;
          break;
        case QuestionInput.number:
          draft = 3;
          break;
        case QuestionInput.select:
        case QuestionInput.radio:
          draft = q.options.isNotEmpty ? q.options.first.value : 'a';
          break;
        case QuestionInput.multiselect:
          draft = <String>[
            q.options.isNotEmpty ? q.options.first.value : 'a'
          ];
          break;
        case QuestionInput.date:
          draft = DateTime(2025, 1, 1);
          break;
        case QuestionInput.text:
          draft = 'answer';
          break;
      }
      done = await notifier.submit(draft);
      loops += 1;
    }

    final finalState = container
        .read(screeningControllerProvider(session.sessionId))
        .value!;
    expect(finalState.completed, isTrue);
    expect(finalState.current, isNull);
    expect(finalState.answers.length, greaterThan(0));
  });

  test('jumpTo returns to a previously answered question', () async {
    final svc = _MockSessionsService();
    _setupFlow(svc);

    final container = ProviderContainer(overrides: [
      sessionsServiceProvider.overrideWithValue(svc),
    ]);
    addTearDown(container.dispose);

    final session = await svc.create(const api.SessionCreateRequest());
    await container
        .read(screeningControllerProvider(session.sessionId).future);
    final notifier = container
        .read(screeningControllerProvider(session.sessionId).notifier);

    final s0 =
        container.read(screeningControllerProvider(session.sessionId)).value!;
    final firstKey = s0.current!.key;
    await notifier.submit(3);
    final s1 =
        container.read(screeningControllerProvider(session.sessionId)).value!;
    expect(s1.current!.key, isNot(equals(firstKey)));

    notifier.jumpTo(firstKey);
    final s2 =
        container.read(screeningControllerProvider(session.sessionId)).value!;
    expect(s2.current!.key, firstKey);
    expect(s2.completed, isFalse);
  });
}
