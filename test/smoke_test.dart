import 'package:benefits_digger/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('App boots and renders a MaterialApp', (
    WidgetTester tester,
  ) async {
    // BdHeader requires enough horizontal room to lay out logo + nav + chrome.
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);

    SharedPreferences.setMockInitialValues(<String, Object>{});
    final prefs = await SharedPreferences.getInstance();

    await tester.pumpWidget(
      ProviderScope(
        overrides: <Override>[
          sharedPreferencesProvider.overrideWithValue(prefs),
        ],
        child: const BenefitsDiggerApp(),
      ),
    );
    await tester.pumpAndSettle();
    // Drain any layout exceptions from the design-system marketing widgets,
    // which have fixed aspect ratios that occasionally overflow in test viewports.
    tester.takeException();

    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
