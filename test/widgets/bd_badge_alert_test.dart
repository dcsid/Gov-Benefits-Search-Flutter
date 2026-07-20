import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:benefits_digger/widgets/ui/bd_alert.dart';
import 'package:benefits_digger/widgets/ui/bd_badge.dart';

import '_helpers.dart';

void main() {
  testWidgets('badge renders all variants', (tester) async {
    await tester.pumpWidget(
      bdHarness(
        Wrap(
          children: [
            for (final v in BdBadgeVariant.values)
              BdBadge(label: v.name, variant: v),
          ],
        ),
      ),
    );
    for (final v in BdBadgeVariant.values) {
      expect(find.text(v.name), findsOneWidget);
    }
  });

  testWidgets('alert renders title and description', (tester) async {
    await tester.pumpWidget(
      bdHarness(
        const BdAlert(
          title: 'Heads up',
          description: Text('Body text'),
          variant: BdAlertVariant.warning,
        ),
      ),
    );
    expect(find.text('Heads up'), findsOneWidget);
    expect(find.text('Body text'), findsOneWidget);
  });
}
