import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:benefits_digger/widgets/ui/bd_accordion.dart';
import 'package:benefits_digger/widgets/ui/bd_tabs.dart';

import '_helpers.dart';

void main() {
  testWidgets('tabs switch content on tap', (tester) async {
    await tester.pumpWidget(bdHarness(BdTabs(
      tabs: const [
        BdTab(value: 'a', label: 'Account', content: Text('Acct body')),
        BdTab(value: 'b', label: 'Pwd', content: Text('Pwd body')),
      ],
    )));
    expect(find.text('Acct body'), findsOneWidget);
    await tester.tap(find.text('Pwd'));
    await tester.pump();
    expect(find.text('Pwd body'), findsOneWidget);
  });

  testWidgets('accordion opens on tap', (tester) async {
    await tester.pumpWidget(bdHarness(const BdAccordion(
      items: [
        BdAccordionItem(
          value: '1',
          title: Text('Q1'),
          content: Text('A1'),
        ),
      ],
    )));
    await tester.tap(find.text('Q1'));
    await tester.pumpAndSettle();
    expect(find.text('A1'), findsOneWidget);
  });
}
