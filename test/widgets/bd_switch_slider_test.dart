import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:benefits_digger/widgets/ui/bd_progress.dart';
import 'package:benefits_digger/widgets/ui/bd_slider.dart';
import 'package:benefits_digger/widgets/ui/bd_switch.dart';

import '_helpers.dart';

void main() {
  testWidgets('switch toggles', (tester) async {
    bool? last;
    await tester.pumpWidget(bdHarness(BdSwitch(
      value: false,
      onChanged: (v) => last = v,
    )));
    await tester.tap(find.byType(Switch));
    await tester.pump();
    expect(last, true);
  });

  testWidgets('slider fires onChanged', (tester) async {
    double? last;
    await tester.pumpWidget(bdHarness(SizedBox(
      width: 200,
      child: BdSlider(
        value: 30,
        min: 0,
        max: 100,
        onChanged: (v) => last = v,
      ),
    )));
    await tester.drag(find.byType(Slider), const Offset(50, 0));
    expect(last, isNotNull);
  });

  testWidgets('progress renders', (tester) async {
    await tester.pumpWidget(bdHarness(const BdProgress(value: 0.5)));
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });
}
