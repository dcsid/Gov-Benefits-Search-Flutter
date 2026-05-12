import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../l10n/app_localizations.dart';
import '../chat/state/chat_controller.dart' show UiMessage;
import '../chat/widgets/input_bar.dart';
import '../chat/widgets/message_bubble.dart';
import 'help_bot_controller.dart';

/// Routes that should NOT show the floating help bot — typically because the
/// route is itself a chat surface (the long-form /chat) or a focused flow
/// where the bot would compete with the page (auth screens, if added).
const _hiddenRoutes = <String>{'/chat', '/login'};

/// True if the help bot should appear over [routePath].
bool helpBotVisibleOn(String routePath) {
  for (final hidden in _hiddenRoutes) {
    if (routePath == hidden || routePath.startsWith('$hidden/')) return false;
  }
  return true;
}

/// Bottom-right floating help assistant. Shows a circular FAB when closed
/// and an anchored panel (~360×540) when open; on viewports narrower than
/// 480 px the open state goes full-screen.
///
/// Routes can opt out via [_hiddenRoutes] (the long-form /chat and any
/// future /login). Pass the current route path via [currentRoute] so the
/// bot can decide whether to render itself.
///
/// Wrapped in a self-contained [Overlay] because the bot is mounted in
/// `MaterialApp.router`'s builder (sibling of the routed child), which is
/// outside the Navigator's Overlay. Without this, any descendant that needs
/// an Overlay ancestor — Tooltip, IconButton (which injects a Tooltip),
/// ScaffoldMessenger snackbars, modal dialogs — crashes the entire app
/// with a red ErrorWidget.
/// HelpBot is mounted via app.dart's MaterialApp.router builder, so it's in
/// every frame's tree. Keeping it a plain [StatelessWidget] (no
/// `ConsumerWidget`/no `ref`) means no Riverpod listener is attached at the
/// outermost level — only `_HelpBotInner` and its children subscribe, and
/// each via a narrow `.select()`.
class HelpBot extends StatelessWidget {
  const HelpBot({super.key, required this.currentRoute});

  final String currentRoute;

  static const double fabSize = 56;
  static const double fabMargin = 24;
  static const double panelWidth = 360;
  static const double panelHeight = 540;
  static const double mobileBreakpoint = 480;

  @override
  Widget build(BuildContext context) {
    if (!helpBotVisibleOn(currentRoute)) return const SizedBox.shrink();
    return Overlay(
      initialEntries: <OverlayEntry>[
        OverlayEntry(builder: (context) => const _HelpBotInner()),
      ],
    );
  }
}

class _HelpBotInner extends ConsumerWidget {
  const _HelpBotInner();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOpen = ref.watch(
      helpBotControllerProvider.select((s) => s.isOpen),
    );
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        // Closed state: the FAB sits in its own RepaintBoundary so route
        // changes / page scrolls don't repaint its drop-shadow + circle.
        if (!isOpen)
          const Positioned(
            right: HelpBot.fabMargin,
            bottom: HelpBot.fabMargin,
            child: RepaintBoundary(child: _HelpBotFab()),
          ),
        // Open state: panel.
        if (isOpen) const _HelpBotPanel(),
      ],
    );
  }
}

class _HelpBotFab extends ConsumerWidget {
  const _HelpBotFab();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scheme = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context);
    final label = l10n?.helpBot_openLabel ?? 'Get help with this app';
    // NOTE: no Tooltip here. The HelpBot is mounted via MaterialApp.router's
    // builder (sibling of the routed child), so it sits OUTSIDE the
    // Navigator's Overlay. Tooltip needs an Overlay ancestor and would crash
    // the entire app with a red ErrorWidget. Semantics covers accessibility.
    return Material(
      color: scheme.primary,
      shape: const CircleBorder(),
      elevation: 6,
      shadowColor: scheme.shadow.withValues(alpha: 0.35),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () => ref.read(helpBotControllerProvider.notifier).open(),
        child: SizedBox(
          width: HelpBot.fabSize,
          height: HelpBot.fabSize,
          child: Semantics(
            button: true,
            label: label,
            child: Icon(
              Icons.help_outline,
              color: scheme.onPrimary,
              size: 26,
            ),
          ),
        ),
      ),
    );
  }
}

class _HelpBotPanel extends StatelessWidget {
  const _HelpBotPanel();

