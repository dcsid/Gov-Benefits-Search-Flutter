import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/app.dart';
import '../icons/bd_icons.dart';
import '../ui/bd_button.dart';
import '../ui/bd_dropdown_menu.dart';

class BdLanguageSwitcher extends ConsumerWidget {
  const BdLanguageSwitcher({super.key});

  // Native-script labels. Order chosen for predictability: English first, then
  // Spanish, then the new locales in the brief's listed order.
  static const Map<String, String> _labels = <String, String>{
    'en': 'English',
    'es': 'Español',
    'zh': '中文',
    'vi': 'Tiếng Việt',
    'ko': '한국어',
    'ru': 'Русский',
    'ar': 'العربية',
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeProvider);
    final notifier = ref.read(localeProvider.notifier);
    final code = locale?.languageCode ?? 'en';

    // RTL: drop the menu toward the leading (start) edge so it doesn't get
    // clipped against the screen when Arabic flips the header.
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    final target = isRtl ? Alignment.bottomLeft : Alignment.bottomRight;
    final follower = isRtl ? Alignment.topLeft : Alignment.topRight;

    return BdDropdownMenu<String>(
      label: 'Language',
      targetAnchor: target,
      followerAnchor: follower,
      onSelected: (v) => notifier.set(Locale(v)),
      items: [
        for (final entry in _labels.entries)
          BdDropdownItem(
            value: entry.key,
            label: entry.value,
            checked: entry.key == code,
          ),
      ],
      trigger: BdButton(
        onPressed: () {},
        variant: BdButtonVariant.ghost,
        size: BdButtonSize.sm,
        semanticLabel: 'Change language',
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(BdIcons.globe, size: 16),
            const SizedBox(width: 6),
            Text(
              code.toUpperCase(),
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
