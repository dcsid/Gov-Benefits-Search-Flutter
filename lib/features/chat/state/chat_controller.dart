import 'dart:async';
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/api/models/chat.dart';
import '../../../core/api/providers.dart';
import '../../../core/api/sse/chat_stream.dart';

/// UI-side role enum. The wire-level [ChatMessage] uses a free-form `role`
/// string, but the UI only cares about user/assistant/system.
enum ChatRole { user, assistant, system }

/// UI-side context-mode enum mapped to the wire `contextMode` string.
enum ChatContextMode { general, screening, program }

String _contextModeWire(ChatContextMode m) {
  switch (m) {
    case ChatContextMode.general:
      return 'general';
    case ChatContextMode.screening:
      return 'screening';
    case ChatContextMode.program:
      return 'program';
  }
}

class UiToolCall {
  UiToolCall({
    required this.id,
    required this.name,
    required this.args,
    this.result,
  });

  final String id;
  final String name;
  final Map<String, Object?> args;
  Object? result;

  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'args': args,
    'result': result,
  };

  static UiToolCall fromJson(Map<String, Object?> json) => UiToolCall(
    id: (json['id'] as String?) ?? '',
    name: (json['name'] as String?) ?? '',
    args:
        (json['args'] as Map?)?.cast<String, Object?>() ?? <String, Object?>{},
    result: json['result'],
  );
}

enum UiMessageStatus { idle, streaming, error }

class UiMessage {
  UiMessage({
    required this.id,
    required this.role,
    required this.content,
    required this.createdAt,
    this.status = UiMessageStatus.idle,
    List<UiToolCall>? toolCalls,
    this.error,
  }) : toolCalls = toolCalls ?? <UiToolCall>[];

  final String id;
  final ChatRole role;
  String content;
  final int createdAt;
  UiMessageStatus status;
  final List<UiToolCall> toolCalls;
  String? error;

  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'role': role.name,
    'content': content,
    'createdAt': createdAt,
    'status': status.name,
    'toolCalls': toolCalls.map((t) => t.toJson()).toList(),
    'error': error,
  };

  static UiMessage fromJson(Map<String, Object?> json) {
    final status = UiMessageStatus.values.firstWhere(
      (s) => s.name == json['status'],
      orElse: () => UiMessageStatus.idle,
    );
    final calls = ((json['toolCalls'] as List?) ?? <Object?>[])
        .whereType<Map>()
        .map((m) => UiToolCall.fromJson(m.cast<String, Object?>()))
        .toList();
    return UiMessage(
      id: (json['id'] as String?) ?? _shortRandomId(),
      role: ChatRole.values.firstWhere(
        (r) => r.name == json['role'],
        orElse: () => ChatRole.assistant,
      ),
      content: (json['content'] as String?) ?? '',
      createdAt:
          (json['createdAt'] as int?) ?? DateTime.now().millisecondsSinceEpoch,
      status: status == UiMessageStatus.streaming
          ? UiMessageStatus.idle
          : status,
      toolCalls: calls,
      error: json['error'] as String?,
    );
  }
}

String _shortRandomId() {
  final r = Random();
  final ts = DateTime.now().millisecondsSinceEpoch.toRadixString(36);
  final rand = r.nextInt(0x7fffffff).toRadixString(36);
  return '$ts-$rand';
}

class ChatState {
  ChatState({
    required this.messages,
    this.isStreaming = false,
    this.useScreeningContext = false,
    this.contextMode = ChatContextMode.general,
  });

  final List<UiMessage> messages;
  final bool isStreaming;
  final bool useScreeningContext;
  final ChatContextMode contextMode;

  ChatState copyWith({
    List<UiMessage>? messages,
    bool? isStreaming,
    bool? useScreeningContext,
    ChatContextMode? contextMode,
  }) => ChatState(
    messages: messages ?? this.messages,
    isStreaming: isStreaming ?? this.isStreaming,
    useScreeningContext: useScreeningContext ?? this.useScreeningContext,
    contextMode: contextMode ?? this.contextMode,
  );
}

