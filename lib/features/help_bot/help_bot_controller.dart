import 'dart:async';
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/api/models/chat.dart';
import '../../core/api/providers.dart';
import '../chat/state/chat_controller.dart' show UiMessage, UiMessageStatus, ChatRole;

/// Single source of truth for the floating help bot — open/closed state,
/// message log for the current session, and an in-flight stream flag.
///
/// The bot is intentionally session-scoped (no shared_preferences
/// persistence) so it doesn't surface stale conversations across navigation
/// or browser tabs. If we want persistence later we can add it the way the
/// main ChatController does.
class HelpBotState {
  HelpBotState({
    required this.messages,
    this.isOpen = false,
    this.isStreaming = false,
  });

  final List<UiMessage> messages;
  final bool isOpen;
  final bool isStreaming;

  HelpBotState copyWith({
    List<UiMessage>? messages,
    bool? isOpen,
    bool? isStreaming,
  }) =>
      HelpBotState(
        messages: messages ?? this.messages,
        isOpen: isOpen ?? this.isOpen,
        isStreaming: isStreaming ?? this.isStreaming,
      );
}

String _shortRandomId() {
  final r = Random();
  final ts = DateTime.now().millisecondsSinceEpoch.toRadixString(36);
  final rand = r.nextInt(0x7fffffff).toRadixString(36);
  return '$ts-$rand';
}

class HelpBotController extends Notifier<HelpBotState> {
  StreamSubscription<ChatStreamEvent>? _sub;
  String? _streamingMessageId;

  @override
  HelpBotState build() {
    ref.onDispose(() {
      _sub?.cancel();
    });
    return HelpBotState(messages: <UiMessage>[]);
  }

  void open() {
    if (state.isOpen) return;
    state = state.copyWith(isOpen: true);
  }

  void close() {
    if (!state.isOpen) return;
    state = state.copyWith(isOpen: false);
  }

  void toggle() => state.isOpen ? close() : open();

  Future<void> reset() async {
    abort();
    state = HelpBotState(
      messages: <UiMessage>[],
      isOpen: state.isOpen,
    );
  }

  void abort() {
    _sub?.cancel();
    _sub = null;
    final id = _streamingMessageId;
    if (id != null) {
      final messages = List<UiMessage>.from(state.messages);
      final idx = messages.indexWhere((m) => m.id == id);
      if (idx >= 0 && messages[idx].status == UiMessageStatus.streaming) {
        messages[idx] = UiMessage(
          id: messages[idx].id,
          role: messages[idx].role,
          content: messages[idx].content,
          createdAt: messages[idx].createdAt,
          status: UiMessageStatus.idle,
          toolCalls: messages[idx].toolCalls,
        );
        state = state.copyWith(messages: messages);
      }
    }
    _streamingMessageId = null;
    state = state.copyWith(isStreaming: false);
  }

  Future<void> send(String userText) async {
    final trimmed = userText.trim();
    if (trimmed.isEmpty || state.isStreaming) return;

    final user = UiMessage(
      id: _shortRandomId(),
      role: ChatRole.user,
      content: trimmed,
      createdAt: DateTime.now().millisecondsSinceEpoch,
    );
    final assistantId = _shortRandomId();
    _streamingMessageId = assistantId;
    final assistant = UiMessage(
      id: assistantId,
      role: ChatRole.assistant,
      content: '',
      createdAt: DateTime.now().millisecondsSinceEpoch,
      status: UiMessageStatus.streaming,
    );
    final messages = <UiMessage>[...state.messages, user, assistant];
    state = state.copyWith(messages: messages, isStreaming: true);

    final history = messages
        .where(
          (m) =>
              m.role != ChatRole.system && m.status != UiMessageStatus.error,
        )
        .map((m) => ChatMessage(role: m.role.name, content: m.content))
        .toList();

    final svc = ref.read(helpServiceProvider);
    final stream = svc.ask(userMessage: trimmed, history: history);

    _sub = stream.listen(
      (evt) => _applyEvent(assistantId, evt),
      onError: (Object e) => _applyEvent(
        assistantId,
        ChatStreamEvent.error(message: e.toString()),
      ),
      onDone: () => _finishStream(assistantId),
      cancelOnError: false,
    );
  }

  void _applyEvent(String assistantId, ChatStreamEvent evt) {
    final messages = List<UiMessage>.from(state.messages);
    final idx = messages.indexWhere((m) => m.id == assistantId);
    if (idx < 0) return;
    final m = messages[idx];

    evt.when(
      token: (delta) {
        messages[idx] = UiMessage(
          id: m.id,
          role: m.role,
          content: m.content + delta,
          createdAt: m.createdAt,
          status: UiMessageStatus.streaming,
          toolCalls: m.toolCalls,
        );
      },
      toolCall: (_, __, ___) {},
      toolResult: (_, __) {},
      citation: (_, __, ___) {},
      done: (_, __, ___, ____) {
        messages[idx] = UiMessage(
          id: m.id,
          role: m.role,
          content: m.content,
          createdAt: m.createdAt,
          status: UiMessageStatus.idle,
          toolCalls: m.toolCalls,
        );
      },
      error: (message, _) {
        messages[idx] = UiMessage(
          id: m.id,
          role: m.role,
          content: m.content.isEmpty
              ? '**The help assistant could not respond.** $message'
              : m.content,
          createdAt: m.createdAt,
          status: UiMessageStatus.error,
          toolCalls: m.toolCalls,
          error: message,
        );
      },
    );
    state = state.copyWith(messages: messages);
  }

  void _finishStream(String assistantId) {
    final messages = List<UiMessage>.from(state.messages);
    final idx = messages.indexWhere((m) => m.id == assistantId);
    if (idx >= 0 && messages[idx].status == UiMessageStatus.streaming) {
      final m = messages[idx];
      messages[idx] = UiMessage(
        id: m.id,
        role: m.role,
        content: m.content,
        createdAt: m.createdAt,
        status: UiMessageStatus.idle,
        toolCalls: m.toolCalls,
      );
    }
    _streamingMessageId = null;
    state = state.copyWith(messages: messages, isStreaming: false);
  }
}

final helpBotControllerProvider =
    NotifierProvider<HelpBotController, HelpBotState>(HelpBotController.new);
