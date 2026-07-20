import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/api/models/session.dart';
import '../../core/api/providers.dart';
import '../../core/error/error_handler.dart';
import '../../l10n/app_localizations.dart';
import '../../widgets/chrome/bd_header.dart';
import '../../widgets/ui/bd_badge.dart';
import '../../widgets/ui/bd_button.dart';
import '../../widgets/ui/bd_card.dart';
import '../../widgets/ui/bd_skeleton.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key, required this.sessionId});

  final String sessionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(sessionPlanProvider(sessionId));

    return Scaffold(
      body: Column(
        children: [
          BdHeader(
            variant: BdHeaderVariant.results,
            trailing: TextButton.icon(
              onPressed: () => context.go('/results/$sessionId'),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Results'),
            ),
          ),
          Expanded(
            child: async.when(
              loading: () => const _LoadingSkeleton(),
              error: (e, st) => _DashboardError(
                error: e,
                stackTrace: st,
                onRetry: () => ref.invalidate(sessionPlanProvider(sessionId)),
              ),
              data: (plan) => _PlanBody(plan: plan, sessionId: sessionId),
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
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              BdSkeleton(height: 120),
              SizedBox(height: 12),
              BdSkeleton(height: 200),
              SizedBox(height: 12),
              BdSkeleton(height: 200),
            ],
          ),
        ),
      ),
    );
  }
}

class _DashboardError extends StatefulWidget {
  const _DashboardError({
    required this.error,
    required this.stackTrace,
    required this.onRetry,
  });
  final Object error;
  final StackTrace stackTrace;
  final VoidCallback onRetry;
  @override
  State<_DashboardError> createState() => _DashboardErrorState();
}

class _DashboardErrorState extends State<_DashboardError> {
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
              Icon(
                Icons.error_outline,
                size: 48,
                color: scheme.onSurfaceVariant,
              ),
              const SizedBox(height: 16),
              Text(
                l10n?.dashboard_couldNotLoad ??
                    "We couldn't load your action plan.",
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

class _PlanBody extends StatelessWidget {
  const _PlanBody({required this.plan, required this.sessionId});

  final SessionPlan plan;
  final String sessionId;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final twoColumn = width >= 960;

    // Each card is wrapped in its own RepaintBoundary so a toggle inside
    // _DocumentsCard (the only stateful card) doesn't force the rest of
    // the dashboard to repaint.
    final main = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RepaintBoundary(child: _StackCard(stack: plan.benefitStack)),
        const SizedBox(height: 16),
        RepaintBoundary(child: _ActionsCard(actions: plan.actionPlan)),
        const SizedBox(height: 16),
        RepaintBoundary(
          child: _DocumentsCard(
            sessionId: sessionId,
            documents: plan.documentChecklist,
          ),
        ),
        const SizedBox(height: 16),
        RepaintBoundary(child: _NotesCard(notes: plan.planningNotes)),
        const SizedBox(height: 16),
        RepaintBoundary(child: _SourceHubCard(sources: plan.officialSourceHub)),
      ],
    );

    final summary = Column(
      children: [
        RepaintBoundary(child: _SummaryCard(plan: plan)),
        const SizedBox(height: 16),
        RepaintBoundary(
          child: _MissingFactsCard(
            sessionId: sessionId,
            facts: plan.topMissingFacts,
          ),
        ),
      ],
    );

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: twoColumn
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(flex: 2, child: main),
                    const SizedBox(width: 24),
                    SizedBox(width: 320, child: summary),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[summary, const SizedBox(height: 16), main],
                ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Summary card
// ---------------------------------------------------------------------------

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({required this.plan});