class ChatController
    extends AutoDisposeFamilyAsyncNotifier<ChatState, String?> {
  StreamSubscription<ChatStreamEvent>? _sub;
  String? _streamingMessageId;

  @override
  Future<ChatState> build(String? sessionId) async {
    // Chat is intentionally NOT persisted — every reload starts fresh.
    // The context toggle is also session-only (defaults off).
    ref.onDispose(() {
      _sub?.cancel();
    });
    return ChatState(
      messages: const <UiMessage>[],
      useScreeningContext: false,
      contextMode: ChatContextMode.general,
    );
  }

  /// No-op kept so existing call sites still type-check. Chat history is
  /// session-only by design.
  Future<void> _persist(List<UiMessage> messages) async {}

  Future<void> setUseScreeningContext(bool value) async {
    final s = state.value;
    if (s == null) return;
    state = AsyncData(
      s.copyWith(
        useScreeningContext: value,
        contextMode: value
            ? ChatContextMode.screening
            : ChatContextMode.general,
      ),
    );
    // No persistence — toggle resets to off on next session.
  }

  Future<void> reset() async {
    abort();
    state = AsyncData(
      ChatState(
        messages: <UiMessage>[],
        useScreeningContext: state.value?.useScreeningContext ?? false,
      ),
    );
  }

  void abort() {
    _sub?.cancel();
    _sub = null;
    final s = state.value;
    if (s == null) return;
    final messages = List<UiMessage>.from(s.messages);
    final id = _streamingMessageId;
    if (id != null) {
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
      }
    }
    _streamingMessageId = null;
    state = AsyncData(s.copyWith(messages: messages, isStreaming: false));
  }

  Future<void> send(String userText) async {
    final trimmed = userText.trim();
    if (trimmed.isEmpty) return;
    final s = state.value;
    if (s == null) return;
    if (s.isStreaming) return;

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

    final messages = <UiMessage>[...s.messages, user, assistant];
    state = AsyncData(s.copyWith(messages: messages, isStreaming: true));
    await _persist(messages);

    final svc = ref.read(chatStreamProvider);
    final history = messages
        .where(
          (m) => m.role != ChatRole.system && m.status != UiMessageStatus.error,
        )
        .map((m) => ChatMessage(role: m.role.name, content: m.content))
        .toList();

    final stream = svc.connect(
      sessionId: arg ?? '',
      userMessage: trimmed,
      context: ChatContext(
        sessionId: s.useScreeningContext ? arg : null,
        contextMode: _contextModeWire(s.contextMode),
      ),
      history: history,
    );

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
    final s = state.value;
    if (s == null) return;
    final messages = List<UiMessage>.from(s.messages);
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
      toolCall: (id, name, args) {
        final next = List<UiToolCall>.from(m.toolCalls)
          ..add(UiToolCall(id: id, name: name, args: args));
        messages[idx] = UiMessage(
          id: m.id,
          role: m.role,
          content: m.content,
          createdAt: m.createdAt,
          status: m.status,
          toolCalls: next,
        );
      },
      toolResult: (id, result) {
        final next = List<UiToolCall>.from(m.toolCalls);
        final i = next.indexWhere((t) => t.id == id);
        if (i >= 0) next[i].result = result;
        messages[idx] = UiMessage(
          id: m.id,
          role: m.role,
          content: m.content,
          createdAt: m.createdAt,
          status: m.status,
          toolCalls: next,
        );
      },
      citation: (_, __, ___) {
        // Citations aren't surfaced in the UI yet; ignore but keep stream alive.
      },
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
              ? '**The assistant could not respond.** $message'
              : m.content,
          createdAt: m.createdAt,
          status: UiMessageStatus.error,
          toolCalls: m.toolCalls,
          error: message,
        );
      },
    );
    state = AsyncData(s.copyWith(messages: messages));
  }

  void _finishStream(String assistantId) {
    final s = state.value;
    if (s == null) return;
    final messages = List<UiMessage>.from(s.messages);
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
    state = AsyncData(s.copyWith(messages: messages, isStreaming: false));
    _persist(messages);
  }
}

final chatControllerProvider = AsyncNotifierProvider.autoDispose
    .family<ChatController, ChatState, String?>(ChatController.new);
