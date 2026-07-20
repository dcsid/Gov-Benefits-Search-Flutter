import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/api/models/program.dart';
import '../../core/api/providers.dart';
import '../../core/error/error_handler.dart';
import '../../l10n/app_localizations.dart';
import '../../widgets/chrome/bd_footer.dart';
import '../../widgets/chrome/bd_header.dart';
import '../../widgets/ui/bd_accordion.dart';
import '../../widgets/ui/bd_badge.dart';
import '../../widgets/ui/bd_button.dart';
import '../../widgets/ui/bd_card.dart';
import '../../widgets/ui/bd_skeleton.dart';

class ProgramDetailPage extends ConsumerWidget {
  const ProgramDetailPage({super.key, required this.slug});

  final String slug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(programDetailProvider(slug));

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const RepaintBoundary(child: BdHeader()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 960),
                  child: async.when(
                    data: (program) => _Loaded(program: program),
                    loading: () => const _LoadingSkeleton(),
                    error: (err, st) => _ProgramLoadError(
                      error: err,
                      stackTrace: st,
                      onRetry: () =>
                          ref.invalidate(programDetailProvider(slug)),
                    ),
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

class _Loaded extends StatelessWidget {
  const _Loaded({required this.program});

  final ProgramDetail program;

  @override
  Widget build(BuildContext context) {
    final docs = program.documents;
    final howTo = program.howToGetBenefit;
    final sources = [...program.sources, ...program.dataGatheredFrom];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BdButton(
          label: 'Back to explorer',
          leading: const Icon(Icons.arrow_back),
          variant: BdButtonVariant.ghost,
          size: BdButtonSize.sm,
          onPressed: () => context.go('/explorer'),
        ),
        const SizedBox(height: 12),
        _Header(program: program),
        const SizedBox(height: 16),
        _Eligibility(program: program),
        if (howTo.isNotEmpty) ...[
          const SizedBox(height: 16),
          _HowToApply(steps: howTo, applyUrl: program.applyUrl),
        ],
        if (docs.isNotEmpty) ...[
          const SizedBox(height: 16),
          _Documents(documents: docs),
        ],
        if (sources.isNotEmpty) ...[
          const SizedBox(height: 16),
          _Sources(sources: sources),
        ],
        const SizedBox(height: 24),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.program});

  final ProgramDetail program;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final jurisdictionLabel =
        program.jurisdiction?.level.toUpperCase() ?? 'PROGRAM';
    final agencyOrCode = program.agency ?? program.jurisdiction?.code ?? '';
    return Container(
      padding: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: scheme.outlineVariant)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              BdBadge(
                label: jurisdictionLabel,
                variant: BdBadgeVariant.outline,
              ),
              const SizedBox(width: 8),
              Text(agencyOrCode, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          const SizedBox(height: 8),
          Text(program.name, style: Theme.of(context).textTheme.headlineLarge),
          if (program.summary != null) ...[
            const SizedBox(height: 8),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 720),
              child: Text(
                program.summary!,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
          if (program.category != null) ...[
            const SizedBox(height: 12),
            BdBadge(
              label: program.category!,
              variant: BdBadgeVariant.secondary,
            ),
          ],
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              BdButton(
                label: 'Ask the assistant about this program',
                leading: const Icon(Icons.chat_bubble_outline),
                onPressed: () => context.push(
                  '/chat?context_mode=program&program_slug=${Uri.encodeComponent(program.slug)}',
                ),
              ),
              if (program.applyUrl != null)
                BdButton(
                  label: 'Official page',
                  leading: const Icon(Icons.open_in_new),
                  variant: BdButtonVariant.outline,
                  onPressed: () => _open(program.applyUrl!),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Eligibility extends StatelessWidget {
  const _Eligibility({required this.program});

  final ProgramDetail program;

  @override
  Widget build(BuildContext context) {
    if (program.rules.isEmpty && program.summary == null) {
      return BdCard(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Program details',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              "We don't have a structured eligibility summary for this program "
              'yet. Use the assistant or the official source for details.',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      );
    }
    final items = <BdAccordionItem>[];
    if (program.summary != null) {
      items.add(
        BdAccordionItem(
          value: 'overview',
          title: const Text('Overview'),
          content: Text(program.summary!),
        ),
      );
    }
    if (program.rules.isNotEmpty) {
      items.add(
        BdAccordionItem(
          value: 'rules',
          title: const Text('Eligibility rules'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final r in program.rules)
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text('• ${r.label}'),
                ),
            ],
          ),
        ),
      );
    }
    return BdAccordion(items: items);
  }
}

class _HowToApply extends StatelessWidget {
  const _HowToApply({required this.steps, this.applyUrl});

  final List<Map<String, dynamic>> steps;
  final String? applyUrl;

  @override
  Widget build(BuildContext context) {
    return BdCard(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('How to apply', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 12),
          ...steps.indexed.map((entry) {
            final (idx, step) = entry;
            final label = (step['label'] ?? step['title'] ?? '').toString();
            final description = step['description']?.toString();
            final url = step['url']?.toString();
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.primaryContainer,
                    child: Text(
                      '${idx + 1}',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (url != null && url.isNotEmpty)
                          InkWell(
                            onTap: () => _open(url),
                            child: Text(
                              label,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).colorScheme.primary,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        else
                          Text(
                            label,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        if (description != null && description.isNotEmpty)
                          Text(
                            description,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
          const SizedBox(height: 8),
          if (applyUrl != null)
            BdButton(
              label: 'Open official application',
              leading: const Icon(Icons.open_in_new),
              onPressed: () => _open(applyUrl!),
            ),
        ],
      ),
    );
  }
}

class _Documents extends StatelessWidget {
  const _Documents({required this.documents});

  final List<Map<String, dynamic>> documents;

  @override
  Widget build(BuildContext context) {
    return BdCard(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Documents', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          ...documents.map((d) {
            final label = (d['label'] ?? d['title'] ?? '').toString();
            final description = d['description']?.toString();
            final required = d['required'] == true;
            return Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.description_outlined,
                    size: 16,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              label,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            if (required) ...[
                              const SizedBox(width: 6),
                              const BdBadge(
                                label: 'required',
                                variant: BdBadgeVariant.destructive,
                              ),
                            ],
                          ],
                        ),
                        if (description != null && description.isNotEmpty)
                          Text(
                            description,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _Sources extends StatelessWidget {
  const _Sources({required this.sources});

  final List<SourceLink> sources;

  @override
  Widget build(BuildContext context) {
    return BdCard(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sources', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          ...sources.indexed.map(
            (entry) => Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${entry.$1 + 1}.',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () => _open(entry.$2.url),
                          child: Text(
                            entry.$2.title,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                        Text(
                          [
                            if (entry.$2.agency != null) entry.$2.agency!,
                            if (entry.$2.verifiedAt != null)
                              'verified ${entry.$2.verifiedAt}'
                            else
                              'unverified',
                          ].join(' · '),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        BdSkeleton(height: 32, width: 320),
        SizedBox(height: 12),
        BdSkeleton(height: 14, width: 200),
        SizedBox(height: 24),
        BdSkeleton(height: 80),
        SizedBox(height: 12),
        BdSkeleton(height: 80),
      ],
    );
  }
}

Future<void> _open(String url) async {
  final uri = Uri.tryParse(url);
  if (uri == null) return;
  await launchUrl(uri, mode: LaunchMode.externalApplication);
}

class _ProgramLoadError extends StatefulWidget {
  const _ProgramLoadError({
    required this.error,
    required this.stackTrace,
    required this.onRetry,
  });
  final Object error;
  final StackTrace stackTrace;
  final VoidCallback onRetry;
  @override
  State<_ProgramLoadError> createState() => _ProgramLoadErrorState();
}

class _ProgramLoadErrorState extends State<_ProgramLoadError> {
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
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Icon(
            Icons.error_outline,
            size: 48,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 16),
          Text(
            l10n?.errors_genericTitle ?? 'Could not load program',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
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
