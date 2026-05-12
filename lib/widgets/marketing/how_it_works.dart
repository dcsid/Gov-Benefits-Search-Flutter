import 'package:flutter/material.dart';

import '../icons/bd_icons.dart';
import '../ui/bd_card.dart';

class BdHowItWorks extends StatelessWidget {
  const BdHowItWorks({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final scheme = t.colorScheme;
    final theme = t.textTheme;
    final width = MediaQuery.sizeOf(context).width;
    final cols = width >= 900 ? 3 : (width >= 560 ? 2 : 1);
    const steps = <_Step>[
      _Step(
        index: '01',
        icon: BdIcons.clipboardList,
        title: 'Answer a few questions',
        body: "About your household, income, and situation. Skip anything you don't know.",
      ),
      _Step(
        index: '02',
        icon: BdIcons.scrollText,
        title: 'See what you may qualify for',
        body: 'We match your answers against rules from federal and state programs.',
      ),
      _Step(
        index: '03',
        icon: BdIcons.target,
        title: 'Get help applying',
        body: 'We link you to the official application — we never apply for you.',
      ),
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1180),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How it works',
              style: (theme.headlineMedium ?? const TextStyle()).copyWith(
                fontWeight: FontWeight.w600,
                letterSpacing: -0.4,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Three honest steps. No tricks, no upsells.',
              style: TextStyle(fontSize: 16, color: scheme.onSurfaceVariant),
            ),
            const SizedBox(height: 32),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: cols,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.4,
              children: [
                for (final step in steps)
                  BdCard(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: scheme.primary.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(step.icon, size: 20, color: scheme.primary),
                            ),
                            Text(
                              step.index,
                              style: TextStyle(
                                fontFamily: 'monospace',
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.6,
                                color: scheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          step.title,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            height: 1.25,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          step.body,
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.5,
                            color: scheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Step {
  const _Step({
    required this.index,
    required this.icon,
    required this.title,
    required this.body,
  });
  final String index;
  final IconData icon;
  final String title;
  final String body;
}
