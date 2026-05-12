import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';
import '../../widgets/chrome/bd_footer.dart';
import '../../widgets/chrome/bd_header.dart';
import '../../widgets/chrome/bd_skip_to_content.dart';
import '../../widgets/icons/bd_icons.dart';
import '../../widgets/marketing/hero.dart';
import '../../widgets/marketing/how_it_works.dart';
import '../../widgets/marketing/landing_sections.dart';
import '../../widgets/marketing/trust_signals.dart';
import '../../widgets/ui/bd_accordion.dart';
import '../../widgets/ui/bd_alert.dart';
import '../../widgets/ui/bd_avatar.dart';
import '../../widgets/ui/bd_badge.dart';
import '../../widgets/ui/bd_button.dart';
import '../../widgets/ui/bd_card.dart';
import '../../widgets/ui/bd_command.dart';
import '../../widgets/ui/bd_dialog.dart';
import '../../widgets/ui/bd_dropdown_menu.dart';
import '../../widgets/ui/bd_input.dart';
import '../../widgets/ui/bd_label.dart';
import '../../widgets/ui/bd_popover.dart';
import '../../widgets/ui/bd_progress.dart';
import '../../widgets/ui/bd_scroll_area.dart';
import '../../widgets/ui/bd_select.dart';
import '../../widgets/ui/bd_separator.dart';
import '../../widgets/ui/bd_sheet.dart';
import '../../widgets/ui/bd_skeleton.dart';
import '../../widgets/ui/bd_slider.dart';
import '../../widgets/ui/bd_switch.dart';
import '../../widgets/ui/bd_table.dart';
import '../../widgets/ui/bd_tabs.dart';
import '../../widgets/ui/bd_textarea.dart';
import '../../widgets/ui/bd_toast.dart';
import '../../widgets/ui/bd_tooltip.dart';

class KitchenSinkPage extends StatefulWidget {
  const KitchenSinkPage({super.key});

  @override
  State<KitchenSinkPage> createState() => _KitchenSinkPageState();
}

class _KitchenSinkPageState extends State<KitchenSinkPage> {
  final FocusNode _mainFocus = FocusNode(debugLabel: 'kitchen-sink-main');
  bool _switch = true;
  double _slider = 35;
  String? _select = 'b';

