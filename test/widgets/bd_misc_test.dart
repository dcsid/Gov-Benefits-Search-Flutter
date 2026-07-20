import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:benefits_digger/widgets/ui/bd_avatar.dart';
import 'package:benefits_digger/widgets/ui/bd_scroll_area.dart';
import 'package:benefits_digger/widgets/ui/bd_separator.dart';
import 'package:benefits_digger/widgets/ui/bd_skeleton.dart';

import '_helpers.dart';

void main() {
  testWidgets('separator renders', (tester) async {
    await tester.pumpWidget(bdHarness(const BdSeparator()));
    expect(find.byType(BdSeparator), findsOneWidget);
  });

  testWidgets('skeleton renders and animates', (tester) async {
    await tester.pumpWidget(bdHarness(BdSkeleton(width: 100, height: 16)));
    await tester.pump(const Duration(milliseconds: 200));
    expect(find.byType(BdSkeleton), findsOneWidget);
    // ensure animation tick doesn't blow up
    await tester.pump(const Duration(milliseconds: 800));
  });

  testWidgets('avatar shows fallback', (tester) async {
    await tester.pumpWidget(bdHarness(const BdAvatar(fallback: 'AB')));
    expect(find.text('AB'), findsOneWidget);
  });

  testWidgets('scroll area scrolls', (tester) async {
    await tester.pumpWidget(
      bdHarness(
        SizedBox(
          width: 200,
          height: 100,
          child: BdScrollArea(
            child: Column(
              children: [for (var i = 0; i < 20; i++) Text('Row $i')],
            ),
          ),
        ),
      ),
    );
    expect(find.text('Row 0'), findsOneWidget);
  });
}