  final SessionPlan plan;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context);
    final overview = plan.overview;

    return BdCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Snapshot',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          if (overview.estimatedMonthlyTotal > 0)
            _Stat(
              label: 'Estimated /month',
              value: '\$${overview.estimatedMonthlyTotal}',
            ),
          _Stat(label: 'Likely', value: '${overview.likelyPrograms}'),
          _Stat(label: 'Possible', value: '${overview.possiblePrograms}'),
          _Stat(label: 'Answered', value: '${overview.answeredQuestions}'),
          _Stat(
            label: 'Rule coverage',
            value: '${overview.averageRuleCoverage}%',
          ),
          const Divider(height: 24),
          Text(
            'Privacy',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Your screening stays on this device unless you save or share it.',
            style: TextStyle(
              color: scheme.onSurfaceVariant,
              fontSize: 13,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.label, required this.value});
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              label,
              style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13),
            ),
          ),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Benefit stack — the wire shape is CATEGORY ROLLUPS
// {category, label, likely_programs, possible_programs, top_programs[]}
// not individual programs. Render as category groups with the top program names
// underneath.
// ---------------------------------------------------------------------------

class _StackCard extends StatelessWidget {
  const _StackCard({required this.stack});

  final List<Map<String, dynamic>> stack;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return BdCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            l10n?.dashboard_stackTitle ?? 'Your benefit stack',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          if (stack.isEmpty)
            Text(
              l10n?.dashboard_emptyStack ??
                  "We don't have a benefit stack for you yet. Finish your screening to populate it.",
              style: TextStyle(color: scheme.onSurfaceVariant),
            )
          else
            // Lazy-build per category — important when a user has many
            // matched categories and is on a low-end device.
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: stack.length,
              itemBuilder: (_, i) => _StackGroup(entry: stack[i]),
            ),
        ],
      ),
    );
  }
}

class _StackGroup extends StatelessWidget {
  const _StackGroup({required this.entry});

  final Map<String, dynamic> entry;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final label = (entry['label'] ?? entry['category'] ?? '').toString();
    final likely = (entry['likely_programs'] as num?)?.toInt() ?? 0;
    final possible = (entry['possible_programs'] as num?)?.toInt() ?? 0;
    final top =
        (entry['top_programs'] as List?)?.map((e) => e.toString()).toList() ??
        const <String>[];

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
              if (likely > 0)
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: BdBadge(
                    label: '$likely likely',
                    variant: BdBadgeVariant.success,
                  ),
                ),
              if (possible > 0)
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: BdBadge(
                    label: '$possible possible',
                    variant: BdBadgeVariant.warning,
                  ),
                ),
            ],
          ),
          if (top.isNotEmpty) ...[
            const SizedBox(height: 6),
            for (final name in top)
              Padding(
                padding: const EdgeInsets.only(bottom: 2, left: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6, right: 8),
                      child: Icon(
                        Icons.circle,
                        size: 4,
                        color: scheme.tertiary,
                      ),
                    ),
                    Expanded(
                      child: Text(name, style: const TextStyle(fontSize: 13)),
                    ),
                  ],
                ),
              ),
          ],
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Action plan — wire shape:
// {program_name, eligibility_status, confidence, step_label, url, jurisdiction}
// ---------------------------------------------------------------------------

class _ActionsCard extends StatelessWidget {
  const _ActionsCard({required this.actions});

  final List<Map<String, dynamic>> actions;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return BdCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            l10n?.dashboard_actionsTitle ?? 'Next actions',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          if (actions.isEmpty)
            Text(
              l10n?.dashboard_emptyActions ??
                  'No next actions yet — answer a few more questions to get a tailored plan.',
              style: TextStyle(color: scheme.onSurfaceVariant),
            )
          else
            // Lazy-build; per-row RepaintBoundary so an Apply-button hover
            // doesn't repaint sibling rows.
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: actions.length,
              itemBuilder: (_, i) => RepaintBoundary(
                child: _ActionRow(index: i + 1, action: actions[i]),
              ),
            ),
        ],
      ),
    );
  }
}

class _ActionRow extends StatelessWidget {
  const _ActionRow({required this.index, required this.action});

