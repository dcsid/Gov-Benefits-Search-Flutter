import 'package:benefits_digger/core/api/models/explorer.dart';
import 'package:benefits_digger/core/api/models/program.dart';
import 'package:benefits_digger/core/api/models/state.dart';
import 'package:benefits_digger/core/api/providers.dart';
import 'package:benefits_digger/core/api/services/explorer_service.dart';
import 'package:benefits_digger/core/api/services/jurisdictions_service.dart';
import 'package:benefits_digger/features/explorer/explorer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class _MockExplorerService extends Mock implements ExplorerService {}

class _MockJurisdictionsService extends Mock implements JurisdictionsService {}

void main() {
  setUpAll(() {
    registerFallbackValue(const ExplorerSearchRequest());
  });

  testWidgets('ExplorerPage renders matches from fake service', (tester) async {
    tester.view.physicalSize = const Size(1400, 1200);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);

    final mockExplorer = _MockExplorerService();
    final mockStates = _MockJurisdictionsService();

    final fakeResponse = ExplorerSearchResponse(
      mode: 'heuristic',
      interpretation: const <String, dynamic>{'summary': 'Test interpretation'},
      programs: const [
        ExplorerHit(
          slug: 'snap',
          name: 'SNAP food assistance',
          category: 'food',
          summary: 'Monthly food benefits for low-income households.',
          jurisdiction: Jurisdiction(
            code: 'US',
            level: 'federal',
            name: 'United States',
          ),
          agency: 'USDA FNS',
        ),
      ],
    );

    when(() => mockExplorer.search(any()))
        .thenAnswer((_) async => fakeResponse);
    when(() => mockStates.listStates())
        .thenAnswer((_) async => const <StateInfo>[]);

    final router = GoRouter(
      initialLocation: '/explorer',
      routes: [
        GoRoute(path: '/explorer', builder: (_, __) => const ExplorerPage()),
        GoRoute(path: '/screen', builder: (_, __) => const Scaffold()),
        GoRoute(path: '/chat', builder: (_, __) => const Scaffold()),
        GoRoute(path: '/', builder: (_, __) => const Scaffold()),
        GoRoute(
          path: '/program/:slug',
          builder: (_, __) => const Scaffold(),
        ),
      ],
    );
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          explorerServiceProvider.overrideWithValue(mockExplorer),
          jurisdictionsServiceProvider.overrideWithValue(mockStates),
        ],
        child: MaterialApp.router(routerConfig: router),
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 50));

    expect(find.text('Program Explorer'), findsOneWidget);
    expect(find.text('SNAP food assistance'), findsOneWidget);
    expect(find.textContaining('Test interpretation'), findsOneWidget);
  });
}
