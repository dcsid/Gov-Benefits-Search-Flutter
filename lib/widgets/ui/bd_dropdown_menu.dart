import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

class BdDropdownItem<T> {
  const BdDropdownItem({
    required this.value,
    required this.label,
    this.leading,
    this.trailing,
    this.checked,
    this.enabled = true,
  });
  final T value;
  final String label;
  final Widget? leading;
  final Widget? trailing;
  final bool? checked;
  final bool enabled;
}

class BdDropdownMenu<T> extends StatefulWidget {
  const BdDropdownMenu({
    super.key,
    required this.trigger,
    required this.items,
    required this.onSelected,
    this.label,
    this.minWidth = 200,
    this.maxWidth = 320,
    this.viewportPadding = 8,
    this.gap = 6,
    @Deprecated('Positioning is now computed from viewport bounds. '
        'Retained for source compatibility but ignored.')
    this.targetAnchor = Alignment.bottomLeft,
    @Deprecated('Positioning is now computed from viewport bounds. '
        'Retained for source compatibility but ignored.')
    this.followerAnchor = Alignment.topLeft,
    @Deprecated('Use `gap` instead. Retained for source compatibility.')
    this.offset = const Offset(0, 6),
  });

  final Widget trigger;
  final List<BdDropdownItem<T>> items;
  final ValueChanged<T> onSelected;
  final String? label;
  final double minWidth;
  final double maxWidth;
  final double viewportPadding;
  final double gap;

  // Deprecated — kept so existing call sites compile during the chrome-fixes
  // rollout. Positioning is now computed from the trigger's RenderBox and the
  // viewport bounds.
  final Alignment targetAnchor;
  final Alignment followerAnchor;
  final Offset offset;

  @override
  State<BdDropdownMenu<T>> createState() => _BdDropdownMenuState<T>();
}

class _BdDropdownMenuState<T> extends State<BdDropdownMenu<T>> {
  OverlayEntry? _entry;

  void _toggle() => _entry == null ? _open() : _close();

  void _open() {
    final renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox == null || !renderBox.hasSize) return;

    _entry = OverlayEntry(
      builder: (overlayContext) {
        return _AnchoredMenu<T>(
          triggerBox: renderBox,
          gap: widget.gap,
          viewportPadding: widget.viewportPadding,
          minWidth: widget.minWidth,
          maxWidth: widget.maxWidth,
          label: widget.label,
          items: widget.items,
          onSelected: (v) {
            widget.onSelected(v);
            _close();
          },
          onDismiss: _close,
        );
      },
    );
    Overlay.of(context).insert(_entry!);
  }

  void _close() {
    _entry?.remove();
    _entry = null;
  }

  @override
  void dispose() {
    _close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: (_) => _toggle(),
      child: widget.trigger,
    );
  }
}

class _AnchoredMenu<T> extends StatelessWidget {
  const _AnchoredMenu({
    required this.triggerBox,
    required this.gap,
    required this.viewportPadding,
    required this.minWidth,
    required this.maxWidth,
    required this.label,
    required this.items,
    required this.onSelected,
    required this.onDismiss,
  });

  final RenderBox triggerBox;
  final double gap;
  final double viewportPadding;
  final double minWidth;
  final double maxWidth;
  final String? label;
  final List<BdDropdownItem<T>> items;
  final ValueChanged<T> onSelected;
  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bd = BdColors.of(context);
    final media = MediaQuery.of(context);
    final viewport = media.size;

    if (!triggerBox.attached) {
      return const SizedBox.shrink();
    }
    final triggerOrigin = triggerBox.localToGlobal(Offset.zero);
    final triggerSize = triggerBox.size;

    final spaceBelow =
        viewport.height - (triggerOrigin.dy + triggerSize.height) - viewportPadding - gap;
    final spaceAbove = triggerOrigin.dy - viewportPadding - gap;
    final placeBelow = spaceBelow >= 160 || spaceBelow >= spaceAbove;
    final maxAvailableHeight =
        (placeBelow ? spaceBelow : spaceAbove).clamp(120.0, viewport.height);

    final desiredWidth = maxWidth.clamp(minWidth, viewport.width - viewportPadding * 2);
    double left = triggerOrigin.dx;
    if (left + desiredWidth > viewport.width - viewportPadding) {
      left = triggerOrigin.dx + triggerSize.width - desiredWidth;
    }
    if (left < viewportPadding) {
      left = viewportPadding;
    }

    final top = placeBelow
        ? triggerOrigin.dy + triggerSize.height + gap
        : (triggerOrigin.dy - gap - maxAvailableHeight).clamp(
            viewportPadding,
            viewport.height,
          );

    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: onDismiss,
          ),
        ),
        Positioned(
          left: left,
          top: top,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: minWidth,
              maxWidth: desiredWidth,
              maxHeight: maxAvailableHeight,
            ),
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(8),
              color: scheme.surface,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: bd.border),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (label != null) ...[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                          child: Text(
                            label!,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: scheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                        Container(height: 1, color: bd.border),
                      ],
                      for (final it in items)
                        _MenuRow<T>(
                          item: it,
                          onTap: () {
                            if (!it.enabled) return;
                            onSelected(it.value);
                          },
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _MenuRow<T> extends StatelessWidget {
  const _MenuRow({required this.item, required this.onTap});
  final BdDropdownItem<T> item;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: item.enabled ? onTap : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Opacity(
          opacity: item.enabled ? 1 : 0.5,
          child: Row(
            children: [
              if (item.checked != null) ...[
                Icon(
                  item.checked! ? Icons.check : Icons.check_box_outline_blank,
                  size: 16,
                  color: item.checked! ? scheme.primary : scheme.onSurfaceVariant,
                ),
                const SizedBox(width: 8),
              ],
              if (item.leading != null) ...[
                IconTheme.merge(
                  data: IconThemeData(size: 16, color: scheme.onSurface),
                  child: item.leading!,
                ),
                const SizedBox(width: 8),
              ],
              Expanded(
                child: Text(
                  item.label,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              if (item.trailing != null) item.trailing!,
            ],
          ),
        ),
      ),
    );
  }
}
