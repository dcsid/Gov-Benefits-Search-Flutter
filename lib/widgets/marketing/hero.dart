import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../theme/extensions/bd_colors.dart';
import '../icons/bd_icons.dart';
import '../ui/bd_badge.dart';
import '../ui/bd_button.dart';

class BdHero extends StatelessWidget {
  const BdHero({
    super.key,
    this.eyebrow = 'Free help finding government benefits',
    this.title = 'Find out what help you may qualify for.',
    this.lede =
        'Browse the catalog of federal and state programs — or run a '
        'screening to see which ones match your situation. Either way, '
        "we'll point you to the official agency to apply.",
    this.exploreLabel = 'Explore programs',
    this.screenLabel = 'Take a screening',
    this.exploreHref = '/explorer',
    this.screenHref = '/screen',
  });

  final String eyebrow;
  final String title;
  final String lede;
  final String exploreLabel;
  final String screenLabel;
  final String exploreHref;
  final String screenHref;

  @override
  Widget build(BuildContext context) {
    // One Theme.of lookup, one MediaQuery.sizeOf — previously this widget
    // hit Theme.of twice (separate listeners) and MediaQuery.of (whole
    // MediaQueryData). sizeOf only depends on Size, so text-scale and
    // padding changes no longer rebuild the hero.
    final t = Theme.of(context);
    final scheme = t.colorScheme;
    final theme = t.textTheme;
    final isWide = MediaQuery.sizeOf(context).width >= 880;

    final text = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BdBadge(
          label: eyebrow.toUpperCase(),
          variant: BdBadgeVariant.outline,
          leading: const Icon(BdIcons.spark),
        ),
        const SizedBox(height: 18),
        Text(
          title,
          style: (theme.displayLarge ?? const TextStyle()).copyWith(
            fontSize: isWide ? 48 : 36,
            fontWeight: FontWeight.w600,
            height: 1.05,
            letterSpacing: -0.6,
          ),
        ),
        const SizedBox(height: 18),
        Text(
          lede,
          style: TextStyle(
            fontSize: 18,
            height: 1.5,
            color: scheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            BdButton(
              label: exploreLabel,
              variant: BdButtonVariant.accent,
              size: BdButtonSize.xl,
              trailing: const Icon(BdIcons.arrowRight),
              onPressed: () => GoRouter.of(context).go(exploreHref),
            ),
            BdButton(
              label: screenLabel,
              variant: BdButtonVariant.outline,
              size: BdButtonSize.xl,
              leading: const Icon(BdIcons.spark),
              onPressed: () => GoRouter.of(context).go(screenHref),
            ),
          ],
        ),
        const SizedBox(height: 18),
        const _TrustRow(),
      ],
    );

    final aside = const _HeroExampleCard();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: isWide ? 64 : 40),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1180),
        child: isWide
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(flex: 6, child: text),
                  const SizedBox(width: 48),
                  Expanded(flex: 5, child: aside),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [text, const SizedBox(height: 32), aside],
              ),
      ),
    );
  }
}

class _TrustRow extends StatelessWidget {
  const _TrustRow();
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final items = const [
      (BdIcons.shield, 'Free & private'),
      (BdIcons.user, 'No account needed'),
      (BdIcons.clock, 'About 4 minutes'),
      (BdIcons.shield, 'No tracking'),
    ];
    return Wrap(
      spacing: 16,
      runSpacing: 8,
      children: [
        for (final it in items)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(it.$1, size: 14, color: scheme.onSurfaceVariant),
              const SizedBox(width: 6),
              Text(
                it.$2,
                style: TextStyle(fontSize: 13, color: scheme.onSurfaceVariant),
              ),
            ],
          ),
      ],
    );
  }
}

class _HeroExampleCard extends StatelessWidget {
  const _HeroExampleCard();
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bd = BdColors.of(context);
    return Container(
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: bd.border),
        boxShadow: [
          BoxShadow(
            color: scheme.shadow.withValues(alpha: 0.06),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'For example',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.6,
              color: scheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '"A single parent, two kids, \$2,400 a month, in Ohio, uninsured."',
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              color: scheme.onSurface,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 14),
          Container(height: 1, color: bd.border),
          const SizedBox(height: 14),
          _ResultLine(
            color: bd.pipStrong,
            label: 'SNAP (food)',
            conf: 'Strong match',
          ),
          const SizedBox(height: 8),
          _ResultLine(
            color: bd.pipStrong,
            label: 'Medicaid (kids)',
            conf: 'Strong match',
          ),
          const SizedBox(height: 8),
          _ResultLine(
            color: bd.pipPartial,
            label: 'Section 8 housing',
            conf: 'Likely waitlist',
          ),
          const SizedBox(height: 8),
          _ResultLine(
            color: bd.pipCheck,
            label: 'EITC (taxes)',
            conf: 'Worth checking',
          ),
          const SizedBox(height: 14),
          Text(
            'Anonymized example. Your screening is private.',
            style: TextStyle(fontSize: 12, color: scheme.onSurfaceVariant),
          ),
        ],
      ),
    );
  }
}

class _ResultLine extends StatelessWidget {
  const _ResultLine({
    required this.color,
    required this.label,
    required this.conf,
  });
  final Color color;
  final String label;
  final String conf;
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 10),
        Expanded(child: Text(label, style: const TextStyle(fontSize: 14))),
        Text(
          conf,
          style: TextStyle(fontSize: 12, color: scheme.onSurfaceVariant),
        ),
      ],
    );
  }
}
