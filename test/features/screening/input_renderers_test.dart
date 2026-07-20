import 'package:benefits_digger/features/screening/state/screening_controller.dart';
import 'package:benefits_digger/features/screening/widgets/input_renderers/boolean.dart';
import 'package:benefits_digger/features/screening/widgets/input_renderers/date.dart';
import 'package:benefits_digger/features/screening/widgets/input_renderers/multiselect.dart';
import 'package:benefits_digger/features/screening/widgets/input_renderers/number.dart';
import 'package:benefits_digger/features/screening/widgets/input_renderers/select.dart';
import 'package:benefits_digger/features/screening/widgets/input_renderers/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget _wrap(Widget child) => MaterialApp(
  home: Scaffold(
    body: Padding(padding: const EdgeInsets.all(16), child: child),
  ),
);

void main() {
  testWidgets('text renderer reflects value and emits changes', (tester) async {
    String last = '';
    await tester.pumpWidget(
      _wrap(TextInputRenderer(value: 'hi', onChanged: (v) => last = v)),
    );
    expect(find.text('hi'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'hello');
    expect(last, 'hello');
  });

  testWidgets('number renderer accepts only digits and dot', (tester) async {
    String last = '';
    await tester.pumpWidget(
      _wrap(NumberInputRenderer(value: '', onChanged: (v) => last = v)),
    );
    await tester.enterText(find.byType(TextField), '12.5abc');
    expect(last, '12.5');
  });

  testWidgets('boolean renderer toggles selection', (tester) async {
    bool? value;
    Widget build() =>
        _wrap(BooleanInputRenderer(value: value, onChanged: (v) => value = v));
    await tester.pumpWidget(build());
    await tester.tap(find.text('Yes'));
    expect(value, isTrue);
    await tester.pumpWidget(build());
    await tester.tap(find.text('No'));
    expect(value, isFalse);
  });

  testWidgets('select renderer emits selected option', (tester) async {
    String? selected;
    await tester.pumpWidget(
      _wrap(
        SelectInputRenderer(
          options: const <QuestionOption>[
            QuestionOption(value: 'a', label: 'Apple'),
            QuestionOption(value: 'b', label: 'Banana'),
          ],
          value: null,
          onChanged: (v) => selected = v,
        ),
      ),
    );
    await tester.tap(find.text('Banana'));
    expect(selected, 'b');
  });

  testWidgets('multiselect renderer toggles values', (tester) async {
    var current = <String>['a'];
    Widget build() => _wrap(
      MultiSelectInputRenderer(
        options: const <QuestionOption>[
          QuestionOption(value: 'a', label: 'Apple'),
          QuestionOption(value: 'b', label: 'Banana'),
        ],
        value: current,
        onChanged: (v) => current = v,
      ),
    );
    await tester.pumpWidget(build());
    await tester.tap(find.text('Banana'));
    expect(current, containsAll(<String>['a', 'b']));
    await tester.pumpWidget(build());
    await tester.tap(find.text('Apple'));
    expect(current, equals(<String>['b']));
  });

  testWidgets('date renderer renders the formatted value', (tester) async {
    await tester.pumpWidget(
      _wrap(DateInputRenderer(value: DateTime(2026, 5, 9), onChanged: (_) {})),
    );
    expect(find.textContaining('2026'), findsOneWidget);
  });
}
