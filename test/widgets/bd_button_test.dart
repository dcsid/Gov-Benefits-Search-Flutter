import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:benefits_digger/widgets/ui/bd_button.dart';

import '_helpers.dart';

void main() {
  testWidgets('renders label and fires onPressed', (tester) async {
    var taps = 0;
    await tester.pumpWidget(
      bdHarness(BdButton(label: 'Click', onPressed: () => taps++)),
    );
    expect(find.text('Click'), findsOneWidget);
    await tester.tap(find.text('Click'));
    expect(taps, 1);
  });

  testWidgets('disabled button does not call onPressed', (tester) async {
    await tester.pumpWidget(bdHarness(const BdButton(label: 'Disabled')));
    await tester.tap(find.text('Disabled'));
    expect(find.text('Disabled'), findsOneWidget);
  });

  testWidgets('renders all variants without throwing', (tester) async {
    await tester.pumpWidget(
      bdHarness(
        Wrap(
          children: [
            for (final v in BdButtonVariant.values)
              BdButton(label: v.name, variant: v, onPressed: () {}),
          ],
        ),
      ),
    );
    for (final v in BdButtonVariant.values) {
      expect(find.text(v.name), findsOneWidget);
    }
  });

  testWidgets('icon size produces square footprint', (tester) async {
    await tester.pumpWidget(
      bdHarness(
        BdButton(
          size: BdButtonSize.icon,
          semanticLabel: 'icon-only',
          onPressed: () {},
          child: const Icon(Icons.search),
        ),
      ),
    );
    expect(find.byIcon(Icons.search), findsOneWidget);
  });
}
