import 'package:flutter/material.dart';

import '../../../core/api/models/session.dart';
import '../../../widgets/ui/bd_card.dart';
import 'delta_badge.dart';

class ComparisonGrid extends StatelessWidget {
  const ComparisonGrid({
    super.key,
    required this.compare,
    required this.isLoading,
  });

  final SessionCompare? compare;
  final bool isLoading;

  ScenarioComparison? get _scenario =>
      compare == null || compare!.comparisons.isEmpty
      ? null
      : compare!.comparisons.first;

  @override
  Widget build(BuildContext context) {
    final scenario = _scenario;
    final summary = scenario?.summary ?? const <String, dynamic>{};
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (scenario != null) ...[
          // RepaintBoundary on the badge grid: scenario summary changes
          // independently of the program-list section below it; isolating
          // them means a scenario re-run repaints only the changed half.
          RepaintBoundary(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final cols = constraints.maxWidth > 600 ? 4 : 2;
                return GridView.count(
                  crossAxisCount: cols,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1.8,
                  children: [
                    DeltaBadge(
                      label: 'Likely matches',
                      value: _readInt(summary, 'likely_delta'),
                      unit: '',
                    ),
                    DeltaBadge(
                      label: 'Possible matches',
                      value: _readInt(summary, 'possible_delta'),
                      unit: '',
                    ),
                    DeltaBadge(
                      label: 'Federal',
                      value: _readInt(summary, 'federal_delta'),
                      unit: '',
                    ),
                    DeltaBadge(
                      label: 'State',
                      value: _readInt(summary, 'state_delta'),
                      unit: '',
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 16),
        ],
        BdCard(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.auto_awesome, size: 16),
                  const SizedBox(width: 6),
                  Text(
                    'Scenario',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  if (scenario != null) ...[
                    const SizedBox(width: 8),
                    Text(
                      scenario.name,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ],
              ),
              const SizedBox(height: 12),
              if (scenario == null && !isLoading)
                Text(
                  'Run a scenario to see how matches change.',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              if (isLoading)
                Text(
                  'Crunching the scenario...',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              if (scenario != null) ...[
                _Section(
                  title: 'New or unlocked programs',
                  child: scenario.gainedPrograms.isEmpty
                      ? const _Empty(
                          'No new positive matches in this scenario.',
                        )
                      : _ProgramList(programs: scenario.gainedPrograms),
                ),
                const SizedBox(height: 12),
                _Section(
                  title: 'Improved programs',
                  child: scenario.improvedPrograms.isEmpty
                      ? const _Empty('No status improvements in this scenario.')
                      : _ProgramList(programs: scenario.improvedPrograms),
                ),
                if (scenario.lostPrograms.isNotEmpty) ...[
                  const SizedBox(height: 12),
                  _Section(
                    title: 'Lost programs',
                    child: _ProgramList(programs: scenario.lostPrograms),
                  ),
                ],
              ],
            ],
          ),
        ),
      ],
    );
  }
}

int _readInt(Map<String, dynamic> map, String key) {
  final v = map[key];
  if (v is int) return v;
  if (v is num) return v.toInt();
  if (v is String) return int.tryParse(v) ?? 0;
  return 0;
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            letterSpacing: 1.2,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 6),
        child,
      ],
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(text, style: Theme.of(context).textTheme.bodySmall),
    );
  }
}

class _ProgramList extends StatelessWidget {
  const _ProgramList({required this.programs});

  final List<Map<String, dynamic>> programs;

  @override
  Widget build(BuildContext context) {
    final outline = Theme.of(context).colorScheme.outlineVariant;
    final smallText = Theme.of(context).textTheme.bodySmall;
    // ListView.builder lazily materializes rows so a long comparison list
    // doesn't allocate every Container/Text up front.
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: programs.length,
      itemBuilder: (context, i) {
        final entry = programs[i];
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: outline)),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      (entry['program_name'] ??
                              entry['name'] ??
                              entry['program_slug'] ??
                              '—')
                          .toString(),
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    if (entry['agency'] != null)
                      Text(entry['agency'].toString(), style: smallText),
                  ],
                ),
              ),
              if (entry['eligibility_status'] != null)
                Text(entry['eligibility_status'].toString(), style: smallText),
            ],
          ),
        );
      },
    );
  }
}
