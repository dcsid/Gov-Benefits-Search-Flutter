import 'package:benefits_digger/widgets/ui/bd_dropdown_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'dropdown menu stays inside viewport when trigger is at right edge',
    (tester) async {
      tester.view.physicalSize = const Size(360, 800);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.reset);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Align(
              alignment: Alignment.topRight,
              child: BdDropdownMenu<int>(
                items: const [
                  BdDropdownItem(value: 1, label: 'One'),
                  BdDropdownItem(value: 2, label: 'Two'),
                  BdDropdownItem(value: 3, label: 'Three'),
                ],
                onSelected: (_) {},
                trigger: const SizedBox(
                  width: 32,
                  height: 32,
                  child: Icon(Icons.more_vert),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pump();

      expect(find.text('One'), findsOneWidget);

      final viewport = tester.view.physicalSize / tester.view.devicePixelRatio;
      final menuRect = tester.getRect(find.text('One'));
      expect(menuRect.left, greaterThanOrEqualTo(0));
      expect(menuRect.right, lessThanOrEqualTo(viewport.width));
    },
  );

  testWidgets('dropdown caps height and scrolls long item lists', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(800, 240);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: BdDropdownMenu<int>(
              items: List.generate(
                40,
                (i) => BdDropdownItem(value: i, label: 'Item $i'),
              ),
              onSelected: (_) {},
              trigger: const SizedBox(
                width: 60,
                height: 32,
                child: Center(child: Text('open')),
              ),
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.text('open'));
    await tester.pump();

    expect(find.byType(SingleChildScrollView), findsWidgets);
  });
}
