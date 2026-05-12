import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../widgets/ui/bd_button.dart';

class ChatInputBar extends StatefulWidget {
  const ChatInputBar({
    super.key,
    required this.onSubmit,
    required this.isStreaming,
    required this.onStop,
    required this.onReset,
  });

  final ValueChanged<String> onSubmit;
  final bool isStreaming;
  final VoidCallback onStop;
  final VoidCallback onReset;

  @override
  State<ChatInputBar> createState() => _ChatInputBarState();
}

class _ChatInputBarState extends State<ChatInputBar> {
  final TextEditingController _ctl = TextEditingController();
  final FocusNode _focus = FocusNode();

  @override
  void dispose() {
    _ctl.dispose();
    _focus.dispose();
    super.dispose();
  }

  void _submit() {
    final value = _ctl.text.trim();
    if (value.isEmpty || widget.isStreaming) return;
    widget.onSubmit(value);
    _ctl.clear();
    _focus.requestFocus();
  }

  KeyEventResult _onKey(FocusNode node, KeyEvent event) {
    if (event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.enter) {
      final shift = HardwareKeyboard.instance.isShiftPressed;
      if (!shift) {
        _submit();
        return KeyEventResult.handled;
      }
    }
    return KeyEventResult.ignored;
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      decoration: BoxDecoration(
        color: scheme.surface,
        border: Border(top: BorderSide(color: scheme.outlineVariant)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          IconButton(
            tooltip: 'Reset chat',
            onPressed: widget.onReset,
            icon: const Icon(Icons.refresh),
          ),
          Expanded(
            child: Focus(
              onKeyEvent: _onKey,
              child: TextField(
                controller: _ctl,
                focusNode: _focus,
                minLines: 1,
                maxLines: 6,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.newline,
                decoration: const InputDecoration(
                  hintText:
                      'Ask a question — like, "What if I start working part-time?"',
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          if (widget.isStreaming)
            BdButton(
              label: 'Stop',
              variant: BdButtonVariant.outline,
              leading: const Icon(Icons.stop),
              onPressed: widget.onStop,
            )
          else
            BdButton(
              label: 'Send',
              variant: BdButtonVariant.accent,
              trailing: const Icon(Icons.send),
              onPressed: _submit,
            ),
        ],
      ),
    );
  }
}
