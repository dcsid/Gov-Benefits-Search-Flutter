import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/app.dart';
import '../icons/bd_icons.dart';
import '../ui/bd_button.dart';
import '../ui/bd_dropdown_menu.dart';

class BdThemeToggle extends ConsumerWidget {
  const BdThemeToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(themeModeProvider);
    final notifier = ref.read(themeModeProvider.notifier);
    final iconData = switch (mode) {
      ThemeMode.dark => BdIcons.moon,
      ThemeMode.light => BdIcons.sun,
      ThemeMode.system => BdIcons.monitor,
    };

    return BdDropdownMenu<ThemeMode>(
      label: 'Theme',
      targetAnchor: Alignment.bottomRight,
      followerAnchor: Alignment.topRight,
      onSelected: (m) => notifier.set(m),
      items: const [
        BdDropdownItem(
          value: ThemeMode.light,
          label: 'Light',
          leading: Icon(BdIcons.sun),
        ),
        BdDropdownItem(
          value: ThemeMode.dark,
          label: 'Dark',
          leading: Icon(BdIcons.moon),
        ),
        BdDropdownItem(
          value: ThemeMode.system,
          label: 'System',
          leading: Icon(BdIcons.monitor),
        ),
      ],
      trigger: BdButton(
        onPressed: () {},
        variant: BdButtonVariant.ghost,
        size: BdButtonSize.icon,
        semanticLabel: 'Toggle theme',
        child: Icon(iconData, size: 18),
      ),
    );
  }
}
