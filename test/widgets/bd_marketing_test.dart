import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:benefits_digger/app/theme.dart';
import 'package:benefits_digger/widgets/marketing/hero.dart';
import 'package:benefits_digger/widgets/marketing/how_it_works.dart';
import 'package:benefits_digger/widgets/marketing/landing_sections.dart';
import 'package:benefits_digger/widgets/marketing/trust_signals.dart';

Widget _routed(Widget child) {
  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => Scaffold(body: SingleChildScrollView(child: child)),
      ),
    ],
  );
  return ProviderScope(
    child: MaterialApp.router(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      routerConfig: router,
    ),
  );
}

void main() {
  setUp(() {});

  testWidgets('hero renders title and CTA', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(_routed(const BdHero()));
    expect(find.textContaining('Find out what help'), findsOneWidget);
    // Primary CTA is now "Explore programs" (was "Start screening").
    expect(find.textContaining('Explore'), findsWidgets);
    expect(find.textContaining('screening'), findsWidgets);
  });

  testWidgets('how it works renders three steps', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(_routed(const BdHowItWorks()));
    expect(find.text('How it works'), findsOneWidget);
    expect(find.text('01'), findsOneWidget);
    expect(find.text('02'), findsOneWidget);
    expect(find.text('03'), findsOneWidget);
  });

  testWidgets('trust signals render', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(_routed(const BdTrustSignals()));
    expect(find.text('Why people trust us'), findsOneWidget);
  });

  testWidgets('categories grid renders', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(_routed(const BdCategories()));
    expect(find.text('We help with'), findsOneWidget);
    expect(find.text('Food'), findsOneWidget);
  });

  testWidgets('honesty renders', (tester) async {
    await tester.pumpWidget(_routed(const BdHonesty()));
    expect(find.text('A few honest things'), findsOneWidget);
  });
}
