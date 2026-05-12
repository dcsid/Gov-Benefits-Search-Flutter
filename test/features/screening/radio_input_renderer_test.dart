import 'package:flutter_test/flutter_test.dart';

import 'package:benefits_digger/features/screening/state/screening_controller.dart';
import 'package:benefits_digger/features/screening/widgets/input_renderers/radio.dart';
import 'package:benefits_digger/widgets/ui/bd_button.dart';

import '../../widgets/_helpers.dart';

void main() {
  group('RadioInputRenderer', () {
    final yesNo = const <QuestionOption>[
      QuestionOption(value: 'Yes', label: 'Yes'),
      QuestionOption(value: 'No', label: 'No'),
    ];

    testWidgets('renders one BdButton per option', (tester) async {
      await tester.pumpWidget(bdHarness(
        RadioInputRenderer(options: yesNo, value: null, onChanged: (_) {}),
      ));
      expect(find.text('Yes'), findsOneWidget);
      expect(find.text('No'), findsOneWidget);
      expect(find.byType(BdButton), findsNWidgets(2));
    });

    testWidgets('selecting an option fires onChanged with the option value',
        (tester) async {
      String? received;
      await tester.pumpWidget(bdHarness(
        RadioInputRenderer(
          options: yesNo,
          value: null,
          onChanged: (v) => received = v,
        ),
      ));
      await tester.tap(find.text('Yes'));
      await tester.pump();
      expect(received, 'Yes');
    });

    testWidgets('selected option uses primary variant, others outline',
        (tester) async {
      await tester.pumpWidget(bdHarness(
        RadioInputRenderer(options: yesNo, value: 'Yes', onChanged: (_) {}),
      ));
      final buttons = tester.widgetList<BdButton>(find.byType(BdButton)).toList();
      expect(buttons, hasLength(2));
      final yesBtn = buttons.firstWhere((b) => b.label == 'Yes');
      final noBtn = buttons.firstWhere((b) => b.label == 'No');
      expect(yesBtn.variant, BdButtonVariant.primary);
      expect(noBtn.variant, BdButtonVariant.outline);
    });

    testWidgets('renders all options for a long enum-style question',
        (tester) async {
      const opts = <QuestionOption>[
        QuestionOption(value: 'a', label: 'Alpha'),
        QuestionOption(value: 'b', label: 'Beta'),
        QuestionOption(value: 'c', label: 'Gamma'),
        QuestionOption(value: 'd', label: 'Delta'),
      ];
      await tester.pumpWidget(bdHarness(
        RadioInputRenderer(options: opts, value: 'c', onChanged: (_) {}),
      ));
      for (final o in opts) {
        expect(find.text(o.label), findsOneWidget);
      }
    });
  });

  group('questionInputFromString', () {
    test('maps "radio" to QuestionInput.radio', () {
      expect(questionInputFromString('radio'), QuestionInput.radio);
      expect(questionInputFromString('RADIO'), QuestionInput.radio);
    });

    test('unknown type with options falls back to radio', () {
      expect(
        questionInputFromString('mystery', hasOptions: true),
        QuestionInput.radio,
      );
    });

    test('unknown type without options falls back to text', () {
      expect(
        questionInputFromString('mystery', hasOptions: false),
        QuestionInput.text,
      );
    });

    test('yes_no still maps to boolean', () {
      expect(questionInputFromString('yes_no'), QuestionInput.boolean);
      expect(questionInputFromString('boolean'), QuestionInput.boolean);
    });

    test('select stays a select (radio-style list)', () {
      expect(questionInputFromString('select'), QuestionInput.select);
      expect(
        questionInputFromString('single_select'),
        QuestionInput.select,
      );
    });

    test('multi_select / multiselect map to multiselect', () {
      expect(
        questionInputFromString('multi_select'),
        QuestionInput.multiselect,
      );
      expect(
        questionInputFromString('multiselect'),
        QuestionInput.multiselect,
      );
    });
  });
}
