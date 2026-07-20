import 'package:flutter_test/flutter_test.dart';

import 'package:benefits_digger/widgets/ui/bd_select.dart';

import '_helpers.dart';

void main() {
  testWidgets('renders selected label', (tester) async {
    await tester.pumpWidget(
      bdHarness(
        BdSelect<String>(
          value: 'b',
          items: const [
            BdSelectItem(value: 'a', label: 'Alpha'),
            BdSelectItem(value: 'b', label: 'Beta'),
          ],
          onChanged: (_) {},
        ),
      ),
    );
    expect(find.text('Beta'), findsOneWidget);
  });
}