  @override
  void dispose() {
    _mainFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bd = BdColors.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const BdHeader(),
              Expanded(
                child: Focus(
                  focusNode: _mainFocus,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BdHero(),
                        const BdHowItWorks(),
                        const BdTrustSignals(),
                        const BdCategories(),
                        const BdHonesty(),
                        Container(
                          padding: const EdgeInsets.all(24),
                          color: bd.muted,
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 1180),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _section('Buttons', _buttons()),
                                _section('Card', _card()),
                                _section('Inputs', _inputs()),
                                _section('Select / Switch / Slider / Progress', _controls()),
                                _section('Badges', _badges()),
                                _section('Alerts', _alerts()),
                                _section('Separator + Skeleton', _seps()),
                                _section('Avatar', _avatar()),
                                _section('Tabs', _tabs()),
                                _section('Accordion', _accordion()),
                                _section('Tooltip', _tooltip()),
                                _section('Popover & Dropdown', _popover()),
                                _section('Dialog & Sheet & Toast', _overlays()),
                                _section('Command Palette', _command()),
                                _section('Scroll Area', _scrollArea()),
                                _section('Table', _table()),
                              ],
                            ),
                          ),
                        ),
                        const BdFooter(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            child: BdSkipToContent(targetFocusNode: _mainFocus),
          ),
        ],
      ),
    );
  }

  Widget _section(String label, Widget body) => Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            body,
          ],
        ),
      );

  Widget _buttons() => Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final v in BdButtonVariant.values)
            BdButton(label: v.name, variant: v, onPressed: () {}),
          BdButton(label: 'sm', size: BdButtonSize.sm, onPressed: () {}),
          BdButton(label: 'md', size: BdButtonSize.md, onPressed: () {}),
          BdButton(label: 'lg', size: BdButtonSize.lg, onPressed: () {}),
          BdButton(label: 'xl', size: BdButtonSize.xl, onPressed: () {}),
          BdButton(
            size: BdButtonSize.icon,
            semanticLabel: 'icon',
            onPressed: () {},
            child: const Icon(BdIcons.search, size: 16),
          ),
          const BdButton(label: 'disabled'),
        ],
      );

  Widget _card() => SizedBox(
        width: 360,
        child: BdCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const BdCardHeader(
                title: Text('Section 8 housing'),
                description: Text('Likely waitlist in your county.'),
              ),
              const BdCardContent(
                child: Text('Eligibility depends on income, household, and area.'),
              ),
              BdCardFooter(
                children: [
                  BdButton(label: 'Apply', onPressed: () {}),
                  BdButton(
                    label: 'Learn more',
                    variant: BdButtonVariant.outline,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget _inputs() => SizedBox(
        width: 360,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const BdLabel(text: 'Email'),
            const SizedBox(height: 6),
            const BdInput(placeholder: 'you@example.com'),
            const SizedBox(height: 12),
            const BdLabel(text: 'Bio'),
            const SizedBox(height: 6),
            const BdTextarea(placeholder: 'Tell us a little.'),
          ],
        ),
      );

  Widget _controls() => SizedBox(
        width: 420,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BdSelect<String>(
              value: _select,
              placeholder: 'Pick one',
              items: const [
                BdSelectItem(value: 'a', label: 'Alpha'),
                BdSelectItem(value: 'b', label: 'Beta'),
                BdSelectItem(value: 'c', label: 'Gamma'),
              ],
              onChanged: (v) => setState(() => _select = v),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                BdSwitch(
                  value: _switch,
                  onChanged: (v) => setState(() => _switch = v),
                  semanticLabel: 'demo switch',
                ),
                const SizedBox(width: 12),
                Text(_switch ? 'On' : 'Off'),
              ],
            ),
            const SizedBox(height: 12),
            BdSlider(
              value: _slider,
              min: 0,
              max: 100,
              divisions: 20,
              onChanged: (v) => setState(() => _slider = v),
            ),
            const SizedBox(height: 12),
            BdProgress(value: _slider / 100),
          ],
        ),
      );

  Widget _badges() => Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final v in BdBadgeVariant.values) BdBadge(label: v.name, variant: v),
          const BdBadge(
            label: 'with icon',
            variant: BdBadgeVariant.outline,
            leading: Icon(BdIcons.spark),
          ),
        ],
      );

  Widget _alerts() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final v in BdAlertVariant.values) ...[
            BdAlert(
              icon: Icon(_alertIcon(v)),
              title: 'Alert (${v.name})',
              description: const Text('A short description of what happened.'),
              variant: v,
            ),
            const SizedBox(height: 8),
          ],
        ],
      );

  IconData _alertIcon(BdAlertVariant v) {
    switch (v) {
      case BdAlertVariant.destructive:
        return BdIcons.alert;
      case BdAlertVariant.success:
        return BdIcons.check;
      case BdAlertVariant.warning:
        return BdIcons.alert;
      case BdAlertVariant.info:
      case BdAlertVariant.defaultV:
        return BdIcons.info;
    }
  }

  Widget _seps() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BdSkeleton(width: 240, height: 14),
          const SizedBox(height: 8),
          BdSkeleton(width: 160, height: 14),
          const SizedBox(height: 12),
          const BdSeparator(),
          const SizedBox(height: 12),
          Row(
            children: [
              const Text('A'),
              const SizedBox(width: 8),
              const SizedBox(
                  height: 16,
                  child: BdSeparator(orientation: BdSeparatorOrientation.vertical)),
              const SizedBox(width: 8),
              const Text('B'),
            ],
          ),
        ],
      );

  Widget _avatar() => Row(
        children: const [
          BdAvatar(fallback: 'AB'),
          SizedBox(width: 12),
          BdAvatar(size: 56, fallback: 'CD'),
        ],
      );

  Widget _tabs() => SizedBox(
        width: 480,
        child: BdTabs(
          tabs: const [
            BdTab(value: 'a', label: 'Account', content: Text('Account settings.')),
            BdTab(value: 'b', label: 'Password', content: Text('Password settings.')),
            BdTab(value: 'c', label: 'Other', content: Text('Other settings.')),
          ],
        ),
      );

  Widget _accordion() => SizedBox(
        width: 480,
        child: BdAccordion(
          items: const [
            BdAccordionItem(
              value: '1',
              title: Text('Is it accessible?'),
              content: Text('Yes. It adheres to the WAI-ARIA design pattern.'),
            ),
            BdAccordionItem(
              value: '2',
              title: Text('Is it animated?'),
              content: Text('Yes — opens and closes smoothly.'),
            ),
          ],
        ),
      );

  Widget _tooltip() => BdTooltip(
        message: 'A short hint',
        child: BdButton(
          label: 'Hover me',
          variant: BdButtonVariant.outline,
          onPressed: () {},
        ),
      );

  Widget _popover() => Row(
        children: [
          BdPopover(
            content: const Text('Popover content'),
            trigger: BdButton(label: 'Popover', variant: BdButtonVariant.outline, onPressed: () {}),
          ),
          const SizedBox(width: 12),
          BdDropdownMenu<String>(
            label: 'Actions',
            onSelected: (v) => showBdToast(context, 'Selected $v'),
            items: const [
              BdDropdownItem(value: 'edit', label: 'Edit', leading: Icon(BdIcons.copy)),
              BdDropdownItem(value: 'share', label: 'Share', leading: Icon(BdIcons.send)),
              BdDropdownItem(value: 'delete', label: 'Delete', leading: Icon(BdIcons.close)),
            ],
            trigger:
                BdButton(label: 'Open menu', variant: BdButtonVariant.outline, onPressed: () {}),
          ),
        ],
      );

  Widget _overlays() => Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          BdButton(
            label: 'Dialog',
            onPressed: () => showBdDialog<void>(
              context: context,
              builder: (_) => const BdDialog(
                title: 'Are you sure?',
                description: 'This will refresh the example.',
                child: Text('Optional body content goes here.'),
              ),
            ),
          ),
          BdButton(
            label: 'Sheet',
            variant: BdButtonVariant.outline,
            onPressed: () => showBdSheet<void>(
              context: context,
              builder: (_) => const BdSheet(
                title: 'Filters',
                description: 'Refine your results.',
                child: Text('Body content.'),
              ),
            ),
          ),
          BdButton(
            label: 'Toast',
            variant: BdButtonVariant.secondary,
            onPressed: () => showBdToast(
              context,
              'A short message',
              title: 'Saved',
              variant: BdToastVariant.success,
            ),
          ),
        ],
      );

  Widget _command() => SizedBox(
        width: 480,
        child: BdCommand(
          items: [
            BdCommandItem(
              id: 'snap',
              label: 'SNAP',
              subtitle: 'Food assistance',
              onSelected: () {},
            ),
            BdCommandItem(
              id: 'med',
              label: 'Medicaid',
              subtitle: 'Healthcare',
              onSelected: () {},
            ),
            BdCommandItem(
              id: 'sec8',
              label: 'Section 8',
              subtitle: 'Housing',
              onSelected: () {},
            ),
          ],
        ),
      );

  Widget _scrollArea() => SizedBox(
        height: 120,
        width: 320,
        child: BdScrollArea(
          child: Column(
            children: [
              for (var i = 0; i < 30; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text('Row #$i'),
                ),
            ],
          ),
        ),
      );

  Widget _table() => BdTable(
        columns: const [
          BdTableColumn(label: 'Program'),
          BdTableColumn(label: 'Status'),
          BdTableColumn(label: 'Confidence', numeric: true),
        ],
        rows: const [
          [Text('SNAP'), BdBadge(label: 'Match', variant: BdBadgeVariant.success), Text('92%')],
          [
            Text('Medicaid'),
            BdBadge(label: 'Match', variant: BdBadgeVariant.success),
            Text('88%'),
          ],
          [
            Text('Section 8'),
            BdBadge(label: 'Waitlist', variant: BdBadgeVariant.warning),
            Text('—'),
          ],
        ],
      );
}
