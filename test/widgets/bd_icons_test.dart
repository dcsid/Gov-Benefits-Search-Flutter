import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:benefits_digger/widgets/icons/bd_icons.dart';

import '_helpers.dart';

void main() {
  testWidgets('logo mark paints', (tester) async {
    await tester.pumpWidget(
      bdHarness(BdIcons.logoMark(size: 24, color: Colors.black)),
    );
    expect(find.byType(CustomPaint), findsWidgets);
  });

  testWidgets('icon constants are usable', (tester) async {
    await tester.pumpWidget(bdHarness(const Icon(BdIcons.search)));
    expect(find.byIcon(BdIcons.search), findsOneWidget);
  });
}
