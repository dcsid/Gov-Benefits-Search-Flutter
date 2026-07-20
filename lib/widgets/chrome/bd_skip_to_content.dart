import 'package:flutter/material.dart';

/// Visible only when focused (keyboard "Tab"); jumps focus to the main content.
/// Pair with a target [FocusNode] on the page's body container.
class BdSkipToContent extends StatefulWidget {
  const BdSkipToContent({
    super.key,
    required this.targetFocusNode,
    this.label = 'Skip to content',
  });

  final FocusNode targetFocusNode;
  final String label;

  @override
  State<BdSkipToContent> createState() => _BdSkipToContentState();
}

class _BdSkipToContentState extends State<BdSkipToContent> {
  final FocusNode _focusNode = FocusNode(debugLabel: 'skip-to-content');

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final visible = _focusNode.hasFocus;
    return Align(
      // RTL: anchor to the leading (start) corner so the focus chip mirrors.
      alignment: AlignmentDirectional.topStart,
      // Instant show/hide — no slide animation.
      child: Visibility(
        visible: visible,
        maintainState: true,
        maintainAnimation: true,
        maintainSize: false,
        child: Semantics(
          link: true,
          label: widget.label,
          child: Focus(
            focusNode: _focusNode,
            child: GestureDetector(
              onTap: () => widget.targetFocusNode.requestFocus(),
              child: Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: scheme.primary,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  widget.label,
                  style: TextStyle(
                    color: scheme.onPrimary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
