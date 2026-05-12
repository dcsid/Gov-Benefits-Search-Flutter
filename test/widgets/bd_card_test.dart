import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:benefits_digger/widgets/ui/bd_card.dart';

import '_helpers.dart';

void main() {
  testWidgets('card composes header/content/footer', (tester) async {
    await tester.pumpWidget(bdHarness(
      const BdCard(
        child: Column(
          children: [
            BdCardHeader(
              title: Text('Title'),
              description: Text('Desc'),
            ),
            BdCardContent(child: Text('Body')),
            BdCardFooter(children: [Text('Foot')]),
          ],
        ),
      ),
    ));
    expect(find.text('Title'), findsOneWidget);
    expect(find.text('Desc'), findsOneWidget);
    expect(find.text('Body'), findsOneWidget);
    expect(find.text('Foot'), findsOneWidget);
  });
}
