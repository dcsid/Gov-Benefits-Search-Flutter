import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Eagerly imported routes — landing, explorer, screening, info pages. These are
// either the first-visit destination or small enough that splitting them out
// would cost more in chunk-loader overhead than it would save in initial bytes.
import '../features/about/info_page.dart';
import '../features/explorer/explorer_page.dart';
import '../features/home/home_page.dart';
import '../features/program/program_detail_page.dart';
import '../features/screening/question_page.dart';
import '../features/screening/screen_landing_page.dart';
import '../features/whatif/whatif_page.dart';

// Deferred routes — split into separate JS chunks by dart2js so they don't
// land in `main.dart.js`. The chunk is fetched on first navigation to the
// route. dart2wasm does NOT honour `deferred as` (everything is eagerly
// imported), so the wins here only apply to the default JS build.
import '../features/_kitchen_sink/kitchen_sink_page.dart' deferred as kitchen;
import '../features/chat/chat_page.dart' deferred as chat;
import '../features/dashboard/dashboard_page.dart' deferred as dash;
import '../features/results/results_page.dart' deferred as results;

class AppRouterConfig {
  AppRouterConfig();

  late final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: HomePage()),
      ),
      GoRoute(
        path: '/explorer',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: ExplorerPage()),
      ),
      GoRoute(
        path: '/program/:slug',
        pageBuilder: (context, state) => NoTransitionPage(
          child: ProgramDetailPage(slug: state.pathParameters['slug'] ?? ''),
        ),
      ),
      GoRoute(
        path: '/whatif',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: WhatIfPage()),
      ),
      GoRoute(
        path: '/screen',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: ScreenLandingPage()),
      ),
      GoRoute(
        path: '/screen/:sessionId/q',
        pageBuilder: (context, state) => NoTransitionPage(
          child: QuestionPage(
            sessionId: state.pathParameters['sessionId'] ?? '',
          ),
        ),
      ),
      GoRoute(
        path: '/results/:sessionId',
        pageBuilder: (context, state) => NoTransitionPage(
          child: _DeferredPage(
            load: results.loadLibrary,
            build: () => results.ResultsPage(
              sessionId: state.pathParameters['sessionId'] ?? '',
            ),
          ),
        ),
      ),
      GoRoute(
        path: '/dashboard/:sessionId',
        pageBuilder: (context, state) => NoTransitionPage(
          child: _DeferredPage(
            load: dash.loadLibrary,
            build: () => dash.DashboardPage(
              sessionId: state.pathParameters['sessionId'] ?? '',
            ),
          ),
        ),
      ),
      GoRoute(
        path: '/chat',
        pageBuilder: (context, state) => NoTransitionPage(
          child: _DeferredPage(
            load: chat.loadLibrary,
            build: () => chat.ChatPage(
              sessionId: state.uri.queryParameters['session_id'],
            ),
          ),
        ),
      ),
      GoRoute(
        path: '/about',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: AboutPage()),
      ),
      GoRoute(
        path: '/privacy',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: PrivacyPage()),
      ),
      GoRoute(
        path: '/terms',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: TermsPage()),
      ),
      GoRoute(
        path: '/_kitchen_sink',
        pageBuilder: (context, state) => NoTransitionPage(
          child: _DeferredPage(
            load: kitchen.loadLibrary,
            build: () => kitchen.KitchenSinkPage(),
          ),
        ),
      ),
    ],
  );
}

/// Renders [build] once `load` (a `loadLibrary()` call on a deferred import)
/// resolves; shows a centered spinner with a Scaffold chrome while the chunk
/// downloads. Surfaces a user-friendly error and a retry on load failure
/// instead of throwing into the framework.
class _DeferredPage extends StatefulWidget {
  const _DeferredPage({required this.load, required this.build});

  final Future<void> Function() load;
  final Widget Function() build;

  @override
  State<_DeferredPage> createState() => _DeferredPageState();
}

class _DeferredPageState extends State<_DeferredPage> {
  late Future<void> _future = widget.load();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Scaffold(
            body: Center(
              child: SizedBox(
                width: 32,
                height: 32,
                child: CircularProgressIndicator(strokeWidth: 3),
              ),
            ),
          );
        }
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Icon(Icons.cloud_off, size: 32),
                    const SizedBox(height: 12),
                    const Text("This page didn't finish loading."),
                    const SizedBox(height: 12),
                    OutlinedButton(
                      onPressed: () =>
                          setState(() => _future = widget.load()),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return widget.build();
      },
    );
  }
}
