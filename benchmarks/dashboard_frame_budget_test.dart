@Tags(<String>['perf'])
library;

import 'package:benefits_digger/core/api/models/session.dart';
import 'package:benefits_digger/core/api/providers.dart';
import 'package:benefits_digger/core/api/services/sessions_service.dart';
import 'package:benefits_digger/features/dashboard/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

/// Frame-time budget for the dashboard render.
///
/// Run with: flutter test --tags perf benchmarks/
///
/// Pumps a populated DashboardPage 10 times and measures wall time. The
/// threshold is 5x the 60 fps budget (16.67 ms) — widget-test pumps
/// include element rebuild + layout + paint, not just GPU frame draw,
/// and CI runners are slower than dev machines. We care about regression
/// detection, not absolute parity with a real device.
class _FakeSessionsService implements SessionsService {
  @override
  Future<SessionPlan> getPlan(String sessionId) async => _fakePlan;
  @override
  dynamic noSuchMethod(Invocation i) => super.noSuchMethod(i);
}

final SessionPlan _fakePlan = SessionPlan(
  profile: const <String, dynamic>{},
  overview: const PlanOverview(
    likelyPrograms: 3,
    possiblePrograms: 12,
    likelyFederalPrograms: 3,
    likelyStatePrograms: 0,
    averageRuleCoverage: 75,
    answeredQuestions: 14,
    estimatedMonthlyTotal: 1200,
  ),
  benefitStack: <Map<String, dynamic>>[
    for (var i = 0; i < 5; i++)
      <String, dynamic>{
        'category': 'cat_$i',
        'label': 'Category $i',
        'likely_programs': 1,
        'possible_programs': 2,
        'top_programs': <String>['Program A$i', 'Program B$i', 'Program C$i'],
      },
  ],
  actionPlan: <Map<String, dynamic>>[
    for (var i = 0; i < 6; i++)
      <String, dynamic>{
        'program_name': 'Program $i',
        'eligibility_status': 'possibly_eligible',
        'confidence': 60,
        'step_label': 'Step $i description.',
        'url': 'https://example.test/apply/$i',
        'jurisdiction': 'Federal',
      },
  ],
  documentChecklist: <Map<String, dynamic>>[
    // 45-item document list — the explicit hot spot from the previous round.
    for (var i = 0; i < 45; i++)
      <String, dynamic>{
        'name': 'Document $i',
        'type': i.isEven ? 'required' : 'helpful',
        'description': 'Required document number $i for verification.',
        'programs': <String>['Program A', 'Program B'],
      },
  ],
  planningNotes: const <String>['Note 1.', 'Note 2.'],
  officialSourceHub: <Map<String, dynamic>>[
    for (var i = 0; i < 10; i++)
      <String, dynamic>{
        'label': 'Source $i',
        'url': 'https://example.test/source/$i',
      },
  ],
  topMissingFacts: <Map<String, dynamic>>[
    for (var i = 0; i < 8; i++)
      <String, dynamic>{'label': 'Missing fact $i', 'program_count': i + 1},
  ],
);

Widget _wrap() {
  final router = GoRouter(
    initialLocation: '/dashboard/test-sid',
    routes: <RouteBase>[
      GoRoute(
        path: '/dashboard/:sid',
        builder: (_, state) =>
            DashboardPage(sessionId: state.pathParameters['sid'] ?? 'test-sid'),
      ),
      GoRoute(path: '/results/:sid', builder: (_, __) => const Scaffold()),
      GoRoute(path: '/screen', builder: (_, __) => const Scaffold()),
      GoRoute(path: '/screen/:sid/q', builder: (_, __) => const Scaffold()),
    ],
  );
  return ProviderScope(
    overrides: <Override>[
      sessionsServiceProvider.overrideWithValue(_FakeSessionsService()),
    ],
    child: MaterialApp.router(
      routerConfig: router,
      localizationsDelegates: const <LocalizationsDelegate<Object>>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[Locale('en')],
    ),
  );
}

void main() {
  testWidgets('Dashboard renders 10 frames within a 60-fps-relaxed budget', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(1440, 900);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(_wrap());
    await tester.pumpAndSettle(const Duration(milliseconds: 200));

    final sw = Stopwatch()..start();
    const frames = 10;
    for (var i = 0; i < frames; i++) {
      tester.view.physicalSize = Size(1440 + (i % 2) * 16.0, 900);
      await tester.pump(const Duration(milliseconds: 16));
    }
    sw.stop();
    final perFrameMs = sw.elapsedMicroseconds / 1000.0 / frames;

    const budgetMs = 16.67 * 5;
    // ignore: avoid_print
    print(
      '[perf] dashboard per-frame: ${perFrameMs.toStringAsFixed(2)} ms '
      '(budget ${budgetMs.toStringAsFixed(2)} ms)',
    );
    expect(
      perFrameMs,
      lessThan(budgetMs),
      reason:
          'Dashboard frame time regressed beyond 5x the 60 fps budget. '
          'Candidates: a stray full-state ref.watch, a non-builder list, '
          'or a controller that lost autoDispose.',
    );
  });
}