  final int index;
  final Map<String, dynamic> action;

  static const _statusVariants = <String, (String, BdBadgeVariant)>{
    'likely_eligible': ('Likely', BdBadgeVariant.success),
    'possibly_eligible': ('Possibly', BdBadgeVariant.warning),
    'unclear': ('Unclear', BdBadgeVariant.secondary),
    'likely_ineligible': ('Probably not', BdBadgeVariant.destructive),
  };

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final program = (action['program_name'] ?? '').toString();
    final stepLabel = (action['step_label'] ?? action['description'] ?? '')
        .toString();
    final url = action['url']?.toString();
    final status = action['eligibility_status']?.toString();
    final jurisdiction = action['jurisdiction']?.toString();
    final confidence = (action['confidence'] as num?)?.toInt();

    final stepHeader = l10n?.dashboard_step(index) ?? 'Step $index';
    final headerText = program.isEmpty ? stepHeader : '$stepHeader: $program';
    final statusEntry = status != null ? _statusVariants[status] : null;

    final validUri = (url != null && url.isNotEmpty) ? Uri.tryParse(url) : null;
    final canOpen =
        validUri != null &&
        (validUri.hasScheme &&
            (validUri.scheme == 'http' || validUri.scheme == 'https'));

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 24,
            height: 24,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: scheme.primary,
              shape: BoxShape.circle,
            ),
            child: Text(
              '$index',
              style: TextStyle(
                color: scheme.onPrimary,
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  headerText,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                if (stepLabel.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Text(
                    stepLabel,
                    style: TextStyle(
                      color: scheme.onSurfaceVariant,
                      fontSize: 13,
                    ),
                  ),
                ],
                const SizedBox(height: 6),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    if (statusEntry != null)
                      BdBadge(label: statusEntry.$1, variant: statusEntry.$2),
                    if (jurisdiction != null && jurisdiction.isNotEmpty)
                      BdBadge(
                        label: jurisdiction,
                        variant: BdBadgeVariant.outline,
                      ),
                    if (confidence != null)
                      BdBadge(
                        label: '$confidence% confidence',
                        variant: BdBadgeVariant.secondary,
                      ),
                  ],
                ),
                const SizedBox(height: 6),
                if (canOpen)
                  TextButton.icon(
                    onPressed: () => _launch(validUri),
                    icon: const Icon(Icons.open_in_new, size: 14),
                    label: Text(l10n?.dashboard_apply ?? 'Apply'),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  )
                else
                  Text(
                    l10n?.dashboard_applyLinkUnavailable ??
                        'Application link unavailable — contact your local agency.',
                    style: TextStyle(
                      color: scheme.onSurfaceVariant,
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launch(Uri uri) async {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}

// ---------------------------------------------------------------------------
// Document checklist — wire shape: {name, type ("required"|"helpful"),
// description, programs[]}. Each item gets a checkbox persisted in
// shared_preferences keyed by sessionId+name.
// ---------------------------------------------------------------------------

class _DocumentsCard extends ConsumerStatefulWidget {
  const _DocumentsCard({required this.sessionId, required this.documents});

  final String sessionId;
  final List<Map<String, dynamic>> documents;

  @override
  ConsumerState<_DocumentsCard> createState() => _DocumentsCardState();
}

class _DocumentsCardState extends ConsumerState<_DocumentsCard> {
  Set<String> _checked = <String>{};
  bool _hydrated = false;
  // Memoized doc partition — previously recomputed on every build (which
  // fires on every checkbox toggle). Now refreshed only when the documents
  // list identity changes.
  late List<Map<String, dynamic>> _required;
  late List<Map<String, dynamic>> _helpful;

  String get _prefsKey => 'dashboard.docs.${widget.sessionId}';

  void _partitionDocs() {
    _required = widget.documents
        .where((d) => (d['type']?.toString() ?? '') == 'required')
        .toList(growable: false);
    _helpful = widget.documents
        .where((d) => (d['type']?.toString() ?? '') != 'required')
        .toList(growable: false);
  }

  @override
  void initState() {
    super.initState();
    _partitionDocs();
    _hydrate();
  }

  @override
  void didUpdateWidget(covariant _DocumentsCard old) {
    super.didUpdateWidget(old);
    if (!identical(old.documents, widget.documents)) {
      _partitionDocs();
    }
  }

  Future<void> _hydrate() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getStringList(_prefsKey) ?? const <String>[];
    if (!mounted) return;
    setState(() {
      _checked = saved.toSet();
      _hydrated = true;
    });
  }

  Future<void> _toggle(String name) async {
    setState(() {
      if (_checked.contains(name)) {
        _checked.remove(name);
      } else {
        _checked.add(name);
      }
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_prefsKey, _checked.toList());
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final docs = widget.documents;

    return BdCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            l10n?.dashboard_documentsTitle ?? 'Documents to gather',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          if (docs.isEmpty)
            Text(
              l10n?.dashboard_emptyDocuments ?? 'No documents to gather yet.',
              style: TextStyle(color: scheme.onSurfaceVariant),
            ),
          if (_required.isNotEmpty) ...<Widget>[
            const Text(
              'REQUIRED',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 6),
            // Lazy-build; each row carries its own RepaintBoundary so a
            // single toggle repaints just that row.
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _required.length,
              itemBuilder: (_, i) {
                final d = _required[i];
                return RepaintBoundary(
                  child: _DocRow(
                    doc: d,
                    isRequired: true,
                    checked: _checked.contains(_docKey(d)),
                    onToggle: _hydrated ? () => _toggle(_docKey(d)) : null,
                  ),
                );
              },
            ),
          ],
          if (_helpful.isNotEmpty) ...<Widget>[
            const SizedBox(height: 12),
            Text(
              'HELPFUL TO HAVE',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.2,
                color: scheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 6),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _helpful.length,
              itemBuilder: (_, i) {
                final d = _helpful[i];
                return RepaintBoundary(
                  child: _DocRow(
                    doc: d,
                    isRequired: false,
                    checked: _checked.contains(_docKey(d)),
                    onToggle: _hydrated ? () => _toggle(_docKey(d)) : null,
                  ),
                );
              },
            ),
          ],
        ],
      ),
    );
  }

  String _docKey(Map<String, dynamic> d) =>
      (d['name'] ?? d['label'] ?? '').toString();
}

