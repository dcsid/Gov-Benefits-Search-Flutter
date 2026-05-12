import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/chrome/bd_header.dart';
import 'state/chat_controller.dart';
import 'widgets/bd_chat_window.dart';
import 'widgets/context_toggle.dart';
import 'widgets/input_bar.dart';

class ChatPage extends ConsumerWidget {
  const ChatPage({super.key, this.sessionId});

  /// Optional session id passed via query params. Used only to scope the
  /// in-memory provider key — chat history is intentionally NOT persisted.
  final String? sessionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch only the loading/error envelope here. Body slices are watched
    // by dedicated child consumers below so streaming tokens don't rebuild
    // the header / input bar / context toggle.
    final isReady = ref.watch(
      chatControllerProvider(sessionId).select((a) => a.hasValue),
    );
    final error = ref.watch(
      chatControllerProvider(sessionId).select((a) => a.error),
    );
    return Scaffold(
      body: Column(
        children: [
          const RepaintBoundary(
            child: BdHeader(variant: BdHeaderVariant.chat),
          ),
          Expanded(
            child: !isReady
                ? (error != null
                    ? Center(child: Text('Chat init failed: $error'))
                    : const Center(child: CircularProgressIndicator()))
                : _ChatBody(sessionId: sessionId),
          ),
        ],
      ),
    );
  }
}

class _ChatBody extends StatelessWidget {
  const _ChatBody({required this.sessionId});
  final String? sessionId;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _ContextToggleSlice(sessionId: sessionId),
        Expanded(child: _MessagesSlice(sessionId: sessionId)),
        _InputBarSlice(sessionId: sessionId),
      ],
    );
  }
}

class _ContextToggleSlice extends ConsumerWidget {
  const _ContextToggleSlice({required this.sessionId});
  final String? sessionId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(
      chatControllerProvider(sessionId).select(
        (a) => a.value?.useScreeningContext ?? false,
      ),
    );
    final ctl = ref.read(chatControllerProvider(sessionId).notifier);
    return ChatContextToggle(
      value: value,
      hasSession: sessionId != null,
      onChanged: ctl.setUseScreeningContext,
    );
  }
}

class _MessagesSlice extends ConsumerWidget {
  const _MessagesSlice({required this.sessionId});
  final String? sessionId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(
      chatControllerProvider(sessionId).select(
        (a) => a.value?.messages ?? const <UiMessage>[],
      ),
    );
    final ctl = ref.read(chatControllerProvider(sessionId).notifier);
    return BdChatWindow(messages: messages, onPromptTap: ctl.send);
  }
}

class _InputBarSlice extends ConsumerWidget {
  const _InputBarSlice({required this.sessionId});
  final String? sessionId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isStreaming = ref.watch(
      chatControllerProvider(sessionId).select(
        (a) => a.value?.isStreaming ?? false,
      ),
    );
    final ctl = ref.read(chatControllerProvider(sessionId).notifier);
    return ChatInputBar(
      isStreaming: isStreaming,
      onSubmit: ctl.send,
      onStop: ctl.abort,
      onReset: ctl.reset,
    );
  }
}
