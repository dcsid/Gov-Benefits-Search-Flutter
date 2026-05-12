import 'package:flutter/material.dart';

import '../icons/bd_icons.dart';
import '../ui/bd_card.dart';

/// Bd-style landing section: domain categories grid.
class BdCategories extends StatelessWidget {
  const BdCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final scheme = t.colorScheme;
    final theme = t.textTheme;
    final width = MediaQuery.sizeOf(context).width;
    final cols = width >= 880 ? 3 : (width >= 560 ? 2 : 1);

    const cats = <_Cat>[
      _Cat(icon: BdIcons.cart, key: 'Food', sub: 'SNAP, WIC, school meals'),
      _Cat(icon: BdIcons.home, key: 'Housing', sub: 'Section 8, LIHEAP, rent help'),
      _Cat(icon: BdIcons.heart, key: 'Healthcare', sub: 'Medicaid, Medicare, ACA'),
      _Cat(icon: BdIcons.brief, key: 'Income', sub: 'TANF, EITC, unemployment'),
      _Cat(icon: BdIcons.pill, key: 'Childcare', sub: 'Head Start, CCDF, CHIP'),
      _Cat(icon: BdIcons.ear, key: 'Disability', sub: 'SSI, SSDI, vocational rehab'),
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 56),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1180),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'We help with',
              style: (theme.headlineMedium ?? const TextStyle()).copyWith(
                fontWeight: FontWeight.w600,
                letterSpacing: -0.4,
              ),
            ),
            const SizedBox(height: 24),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: cols,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 3.2,
              children: [
                for (final c in cats)
                  BdCard(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: scheme.primary.withValues(alpha: 0.08),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Icon(c.icon, size: 20, color: scheme.primary),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                c.key,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                c.sub,
                                style: TextStyle(
                                  fontSize: 13,
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
            ),
          ],
        ),
      ),
    );
  }
}

class _Cat {
  const _Cat({required this.icon, required this.key, required this.sub});
  final IconData icon;
  final String key;
  final String sub;
}

class BdHonesty extends StatelessWidget {
  const BdHonesty({super.key});
  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final scheme = t.colorScheme;
    final theme = t.textTheme;
    const items = <(String, String)>[
      (
        'This is not an application.',
        'We help you find programs. You apply on the official site.'
      ),
      (
        "We don't store your answers.",
        'Your data lives in your browser unless you save it.'
      ),
      (
        'We can be wrong.',
        'Final eligibility is decided by the agency that runs the program.'
      ),
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 56),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 880),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'A few honest things',
              style: (theme.titleLarge ?? const TextStyle()).copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            for (final it in items)
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 7, right: 12),
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: scheme.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.5,
                            color: scheme.onSurface,
                          ),
                          children: [
                            TextSpan(
                              text: '${it.$1} ',
                              style: const TextStyle(fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: it.$2,
                              style: TextStyle(color: scheme.onSurfaceVariant),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