class _DocRow extends StatelessWidget {
  const _DocRow({
    required this.doc,
    required this.isRequired,
    required this.checked,
    required this.onToggle,
  });

  final Map<String, dynamic> doc;
  final bool isRequired;
  final bool checked;
  final VoidCallback? onToggle;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final name = (doc['name'] ?? doc['label'] ?? '').toString();
    final description = (doc['description'] ?? doc['why_required'] ?? '')
        .toString();
    final sourceUrl = doc['source_url']?.toString();
    final programs = (doc['programs'] as List?)?.join(', ') ?? '';

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: onToggle,
            borderRadius: BorderRadius.circular(4),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Icon(
                checked ? Icons.check_box : Icons.check_box_outline_blank,
                size: 18,
                color: isRequired ? scheme.primary : scheme.onSurfaceVariant,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    decoration: checked ? TextDecoration.lineThrough : null,
                    color: checked ? scheme.onSurfaceVariant : null,
                  ),
                ),
                if (description.isNotEmpty)
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                if (programs.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      'For: $programs',
                      style: TextStyle(
                        fontSize: 11,
                        color: scheme.onSurfaceVariant,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                if (sourceUrl != null && sourceUrl.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  TextButton.icon(
                    onPressed: () {
                      final u = Uri.tryParse(sourceUrl);
                      if (u != null) {
                        launchUrl(u, mode: LaunchMode.externalApplication);
                      }
                    },
                    icon: const Icon(Icons.open_in_new, size: 12),
                    label: const Text('Source'),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Planning notes — wire shape: list of strings (paragraphs).
// ---------------------------------------------------------------------------

class _NotesCard extends StatelessWidget {
  const _NotesCard({required this.notes});

  final List<String> notes;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return BdCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            l10n?.dashboard_notesTitle ?? 'Planning notes',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          if (notes.isEmpty)
            Text(
              l10n?.dashboard_emptyNotes ??
                  'No additional notes for your situation.',
              style: TextStyle(color: scheme.onSurfaceVariant),
            )
          else
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: notes.length,
              itemBuilder: (_, i) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  notes[i],
                  style: const TextStyle(fontSize: 14, height: 1.5),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Official source hub — wire shape: list of {label, url}.
// ---------------------------------------------------------------------------

class _SourceHubCard extends StatelessWidget {
  const _SourceHubCard({required this.sources});

  final List<Map<String, dynamic>> sources;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return BdCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            l10n?.dashboard_sourceHubTitle ?? 'Official source hub',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          if (sources.isEmpty)
            Text(
              l10n?.dashboard_emptySources ?? 'No source links available.',
              style: TextStyle(color: scheme.onSurfaceVariant),
            )
          else
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: sources.length,
              itemBuilder: (_, i) => _SourceRow(source: sources[i]),
            ),
        ],
      ),
    );
  }
}

