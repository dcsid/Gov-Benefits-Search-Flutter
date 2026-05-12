import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:benefits_digger/widgets/ui/bd_table.dart';

import '_helpers.dart';

void main() {
  testWidgets('table renders columns and cells', (tester) async {
    await tester.pumpWidget(bdHarness(const BdTable(
      columns: [
        BdTableColumn(label: 'Name'),
        BdTableColumn(label: 'Score', numeric: true),
      ],
      rows: [
        [Text('SNAP'), Text('92')],
        [Text('Medicaid'), Text('88')],
      ],
    )));
    expect(find.text('Name'), findsOneWidget);
    expect(find.text('SNAP'), findsOneWidget);
    expect(find.text('92'), findsOneWidget);
  });
}
