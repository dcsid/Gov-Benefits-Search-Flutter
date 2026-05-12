import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:benefits_digger/app/theme.dart';
import 'package:benefits_digger/core/api/models/chat.dart';
import 'package:benefits_digger/core/api/providers.dart';
import 'package:benefits_digger/core/api/services/help_service.dart';
import 'package:benefits_digger/features/help_bot/help_bot.dart';
import 'package:benefits_digger/features/help_bot/help_bot_controller.dart';
import 'package:benefits_digger/l10n/app_localizations.dart';

Widget _harness({
  required Widget child,
  HelpService? helpService,
  Size size = const Size(1200, 900),
}) {
  return ProviderScope(
    overrides: <Override>[
      if (helpService != null) helpServiceProvider.overrideWithValue(helpService),
    ],
    child: MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      supportedLocales: const <Locale>[Locale('en'), Locale('es')],
      localizationsDelegates: const <LocalizationsDelegate<Object>>[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: MediaQuery(
        data: MediaQueryData(size: size),
        child: Scaffold(body: child),
      ),
    ),
  );
}

void main() {
  group('helpBotVisibleOn', () {
    test('hides on /chat exact match', () {
      expect(helpBotVisibleOn('/chat'), isFalse);
    });
    test('hides on /chat sub-paths', () {
      expect(helpBotVisibleOn('/chat/anything'), isFalse);
    });
    test('hides on /login', () {
      expect(helpBotVisibleOn('/login'), isFalse);
      expect(helpBotVisibleOn('/login/sso'), isFalse);
    });
    test('shows on home, explorer, screening, results, dashboard', () {
      for (final p in <String>[
        '/',
        '/explorer',
        '/screen',
        '/screen/abc/q',
        '/results/abc',
        '/dashboard/abc',
        '/program/snap',
        '/whatif',
      ]) {
        expect(helpBotVisibleOn(p), isTrue, reason: 'should show on $p');
      }
    });
  });

  group('HelpBot widget', () {
    testWidgets('renders FAB when closed and shows panel after tap',
        (tester) async {
      await tester.pumpWidget(_harness(
        helpService: MockHelpService(tokens: const <String>[]),
        child: const HelpBot(currentRoute: '/'),
      ));
      await tester.pump();

      // Closed: FAB icon present, panel header absent.
      expect(find.byIcon(Icons.help_outline), findsOneWidget);
      expect(find.text('Help with this app'), findsNothing);

      await tester.tap(find.byIcon(Icons.help_outline));
      await tester.pumpAndSettle();

      // Open: panel header visible.
      expect(find.text('Help with this app'), findsOneWidget);
    });

    testWidgets('renders nothing on /chat', (tester) async {
      await tester.pumpWidget(_harness(
        helpService: MockHelpService(tokens: const <String>[]),
        child: const HelpBot(currentRoute: '/chat'),
      ));
      await tester.pump();
      expect(find.byIcon(Icons.help_outline), findsNothing);
    });

    testWidgets('close button in panel closes the bot back to FAB',
        (tester) async {
      await tester.pumpWidget(_harness(
        helpService: MockHelpService(tokens: const <String>[]),
        child: const HelpBot(currentRoute: '/'),
      ));
      await tester.tap(find.byIcon(Icons.help_outline));
      await tester.pumpAndSettle();
      expect(find.text('Help with this app'), findsOneWidget);
      // Close control is now an InkWell (HelpBot lives outside any Overlay,
      // so IconButton's injected Tooltip would crash — see help_bot.dart).
      await tester.tap(find.byIcon(Icons.close));
      await tester.pumpAndSettle();
      expect(find.text('Help with this app'), findsNothing);
      expect(find.byIcon(Icons.help_outline), findsOneWidget);
    });
  });

  group('HelpBotController', () {
    test('open / close / toggle move isOpen', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final ctl = container.read(helpBotControllerProvider.notifier);
      expect(container.read(helpBotControllerProvider).isOpen, isFalse);
      ctl.open();
      expect(container.read(helpBotControllerProvider).isOpen, isTrue);
      ctl.close();
      expect(container.read(helpBotControllerProvider).isOpen, isFalse);
      ctl.toggle();
      expect(container.read(helpBotControllerProvider).isOpen, isTrue);
    });

    test('send appends user + assistant messages and streams tokens',
        () async {
      final container = ProviderContainer(overrides: <Override>[
        helpServiceProvider.overrideWithValue(
          MockHelpService(
            tokens: const <String>['hello ', 'world'],
            tokenDelay: Duration.zero,
          ),
        ),
      ]);
      addTearDown(container.dispose);
      final ctl = container.read(helpBotControllerProvider.notifier);
      await ctl.send('how do I screen?');
      await Future<void>.delayed(const Duration(milliseconds: 30));
      final state = container.read(helpBotControllerProvider);
      expect(state.messages, hasLength(2));
      expect(state.messages.first.content, 'how do I screen?');
      expect(state.messages.last.content, 'hello world');
      expect(state.isStreaming, isFalse);
    });

    test('reset wipes messages but keeps isOpen', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final ctl = container.read(helpBotControllerProvider.notifier);
      ctl.open();
      ctl.reset();
      final s = container.read(helpBotControllerProvider);
      expect(s.messages, isEmpty);
      expect(s.isOpen, isTrue);
    });
  });

  group('HelpService wire shape', () {
    test('MockHelpService emits tokens then done in order', () async {
      final svc = MockHelpService(
        tokens: const <String>['a', 'b'],
        tokenDelay: Duration.zero,
      );
      final events = <ChatStreamEvent>[];
      await for (final e in svc.ask(userMessage: 'hi')) {
        events.add(e);
      }
      expect(events, hasLength(3));
      expect(
        events.first.maybeWhen(token: (t) => t, orElse: () => null),
        'a',
      );
      expect(
        events[1].maybeWhen(token: (t) => t, orElse: () => null),
        'b',
      );
      expect(
        events.last.maybeWhen(done: (_, __, ___, ____) => true, orElse: () => false),
        isTrue,
      );
    });
  });
}
