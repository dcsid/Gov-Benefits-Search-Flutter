import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:benefits_digger/widgets/ui/bd_button.dart';
import 'package:benefits_digger/widgets/ui/bd_command.dart';
import 'package:benefits_digger/widgets/ui/bd_dropdown_menu.dart';

import '_helpers.dart';

void main() {
  testWidgets('dropdown opens and selects', (tester) async {
    String? picked;
    await tester.pumpWidget(bdHarness(BdDropdownMenu<String>(
      onSelected: (v) => picked = v,
      items: const [
        BdDropdownItem(value: 'a', label: 'Alpha'),
        BdDropdownItem(value: 'b', label: 'Beta'),
      ],
      trigger: BdButton(label: 'Open', onPressed: () {}),
    )));
    await tester.tap(find.text('Open'));
    await tester.pump();
    expect(find.text('Alpha'), findsOneWidget);
    await tester.tap(find.text('Beta'));
    await tester.pump();
    expect(picked, 'b');
  });

  testWidgets('command filters items by query', (tester) async {
    await tester.pumpWidget(bdHarness(SizedBox(
      width: 400,
      child: BdCommand(
        items: const [
          BdCommandItem(id: '1', label: 'Apple'),
          BdCommandItem(id: '2', label: 'Banana'),
          BdCommandItem(id: '3', label: 'Cherry'),
        ],
      ),
    )));
    expect(find.text('Apple'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'ban');
    await tester.pump();
    expect(find.text('Apple'), findsNothing);
    expect(find.text('Banana'), findsOneWidget);
  });
}
