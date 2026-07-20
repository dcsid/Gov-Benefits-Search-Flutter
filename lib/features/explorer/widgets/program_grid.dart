import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/api/models/explorer.dart';
import '../../../widgets/ui/bd_badge.dart';
import '../../../widgets/ui/bd_card.dart';
import '../../../widgets/ui/bd_skeleton.dart';

class ProgramGrid extends StatelessWidget {
  const ProgramGrid({
    super.key,
    required this.hits,
    required this.isLoading,
    this.emptyText = 'No programs match your filters yet.',
  });

  final List<ExplorerHit> hits;
  final bool isLoading;
  final String emptyText;

  @override
  Widget build(BuildContext context) {
    if (isLoading && hits.isEmpty) {
      return _gridBuilder(
        context,
        count: 6,
        builder: (_, __) => const _SkeletonCard(),
      );
    }
    if (hits.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.outlineVariant,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: Text(emptyText)),
      );
    }
    return _gridBuilder(
      context,
      // RepaintBoundary per cell so scrolling only repaints the cells whose
      // bounds actually changed; without it the GPU repaints every visible
      // cell on every scroll tick.
      count: hits.length,
      builder: (_, i) => RepaintBoundary(child: ExplorerHitCard(hit: hits[i])),
    );
  }

  /// Lazy grid: only the visible cards (plus a small cache extent) get
  /// built, so a 50-item search response no longer allocates 50 widget
  /// subtrees up front.
  Widget _gridBuilder(
    BuildContext context, {
    required int count,
    required IndexedWidgetBuilder builder,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final cols = constraints.maxWidth > 900
            ? 3
            : constraints.maxWidth > 560
            ? 2
            : 1;
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: cols,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1.15,
          ),
          itemCount: count,
          itemBuilder: builder,
        );
      },
    );
  }
}

class ExplorerHitCard extends StatelessWidget {
  const ExplorerHitCard({super.key, required this.hit});

  final ExplorerHit hit;

  @override
  Widget build(BuildContext context) {
    final summary =
        hit.summary ?? 'Official program description not yet ingested.';
    final jurisdictionLabel =
        hit.jurisdiction?.level.toUpperCase() ?? 'PROGRAM';
    final agencyOrCode = hit.agency ?? hit.jurisdiction?.code ?? '';
    return BdCard(
      padding: const EdgeInsets.all(16),
      onTap: () => context.push('/program/${Uri.encodeComponent(hit.slug)}'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  hit.name,
                  style: Theme.of(context).textTheme.titleMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 8),
              BdBadge(
                label: jurisdictionLabel,
                variant: BdBadgeVariant.outline,
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(agencyOrCode, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 8),
          Expanded(
            child: Text(
              summary,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (hit.category != null) ...[
            const SizedBox(height: 8),
            BdBadge(label: hit.category!, variant: BdBadgeVariant.secondary),
          ],
        ],
      ),
    );
  }
}

class _SkeletonCard extends StatelessWidget {
  const _SkeletonCard();

  @override
  Widget build(BuildContext context) {
    return BdCard(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          BdSkeleton(height: 18, width: 180),
          SizedBox(height: 6),
          BdSkeleton(height: 12, width: 100),
          SizedBox(height: 12),
          BdSkeleton(height: 10),
          SizedBox(height: 6),
          BdSkeleton(height: 10),
          SizedBox(height: 6),
          BdSkeleton(height: 10, width: 140),
        ],
      ),
    );
  }
}
