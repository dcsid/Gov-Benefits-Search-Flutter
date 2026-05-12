import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/error/error_handler.dart';
import '../../l10n/app_localizations.dart';
import '../../widgets/chrome/bd_footer.dart';
import '../../widgets/chrome/bd_header.dart';
import '../../widgets/ui/bd_button.dart';
import '../../widgets/ui/bd_card.dart';
import '../../widgets/ui/bd_skeleton.dart';
import 'state/whatif_controller.dart';
import 'widgets/comparison_grid.dart';
import 'widgets/scenario_editor.dart';

final _sessionIdProvider = FutureProvider<String?>((ref) async {
  final prefs = await SharedPreferences.getInstance();
  final raw = prefs.getString('bd.session_id');
  return (raw != null && raw.isNotEmpty) ? raw : null;
});

class WhatIfPage extends ConsumerWidget {
  const WhatIfPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sessionAsync = ref.watch(_sessionIdProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const RepaintBoundary(child: BdHeader()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1180),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _Header(),
                      const SizedBox(height: 16),
                      sessionAsync.when(
                        data: (sessionId) => sessionId == null
                            ? const _NoSession()
                            : _Body(sessionId: sessionId),
                        loading: () => const BdSkeleton(height: 200),
                        error: (err, st) => _SessionLoadError(
                          error: err,
                          stackTrace: st,
                          onRetry: () => ref.invalidate(_sessionIdProvider),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const RepaintBoundary(child: BdFooter()),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'SCENARIO COMPARE',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: scheme.primary,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.4,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'What-If Lab',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 8),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: Text(
            'Explore how your benefit matches change under hypothetical answers — '
            'different household size, lower income, or a move to another state. '
            'Your saved screening answers are not modified.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}

class _NoSession extends StatelessWidget {
  const _NoSession();

  @override
  Widget build(BuildContext context) {
    return BdCard(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Start a screening first',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'The What-If Lab compares against your active screening session. '
            'Run a screening to set a baseline, then come back to test scenarios.',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 12),
          BdButton(
            label: 'Start a screening',
            onPressed: () => context.push('/screen'),
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.sessionId});

  final String sessionId;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth > 980;
        final editor = BdCard(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Define a scenario',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 12),
              ScenarioEditor(sessionId: sessionId),
            ],
          ),
        );
        const results = _Results();
        return isWide
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 2, child: editor),
                  const SizedBox(width: 24),
                  const Expanded(flex: 3, child: results),
                ],
              )
            : Column(
                children: [editor, const SizedBox(height: 16), results],
              );
      },
    );
  }
}

/// Watches only the comparison + submitting flag so the editor's keystrokes
/// don't rebuild the result grid (and vice versa).
class _Results extends ConsumerWidget {
  const _Results();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final compare = ref.watch(
      whatIfControllerProvider.select((s) => s.compare),
    );
    final isLoading = ref.watch(
      whatIfControllerProvider.select((s) => s.isSubmitting),
    );
    return ComparisonGrid(compare: compare, isLoading: isLoading);
  }
}

class _SessionLoadError extends StatefulWidget {
  const _SessionLoadError({
    required this.error,
    required this.stackTrace,
    required this.onRetry,
  });
  final Object error;
  final StackTrace stackTrace;
  final VoidCallback onRetry;
  @override
  State<_SessionLoadError> createState() => _SessionLoadErrorState();
}

class _SessionLoadErrorState extends State<_SessionLoadError> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      showApiError(context, widget.error, stackTrace: widget.stackTrace);
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return BdCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n?.errors_genericTitle ?? 'Something went wrong',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 12),
          BdButton(
            label: l10n?.errors_tryAgain ?? 'Try again',
            leading: const Icon(Icons.refresh),
            onPressed: widget.onRetry,
          ),
        ],
      ),
    );
  }
}
