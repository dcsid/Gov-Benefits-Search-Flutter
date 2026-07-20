import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../state/chat_controller.dart';
import 'tool_call_card.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({super.key, required this.message});

  final UiMessage message;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isUser = message.role == ChatRole.user;
    final isStreaming = message.status == UiMessageStatus.streaming;
    final isError = message.status == UiMessageStatus.error;

    final bubbleBg = isUser
        ? scheme.primary
        : isError
        ? scheme.errorContainer
        : scheme.surfaceContainerHigh;
    final fg = isUser
        ? scheme.onPrimary
        : isError
        ? scheme.onErrorContainer
        : scheme.onSurface;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: isUser
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: <Widget>[
          if (!isUser) ...<Widget>[
            CircleAvatar(
              radius: 16,
              backgroundColor: scheme.primaryContainer,
              child: Icon(
                Icons.assistant,
                size: 18,
                color: scheme.onPrimaryContainer,
              ),
            ),
            const SizedBox(width: 12),
          ],
          Flexible(
            child: Column(
              crossAxisAlignment: isUser
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  isUser ? 'You' : 'Benefits assistant',
                  style: TextStyle(
                    fontSize: 12,
                    color: scheme.onSurfaceVariant,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.75,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: bubbleBg,
                    borderRadius: BorderRadius.circular(14),
                    border: isUser
                        ? null
                        : Border.all(color: scheme.outlineVariant),
                  ),
                  child: DefaultTextStyle.merge(
                    style: TextStyle(color: fg, height: 1.5),
                    child: _MessageContent(
                      content: message.content,
                      streaming: isStreaming,
                      foregroundColor: fg,
                    ),
                  ),
                ),
                if (message.toolCalls.isNotEmpty) ...<Widget>[
                  const SizedBox(height: 8),
                  for (final tc in message.toolCalls)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: ToolCallCard(call: tc),
                    ),
                ],
              ],
            ),
          ),
          if (isUser) ...<Widget>[
            const SizedBox(width: 12),
            CircleAvatar(
              radius: 16,
              backgroundColor: scheme.surfaceContainerHigh,
              child: Icon(Icons.person, size: 18, color: scheme.onSurface),
            ),
          ],
        ],
      ),
    );
  }
}

class _MessageContent extends StatelessWidget {
  const _MessageContent({
    required this.content,
    required this.streaming,
    required this.foregroundColor,
  });

  final String content;
  final bool streaming;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    if (content.isEmpty && streaming) {
      return SizedBox(
        height: 16,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            for (var i = 0; i < 3; i++)
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Icon(Icons.circle, size: 6, color: foregroundColor),
              ),
          ],
        ),
      );
    }
    return MarkdownBody(
      data: content,
      selectable: true,
      styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
        p: TextStyle(color: foregroundColor, height: 1.5),
        listBullet: TextStyle(color: foregroundColor),
        a: TextStyle(
          color: foregroundColor,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
