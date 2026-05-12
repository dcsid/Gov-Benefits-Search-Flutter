import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/api/models/session.dart';
import '../../core/api/providers.dart';
import '../../core/error/error_handler.dart';
import '../../l10n/app_localizations.dart';
import '../../widgets/chrome/bd_header.dart';
import '../../widgets/ui/bd_accordion.dart';
import '../../widgets/ui/bd_badge.dart';
import '../../widgets/ui/bd_button.dart';
import '../../widgets/ui/bd_card.dart';
import '../../widgets/ui/bd_skeleton.dart';

class ResultsPage extends ConsumerWidget {
  const ResultsPage({super.key, required this.sessionId});

  final String sessionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(sessionResultsProvider(sessionId));

    return Scaffold(
      body: Column(
        children: [
          BdHeader(
            variant: BdHeaderVariant.results,
            trailing: TextButton.icon(
              onPressed: () => context.go('/screen'),
              icon: const Icon(Icons.refresh),
              label: const Text('Re-screen'),
            ),
          ),
          Expanded(
            child: async.when(
              loading: () => const _LoadingSkeleton(),
              error: (e, st) => _ResultsError(
                error: e,
                stackTrace: st,
                onRetry: () =>
                    ref.invalidate(sessionResultsProvider(sessionId)),
              ),
              data: (results) => _ResultsBody(
                sessionId: sessionId,
                results: results,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LoadingSkeleton extends StatelessWidget {
  const _LoadingSkeleton();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 960),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              BdSkeleton(height: 32, width: 320),
              SizedBox(height: 16),
              BdSkeleton(height: 16, width: 240),
              SizedBox(height: 32),
              BdSkeleton(height: 100),
              SizedBox(height: 12),
              BdSkeleton(height: 100),
              SizedBox(height: 12),
              BdSkeleton(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

class _ResultsError extends StatefulWidget {
  const _ResultsError({
    required this.error,
    required this.stackTrace,
    required this.onRetry,
  });

  final Object error;
  final StackTrace stackTrace;
  final VoidCallback onRetry;

  @override
  State<_ResultsError> createState() => _ResultsErrorState();
}

class _ResultsErrorState extends State<_ResultsError> {
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
    final scheme = Theme.of(context).colorScheme;
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 480),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.error_outline,
                  size: 48, color: scheme.onSurfaceVariant),
              const SizedBox(height: 16),
              Text(
                l10n?.results_couldNotLoad ?? "We couldn't load your results.",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              BdButton(
                label: l10n?.errors_tryAgain ?? 'Try again',
                leading: const Icon(Icons.refresh),
                onPressed: widget.onRetry,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ResultsBody extends StatelessWidget {
  const _ResultsBody({required this.sessionId, required this.results});

  final String sessionId;
  final SessionResults results;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context);
    final fed = results.federalResults;
    final state = results.stateResults;
    final total = fed.length + state.length;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 960),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'You may qualify for $total program${total == 1 ? '' : 's'}.',
                style: theme.textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Based on your answers — sorted by how confident we are.',
                style: TextStyle(color: scheme.onSurfaceVariant),
              ),
              const SizedBox(height: 24),
              _Section(
                title: l10n?.results_federalSection(fed.length) ??
                    'Federal programs (${fed.length})',
                emptyText: l10n?.results_emptyFederal ??
                    'No federal programs matched. Try answering more questions or broadening your screening.',
                programs: fed,
              ),
              const SizedBox(height: 24),
              _Section(
                title: l10n?.results_stateSection(state.length) ??
                    'State programs (${state.length})',
                emptyText: l10n?.results_emptyState ??
                    'No state programs matched yet. Add your state in the screening to see local programs.',
                programs: state,
              ),
              const SizedBox(height: 32),
              Center(
                child: BdButton(
                  label: l10n?.results_viewActionPlan ?? 'View action plan',
                  variant: BdButtonVariant.accent,
                  size: BdButtonSize.lg,
                  leading: const Icon(Icons.dashboard),
                  onPressed: () => context.go('/dashboard/$sessionId'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    required this.title,
    required this.emptyText,
    required this.programs,
  });

  final String title;
  final String emptyText;
  final List<ProgramResult> programs;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12),
        if (programs.isEmpty)
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: scheme.surfaceContainerLow,
              border: Border.all(color: scheme.outlineVariant),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(Icons.inbox_outlined,
                    size: 20, color: scheme.onSurfaceVariant),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    emptyText,
                    style: TextStyle(color: scheme.onSurfaceVariant),
                  ),
                ),
              ],
            ),
          )
        else
          // Lazy-build each program row; per-row RepaintBoundary keeps the
          // accordion expand/collapse on one card from repainting siblings.
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: programs.length,
            itemBuilder: (_, i) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: RepaintBoundary(child: _ProgramCard(program: programs[i])),
            ),
          ),
      ],
    );
  }
}

class _ProgramCard extends StatelessWidget {
  const _ProgramCard({required this.program});

  final ProgramResult program;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);

    final (badgeLabel, badgeVariant) = switch (program.eligibilityStatus) {
      'likely_eligible' => (
        l10n?.status_likelyEligible ?? 'Likely eligible',
        BdBadgeVariant.success,
      ),
      'possibly_eligible' => (
        l10n?.status_possiblyEligible ?? 'Possibly eligible',
        BdBadgeVariant.warning,
      ),
      'unclear' => (
        l10n?.status_unclear ?? 'Unclear',
        BdBadgeVariant.secondary,
      ),
      'likely_ineligible' => (
        l10n?.status_likelyIneligible ?? 'Probably not',
        BdBadgeVariant.destructive,
      ),
      _ => (program.eligibilityStatus, BdBadgeVariant.outline),
    };

    return BdCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: () => GoRouter.of(context).go(
                        '/program/${Uri.encodeComponent(program.programSlug)}',
                      ),
                      child: Text(
                        program.programName,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: theme.colorScheme.primary,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    if (program.agency != null) ...<Widget>[
                      const SizedBox(height: 4),
                      Text(
                        program.agency!,
                        style: TextStyle(
                          fontSize: 12,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              BdBadge(label: badgeLabel, variant: badgeVariant),
            ],
          ),
          if (program.summary != null && program.summary!.isNotEmpty) ...<Widget>[
            const SizedBox(height: 12),
            Text(program.summary!),
          ],
          if (program.matchedReasons.isNotEmpty) ...<Widget>[
            const SizedBox(height: 8),
            BdAccordion(
              items: [
                BdAccordionItem(
                  value: 'why-${program.programSlug}',
                  title: const Text('Why this match'),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      for (final r in program.matchedReasons)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Icon(
                                  Icons.circle,
                                  size: 5,
                                  color: theme.colorScheme.tertiary,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(child: Text(r)),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