class _SourceRow extends StatelessWidget {
  const _SourceRow({required this.source});
  final Map<String, dynamic> source;
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final label = (source['label'] ?? source['title'] ?? '').toString();
    final url = source['url']?.toString();
    final uri = (url != null && url.isNotEmpty) ? Uri.tryParse(url) : null;
    final canOpen =
        uri != null && (uri.scheme == 'http' || uri.scheme == 'https');

    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4, right: 8),
            child: Icon(Icons.link, size: 14, color: scheme.tertiary),
          ),
          Expanded(
            child: canOpen
                ? InkWell(
                    onTap: () =>
                        launchUrl(uri, mode: LaunchMode.externalApplication),
                    child: Text(
                      label.isEmpty ? url! : label,
                      style: TextStyle(
                        color: scheme.primary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                : Text(label, style: TextStyle(color: scheme.onSurfaceVariant)),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Top missing facts — small "Help us narrow this down" prompt with one-tap
// resume-screening button.
// ---------------------------------------------------------------------------

class _MissingFactsCard extends StatelessWidget {
  const _MissingFactsCard({required this.sessionId, required this.facts});

  final String sessionId;
  final List<Map<String, dynamic>> facts;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    if (facts.isEmpty) {
      return const SizedBox.shrink();
    }
    return BdCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            l10n?.dashboard_helpNarrowDown ?? 'Help us narrow this down',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            l10n?.dashboard_missingFactsHint ??
                'Answering these unlocks more accurate matches.',
            style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13),
          ),
          const SizedBox(height: 12),
          for (final fact in facts.take(5))
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6, right: 8),
                    child: Icon(
                      Icons.help_outline,
                      size: 12,
                      color: scheme.tertiary,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      (fact['label'] ?? '').toString(),
                      style: const TextStyle(fontSize: 13),
                    ),
                  ),
                  if ((fact['program_count'] as num?) != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: BdBadge(
                        label: '+${fact['program_count']}',
                        variant: BdBadgeVariant.outline,
                      ),
                    ),
                ],
              ),
            ),
          const SizedBox(height: 12),
          BdButton(
            label: l10n?.dashboard_resumeScreening ?? 'Resume screening',
            leading: const Icon(Icons.play_arrow),
            size: BdButtonSize.sm,
            onPressed: () => GoRouter.of(context).go('/screen/$sessionId/q'),
          ),
        ],
      ),
    );
  }
}
