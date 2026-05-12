import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/extensions/bd_colors.dart';
import 'bd_logo.dart';

class BdFooterLink {
  const BdFooterLink({required this.label, required this.href, this.external = false});
  final String label;
  final String href;
  final bool external;
}

class BdFooterColumn {
  const BdFooterColumn({required this.label, required this.links});
  final String label;
  final List<BdFooterLink> links;
}

class BdFooter extends StatelessWidget {
  const BdFooter({
    super.key,
    this.disclaimer =
        'An independent tool. Not affiliated with any government agency. We never collect or share your personal information.',
    this.lastRefresh = 'May 2026',
    this.version = 'v0.1',
    this.columns = const [
      BdFooterColumn(
        label: 'Resources',
        links: [
          BdFooterLink(
            label: 'Benefits.gov',
            href: 'https://www.benefits.gov',
            external: true,
          ),
          BdFooterLink(
            label: 'USA.gov',
            href: 'https://www.usa.gov',
            external: true,
          ),
          BdFooterLink(
            label: 'Code for America',
            href: 'https://codeforamerica.org',
            external: true,
          ),
        ],
      ),
      BdFooterColumn(
        label: 'About',
        links: [
          BdFooterLink(label: 'About', href: '/about'),
          BdFooterLink(label: 'Privacy', href: '/privacy'),
          BdFooterLink(label: 'Terms', href: '/terms'),
        ],
      ),
    ],
    this.onLinkTap,
  });

  final String disclaimer;
  final String lastRefresh;
  final String version;
  final List<BdFooterColumn> columns;
  final ValueChanged<BdFooterLink>? onLinkTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bd = BdColors.of(context);
    // sizeOf instead of MediaQuery.of: footer only cares about width for
    // the stack-vs-row breakpoint; this avoids rebuilding when text-scale
    // or system padding changes.
    final stack = MediaQuery.sizeOf(context).width < 720;

    return Container(
      decoration: BoxDecoration(
        color: bd.muted,
        border: Border(top: BorderSide(color: bd.border)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flex(
            direction: stack ? Axis.vertical : Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: stack ? 0 : 2,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 360),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BdLogo(),
                      const SizedBox(height: 12),
                      Text(
                        disclaimer,
                        style: TextStyle(
                          fontSize: 13,
                          height: 1.45,
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (stack) const SizedBox(height: 24),
              Expanded(
                flex: stack ? 0 : 3,
                child: Wrap(
                  spacing: 32,
                  runSpacing: 24,
                  children: [
                    for (final col in columns) _Column(column: col, onLinkTap: onLinkTap),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Container(height: 1, color: bd.border),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$version · Last data refresh: $lastRefresh',
                style: TextStyle(fontSize: 12, color: scheme.onSurfaceVariant),
              ),
              Text(
                '© ${DateTime.now().year} Benefits Digger',
                style: TextStyle(fontSize: 12, color: scheme.onSurfaceVariant),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Column extends StatelessWidget {
  const _Column({required this.column, this.onLinkTap});
  final BdFooterColumn column;
  final ValueChanged<BdFooterLink>? onLinkTap;

  Future<void> _handleTap(BuildContext context, BdFooterLink link) async {
    if (onLinkTap != null) {
      onLinkTap!(link);
      return;
    }
    if (link.external) {
      final uri = Uri.tryParse(link.href);
      if (uri != null) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
      return;
    }
    if (link.href.startsWith('/')) {
      if (!context.mounted) return;
      // ignore: use_build_context_synchronously
      GoRouter.of(context).go(link.href);
      return;
    }
    if (!context.mounted) return;
    ScaffoldMessenger.maybeOf(context)?.showSnackBar(
      SnackBar(content: Text('${link.label}: coming soon')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          column.label.toUpperCase(),
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.6,
            color: scheme.onSurface,
          ),
        ),
        const SizedBox(height: 10),
        for (final link in column.links)
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: InkWell(
              onTap: () => _handleTap(context, link),
              child: Text(
                link.label,
                style: TextStyle(
                  fontSize: 13,
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