  @override
  Widget build(BuildContext context) {
    // sizeOf instead of MediaQuery.of — only viewport width matters here.
    final isMobile =
        MediaQuery.sizeOf(context).width < HelpBot.mobileBreakpoint;
    final scheme = Theme.of(context).colorScheme;

    final panel = _PanelChrome();

    if (isMobile) {
      return Positioned.fill(
        child: ColoredBox(
          color: scheme.surface,
          child: SafeArea(child: panel),
        ),
      );
    }
    return Positioned(
      right: HelpBot.fabMargin,
      bottom: HelpBot.fabMargin,
      child: SizedBox(
        width: HelpBot.panelWidth,
        height: HelpBot.panelHeight,
        child: panel,
      ),
    );
  }
}

class _PanelChrome extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scheme = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context);
    return Material(
      color: scheme.surface,
      elevation: 12,
      shadowColor: scheme.shadow.withValues(alpha: 0.35),
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          _PanelHeader(title: l10n?.helpBot_title ?? 'Help with this app'),
          const Expanded(child: _PanelBody()),
          _HelpInputBar(placeholder: l10n?.helpBot_placeholder),
        ],
      ),
    );
  }
}

class _PanelHeader extends ConsumerWidget {
  const _PanelHeader({required this.title});
  final String title;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scheme = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context);
    final closeLabel = l10n?.helpBot_close ?? 'Close help';
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: scheme.primary,
        border: Border(bottom: BorderSide(color: scheme.outlineVariant)),
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.help_outline, color: scheme.onPrimary, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: scheme.onPrimary,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          // InkWell instead of IconButton because IconButton injects a
          // Tooltip and HelpBot lives outside any Overlay (see _HelpBotFab).
          Semantics(
            button: true,
            label: closeLabel,
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: () =>
                  ref.read(helpBotControllerProvider.notifier).close(),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Icon(Icons.close, color: scheme.onPrimary, size: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PanelBody extends ConsumerWidget {
  const _PanelBody();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(
      helpBotControllerProvider.select((s) => s.messages),
    );
    if (messages.isEmpty) {
      return const _EmptyState();
    }
    return _MessageList(messages: messages);
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context);
    final empty = l10n?.helpBot_emptyState ??
        'Ask how to use a feature, navigate to a page, or understand a screening question.';
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.support_agent, size: 36, color: scheme.primary),
          const SizedBox(height: 12),
          Text(
            empty,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: scheme.onSurfaceVariant,
              fontSize: 13,
              height: 1.45,
            ),
          ),
        ],
      ),
    );
  }
}

class _MessageList extends StatefulWidget {
  const _MessageList({required this.messages});
  final List<UiMessage> messages;
  @override
  State<_MessageList> createState() => _MessageListState();
}

class _MessageListState extends State<_MessageList> {
  final ScrollController _ctl = ScrollController();

  @override
  void didUpdateWidget(covariant _MessageList old) {
    super.didUpdateWidget(old);
    final lastNew =
        widget.messages.isEmpty ? '' : widget.messages.last.content;
    final lastOld = old.messages.isEmpty ? '' : old.messages.last.content;
    if (old.messages.length != widget.messages.length || lastNew != lastOld) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_ctl.hasClients) {
          // Instant scroll-to-bottom — no 180ms easeOut tween.
          _ctl.jumpTo(_ctl.position.maxScrollExtent);
        }
      });
    }
  }

  @override
  void dispose() {
    _ctl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _ctl,
      thumbVisibility: true,
      thickness: 4,
      radius: const Radius.circular(999),
      child: ListView.builder(
        controller: _ctl,
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: widget.messages.length,
        itemBuilder: (context, i) {
          final m = widget.messages[i];
          return KeyedSubtree(
            key: ValueKey<String>(m.id),
            child: MessageBubble(message: m),
          );
        },
      ),
    );
  }
}

class _HelpInputBar extends ConsumerWidget {
  const _HelpInputBar({this.placeholder});
  final String? placeholder;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isStreaming = ref.watch(
      helpBotControllerProvider.select((s) => s.isStreaming),
    );
    final ctl = ref.read(helpBotControllerProvider.notifier);
    // Reuse ChatInputBar so the help bot's text input matches the rest of
    // the app (focus handling, multi-line, send-on-enter).
    return ChatInputBar(
      isStreaming: isStreaming,
      onSubmit: ctl.send,
      onStop: ctl.abort,
      onReset: ctl.reset,
    );
  }
}
