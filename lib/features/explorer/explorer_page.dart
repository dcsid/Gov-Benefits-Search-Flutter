import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/error_handler.dart';
import '../../l10n/app_localizations.dart';
import '../../widgets/chrome/bd_footer.dart';
import '../../widgets/chrome/bd_header.dart';
import '../../widgets/ui/bd_alert.dart';
import '../../widgets/ui/bd_button.dart';
import 'state/explorer_controller.dart';
import 'widgets/filter_rail.dart';
import 'widgets/program_grid.dart';
import 'widgets/search_bar.dart';

class ExplorerPage extends StatelessWidget {
  const ExplorerPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                      const ExplorerSearchBar(),
                      const SizedBox(height: 16),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final isWide = constraints.maxWidth > 880;
                          return isWide
                              ? const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 280, child: FilterRail()),
                                    SizedBox(width: 24),
                                    Expanded(child: _Results()),
                                  ],
                                )
                              : const Column(
                                  children: [
                                    _CollapsibleFilters(),
                                    SizedBox(height: 16),
                                    _Results(),
                                  ],
                                );
                        },
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
          'CATALOG SEARCH',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: scheme.primary,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.4,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Program Explorer',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 8),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: Text(
            'Browse the official program catalog by need or keyword. Filter by '
            'jurisdiction and category to narrow down. Click any program for '
            'details, or ask the assistant a follow-up question.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}

class _CollapsibleFilters extends StatefulWidget {
  const _CollapsibleFilters();

  @override
  State<_CollapsibleFilters> createState() => _CollapsibleFiltersState();
}

class _CollapsibleFiltersState extends State<_CollapsibleFilters> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BdButton(
          label: _expanded ? 'Hide filters' : 'Show filters',
          leading: Icon(_expanded ? Icons.expand_less : Icons.tune),
          variant: BdButtonVariant.outline,
          onPressed: () => setState(() => _expanded = !_expanded),
        ),
        if (_expanded) ...[const SizedBox(height: 12), const FilterRail()],
      ],
    );
  }
}

/// Watches the explorer state itself so the rest of the page tree (page
/// header, search bar wrapper, filter rail) doesn't rebuild when only the
/// result set changes.
class _Results extends ConsumerWidget {
  const _Results();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(explorerControllerProvider);
    if (state.error != null) {
      return _ExplorerSearchError(
        error: state.error!,
        stackTrace: state.errorStack,
        onRetry: () => ref
            .read(explorerControllerProvider.notifier)
            .setQuery(state.request.query),
      );
    }
    final emptyText = state.request.query.trim().isNotEmpty
        ? 'No programs matched this search. Try a broader description or remove a filter.'
        : 'Start typing above to explore the program catalog.';
    final response = state.response;
    final mode = response?.mode ?? '';
    final interpretation =
        response?.interpretation ?? const <String, dynamic>{};
    final interpretationText =
        (interpretation['summary'] ?? interpretation['intent'])?.toString();
    final showInterpretation = response != null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showInterpretation) ...[
          BdAlert(
            variant: BdAlertVariant.info,
            title: 'Search interpretation',
            description: Text(
              interpretationText == null
                  ? 'Method: ${mode.isEmpty ? 'unknown' : mode}'
                  : 'Method: ${mode.isEmpty ? 'unknown' : mode}\n$interpretationText',
            ),
          ),
          const SizedBox(height: 12),
        ],
        ProgramGrid(
          hits: state.hits,
          isLoading: state.isLoading,
          emptyText: emptyText,
        ),
      ],
    );
  }
}

class _ExplorerSearchError extends StatefulWidget {
  const _ExplorerSearchError({
    required this.error,
    required this.stackTrace,
    required this.onRetry,
  });
  final Object error;
  final StackTrace? stackTrace;
  final VoidCallback onRetry;
  @override
  State<_ExplorerSearchError> createState() => _ExplorerSearchErrorState();
}

class _ExplorerSearchErrorState extends State<_ExplorerSearchError> {
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
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerLow,
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            Icons.error_outline,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              l10n?.errors_genericTitle ?? 'Something went wrong',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          BdButton(
            label: l10n?.errors_tryAgain ?? 'Try again',
            leading: const Icon(Icons.refresh),
            size: BdButtonSize.sm,
            onPressed: widget.onRetry,
          ),
        ],
      ),
    );
  }
}
