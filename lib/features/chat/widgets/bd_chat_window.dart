import 'package:flutter/material.dart';

import '../state/chat_controller.dart';
import 'empty_state.dart';
import 'message_bubble.dart';

class BdChatWindow extends StatefulWidget {
  const BdChatWindow({
    super.key,
    required this.messages,
    required this.onPromptTap,
  });

  final List<UiMessage> messages;
  final ValueChanged<String> onPromptTap;

  @override
  State<BdChatWindow> createState() => _BdChatWindowState();
}

class _BdChatWindowState extends State<BdChatWindow> {
  final ScrollController _ctl = ScrollController();

  @override
  void didUpdateWidget(covariant BdChatWindow old) {
    super.didUpdateWidget(old);
    final lastNew = widget.messages.isEmpty ? '' : widget.messages.last.content;
    final lastOld = old.messages.isEmpty ? '' : old.messages.last.content;
    if (old.messages.length != widget.messages.length || lastNew != lastOld) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_ctl.hasClients) {
          _ctl.animateTo(
            _ctl.position.maxScrollExtent,
            duration: const Duration(milliseconds: 180),
            curve: Curves.easeOut,
          );
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
    if (widget.messages.isEmpty) {
      return ChatEmptyState(onPromptTap: widget.onPromptTap);
    }
    // Previous implementation built every MessageBubble inside a Column on
    // every streaming chunk. ListView.builder + stable keys means only
    // the streaming bubble (and bubbles whose props actually changed)
    // rebuild per token.
    return Scrollbar(
      controller: _ctl,
      thumbVisibility: true,
      thickness: 6,
      radius: const Radius.circular(999),
      child: ListView.builder(
        controller: _ctl,
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: widget.messages.length + 1,
        itemBuilder: (context, i) {
          if (i == widget.messages.length) return const SizedBox(height: 32);
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
