import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';
import '../icons/bd_icons.dart';

class BdTrustSignals extends StatelessWidget {
  const BdTrustSignals({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final scheme = t.colorScheme;
    final theme = t.textTheme;
    final bd = BdColors.of(context);
    final isWide = MediaQuery.sizeOf(context).width >= 880;

    const signals = <_Signal>[
      _Signal(
        icon: BdIcons.badgeCheck,
        title: 'Sourced from official rules',
        body:
            'We cite the program manuals, statutes, and notices that drive each match.',
      ),
      _Signal(
        icon: BdIcons.lock,
        title: 'Private by default',
        body:
            "Your answers stay in your browser. We don't ask for your name or SSN.",
      ),
      _Signal(
        icon: BdIcons.spark,
        title: 'Explainable matches',
        body:
            'Every result includes the rule that matched and what could change the answer.',
      ),
    ];

    return Container(
      decoration: BoxDecoration(
        color: bd.muted,
        border: Border.symmetric(horizontal: BorderSide(color: bd.border)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 56),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1180),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Why people trust us',
              style: (theme.headlineMedium ?? const TextStyle()).copyWith(
                fontWeight: FontWeight.w600,
                letterSpacing: -0.4,
              ),
            ),
            const SizedBox(height: 32),
            Flex(
              direction: isWide ? Axis.horizontal : Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var i = 0; i < signals.length; i++) ...[
                  if (i > 0)
                    isWide
                        ? const SizedBox(width: 32)
                        : const SizedBox(height: 24),
                  Expanded(
                    flex: isWide ? 1 : 0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          margin: const EdgeInsets.only(top: 4),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: scheme.surface,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: scheme.shadow.withValues(alpha: 0.05),
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Icon(
                            signals[i].icon,
                            size: 20,
                            color: scheme.primary,
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                signals[i].title,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                signals[i].body,
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
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Signal {
  const _Signal({required this.icon, required this.title, required this.body});
  final IconData icon;
  final String title;
  final String body;
}
