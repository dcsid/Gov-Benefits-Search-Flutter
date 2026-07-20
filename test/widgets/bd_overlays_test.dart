import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:benefits_digger/widgets/ui/bd_button.dart';
import 'package:benefits_digger/widgets/ui/bd_dialog.dart';
import 'package:benefits_digger/widgets/ui/bd_popover.dart';
import 'package:benefits_digger/widgets/ui/bd_tooltip.dart';

import '_helpers.dart';

void main() {
  testWidgets('tooltip renders trigger', (tester) async {
    await tester.pumpWidget(
      bdHarness(
        BdTooltip(
          message: 'hint',
          child: BdButton(label: 'Hover', onPressed: () {}),
        ),
      ),
    );
    expect(find.text('Hover'), findsOneWidget);
  });

  testWidgets('popover toggles content', (tester) async {
    await tester.pumpWidget(
      bdHarness(
        BdPopover(
          content: const Text('Popover body'),
          trigger: BdButton(label: 'Open', onPressed: () {}),
        ),
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pump();
    expect(find.text('Popover body'), findsOneWidget);
  });

  testWidgets('showBdDialog opens and closes', (tester) async {
    await tester.pumpWidget(
      bdHarness(
        Builder(
          builder: (ctx) => BdButton(
            label: 'Open dialog',
            onPressed: () => showBdDialog<void>(
              context: ctx,
              builder: (_) => const BdDialog(
                title: 'Hello',
                description: 'World',
                child: SizedBox.shrink(),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open dialog'));
    await tester.pumpAndSettle();
    expect(find.text('Hello'), findsOneWidget);
    expect(find.text('World'), findsOneWidget);
  });
}
