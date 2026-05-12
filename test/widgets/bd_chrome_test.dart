import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:benefits_digger/app/theme.dart';
import 'package:benefits_digger/widgets/chrome/bd_footer.dart';
import 'package:benefits_digger/widgets/chrome/bd_header.dart';
import 'package:benefits_digger/widgets/chrome/bd_logo.dart';

Widget _routed(Widget child) {
  final router = GoRouter(
    initialLocation: '/',
    routes: [GoRoute(path: '/', builder: (_, __) => Scaffold(body: child))],
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
  testWidgets('header renders brand name', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(_routed(const Column(
      children: [BdHeader()],
    )));
    expect(find.text('Benefits Digger'), findsWidgets);
  });

  testWidgets('logo renders', (tester) async {
    await tester.pumpWidget(_routed(const BdLogo()));
    expect(find.text('Benefits Digger'), findsOneWidget);
  });

  testWidgets('footer renders columns', (tester) async {
    await tester.pumpWidget(_routed(const BdFooter()));
    expect(find.text('RESOURCES'), findsOneWidget);
    expect(find.text('ABOUT'), findsOneWidget);
  });
}
