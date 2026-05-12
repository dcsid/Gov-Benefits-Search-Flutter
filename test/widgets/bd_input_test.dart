import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:benefits_digger/widgets/ui/bd_input.dart';
import 'package:benefits_digger/widgets/ui/bd_textarea.dart';
import 'package:benefits_digger/widgets/ui/bd_label.dart';

import '_helpers.dart';

void main() {
  testWidgets('input fires onChanged', (tester) async {
    final values = <String>[];
    await tester.pumpWidget(bdHarness(
      BdInput(placeholder: 'Email', onChanged: values.add),
    ));
    expect(find.text('Email'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'hi');
    expect(values.last, 'hi');
  });

  testWidgets('textarea renders multiple lines', (tester) async {
    await tester.pumpWidget(bdHarness(
      const BdTextarea(placeholder: 'Bio', minLines: 3, maxLines: 6),
    ));
    expect(find.byType(TextField), findsOneWidget);
  });

  testWidgets('label renders text', (tester) async {
    await tester.pumpWidget(bdHarness(const BdLabel(text: 'Email')));
    expect(find.text('Email'), findsOneWidget);
  });
}
