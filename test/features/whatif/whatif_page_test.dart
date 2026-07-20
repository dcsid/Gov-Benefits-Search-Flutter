import 'package:benefits_digger/core/api/models/session.dart';
import 'package:benefits_digger/features/whatif/widgets/comparison_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('ComparisonGrid renders deltas and gained programs', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1200, 1600);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    final compare = SessionCompare(
      sessionId: 'sess-1',
      baseline: const <String, dynamic>{},
      comparisons: const [
        ScenarioComparison(
          name: 'Two more dependents',
          summary: <String, dynamic>{
            'likely_delta': 2,
            'possible_delta': -1,
            'federal_delta': 1,
            'state_delta': 0,
          },
          gainedPrograms: <Map<String, dynamic>>[
            <String, dynamic>{
              'program_slug': 'medicaid',
              'program_name': 'Medicaid',
              'eligibility_status': 'likely_eligible',
            },
          ],
          improvedPrograms: <Map<String, dynamic>>[
            <String, dynamic>{
              'program_slug': 'snap',
              'program_name': 'SNAP',
              'eligibility_status': 'likely_eligible',
            },
          ],
        ),
      ],
    );

    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: ComparisonGrid(compare: compare, isLoading: false),
            ),
          ),
        ),
      ),
    );
    await tester.pump();

    expect(find.text('Two more dependents'), findsOneWidget);
    expect(find.text('Medicaid'), findsOneWidget);
    expect(find.text('SNAP'), findsOneWidget);
    expect(find.textContaining('+2'), findsOneWidget);
  });
}
