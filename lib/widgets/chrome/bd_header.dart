import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../theme/extensions/bd_colors.dart';
import '../icons/bd_icons.dart';
import '../ui/bd_button.dart';
import '../ui/bd_sheet.dart';
import 'bd_language_switcher.dart';
import 'bd_logo.dart';
import 'bd_theme_toggle.dart';

enum BdHeaderVariant { landing, question, results, chat }

class BdHeaderNavItem {
  const BdHeaderNavItem({required this.href, required this.label});
  final String href;
  final String label;
}

const _defaultNav = <BdHeaderNavItem>[
  BdHeaderNavItem(href: '/screen', label: 'Screen'),
  BdHeaderNavItem(href: '/chat', label: 'Chat'),
  BdHeaderNavItem(href: '/explorer', label: 'Programs'),
];

class BdHeader extends StatelessWidget {
  const BdHeader({
    super.key,
    this.compact = false,
    this.variant = BdHeaderVariant.landing,
    this.trailing,
    this.navItems = _defaultNav,
  });

  final bool compact;
  final BdHeaderVariant variant;
  final Widget? trailing;
  final List<BdHeaderNavItem> navItems;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bd = BdColors.of(context);
    final isCompact = compact || variant != BdHeaderVariant.landing;
    // sizeOf is a narrower dependency than MediaQuery.of — we avoid
    // rebuilding the always-on header when only TextScaler / padding /
    // viewInsets change (e.g. on-screen keyboard).
    final isWide = MediaQuery.sizeOf(context).width >= 768;

    return Material(
      color: scheme.surface.withValues(alpha: 0.9),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: bd.border)),
        ),
        child: SafeArea(
          bottom: false,
          child: SizedBox(
            height: 64,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  BdLogo(compact: isCompact),
                  if (!isCompact && isWide) ...[
                    const SizedBox(width: 24),
                    for (final item in navItems) _NavLink(item: item),
                  ],
                  const Spacer(),
                  const BdLanguageSwitcher(),
                  const SizedBox(width: 4),
                  const BdThemeToggle(),
                  if (trailing != null) ...[
                    const SizedBox(width: 8),
                    trailing!,
                  ],
                  if (!isWide && !isCompact) ...[
                    const SizedBox(width: 4),
                    BdButton(
                      variant: BdButtonVariant.ghost,
                      size: BdButtonSize.icon,
                      semanticLabel: 'Open menu',
                      onPressed: () => _openMobileMenu(context, navItems),
                      child: const Icon(BdIcons.menu, size: 18),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _openMobileMenu(BuildContext context, List<BdHeaderNavItem> items) {
    // RTL: mobile drawer should slide in from the leading edge.
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    showBdSheet<void>(
      context: context,
      side: isRtl ? BdSheetSide.left : BdSheetSide.right,
      builder: (ctx) => BdSheet(
        title: 'Benefits Digger',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (final i in items)
              InkWell(
                onTap: () {
                  Navigator.of(ctx).maybePop();
                  GoRouter.of(context).go(i.href);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 14,
                  ),
                  child: Text(
                    i.label,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _NavLink extends StatelessWidget {
  const _NavLink({required this.item});
  final BdHeaderNavItem item;
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final loc = GoRouterState.of(context).uri.path;
    final active = loc == item.href || loc.startsWith('${item.href}/');
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () => GoRouter.of(context).go(item.href),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(
              item.label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: active ? scheme.onSurface : scheme.onSurfaceVariant,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
