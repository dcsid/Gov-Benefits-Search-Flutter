import 'package:flutter/material.dart';

import '../../theme/extensions/bd_colors.dart';

class BdPopover extends StatefulWidget {
  const BdPopover({
    super.key,
    required this.trigger,
    required this.content,
    this.alignment = Alignment.topCenter,
    this.followerAlignment = Alignment.bottomCenter,
    this.offset = const Offset(0, 4),
    this.width = 288,
  });

  final Widget trigger;
  final Widget content;
  final Alignment alignment;
  final Alignment followerAlignment;
  final Offset offset;
  final double width;

  @override
  State<BdPopover> createState() => _BdPopoverState();
}

class _BdPopoverState extends State<BdPopover> {
  final LayerLink _link = LayerLink();
  OverlayEntry? _entry;

  void _toggle() {
    if (_entry == null) {
      _open();
    } else {
      _close();
    }
  }

  void _open() {
    final scheme = Theme.of(context).colorScheme;
    final bd = BdColors.of(context);
    _entry = OverlayEntry(
      builder: (ctx) => Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: _close,
            ),
          ),
          CompositedTransformFollower(
            link: _link,
            showWhenUnlinked: false,
            offset: widget.offset,
            targetAnchor: widget.followerAlignment,
            followerAnchor: widget.alignment,
            child: Material(
              elevation: 8,
              color: scheme.surface,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: widget.width,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: bd.border),
                ),
                child: widget.content,
              ),
            ),
          ),
        ],
      ),
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
    return CompositedTransformTarget(
      link: _link,
      child: Listener(
        behavior: HitTestBehavior.translucent,
        onPointerDown: (_) => _toggle(),
        child: widget.trigger,
      ),
    );
  }
}
