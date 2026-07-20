import 'dart:async';

import 'package:benefits_digger/core/api/models/chat.dart';
import 'package:benefits_digger/core/api/providers.dart';
import 'package:benefits_digger/core/api/sse/chat_stream.dart';
import 'package:benefits_digger/features/chat/state/chat_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Test double for [ChatStream] that yields a scripted sequence of events.
class _ScriptedChatStream implements ChatStream {
  _ScriptedChatStream(this.events);

  final List<ChatStreamEvent> events;

  @override
  Stream<ChatStreamEvent> connect({
    required String sessionId,
    required String userMessage,
    ChatContext? context,
    List<ChatMessage> history = const <ChatMessage>[],
  }) async* {
    for (final e in events) {
      yield e;
    }
  }

  @override
  void close() {}

  @override
  String? get baseUrl => null;

  @override
  int get maxRetries => 0;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    SharedPreferences.setMockInitialValues(<String, Object>{});
  });

  test('token deltas accumulate into a single assistant message', () async {
    final scripted = _ScriptedChatStream(<ChatStreamEvent>[
      const ChatStreamEvent.token('Hello'),
      const ChatStreamEvent.token(', '),
      const ChatStreamEvent.token('world!'),
      const ChatStreamEvent.done(),
    ]);

    final container = ProviderContainer(
      overrides: <Override>[chatStreamProvider.overrideWithValue(scripted)],
    );
    addTearDown(container.dispose);
    // Keep the autoDispose'd provider alive for the duration of the test.
    final sub = container.listen<Object?>(
      chatControllerProvider(null),
      (_, __) {},
    );
    addTearDown(sub.close);

    await container.read(chatControllerProvider(null).future);
    final notifier = container.read(chatControllerProvider(null).notifier);

    await notifier.send('Hi');
    await Future<void>.delayed(const Duration(milliseconds: 60));
    final s = container.read(chatControllerProvider(null)).value!;
    expect(s.messages.length, 2);
    expect(s.messages[0].role, ChatRole.user);
    expect(s.messages[1].role, ChatRole.assistant);
    expect(s.messages[1].content, 'Hello, world!');
    expect(s.messages[1].status, UiMessageStatus.idle);
    expect(s.isStreaming, isFalse);
  });

  test('error events surface as an error message', () async {
    final scripted = _ScriptedChatStream(<ChatStreamEvent>[
      const ChatStreamEvent.error(message: 'Service down'),
    ]);

    final container = ProviderContainer(
      overrides: <Override>[chatStreamProvider.overrideWithValue(scripted)],
    );
    addTearDown(container.dispose);
    // Keep the autoDispose'd provider alive for the duration of the test.
    final sub = container.listen<Object?>(
      chatControllerProvider(null),
      (_, __) {},
    );
    addTearDown(sub.close);

    await container.read(chatControllerProvider(null).future);
    final notifier = container.read(chatControllerProvider(null).notifier);

    await notifier.send('Hi');
    await Future<void>.delayed(const Duration(milliseconds: 60));
    final s = container.read(chatControllerProvider(null)).value!;
    expect(s.messages.last.status, UiMessageStatus.error);
    expect(s.messages.last.error, 'Service down');
  });

  test('reset clears the conversation', () async {
    final scripted = _ScriptedChatStream(<ChatStreamEvent>[
      const ChatStreamEvent.token('hi'),
      const ChatStreamEvent.done(),
    ]);

    final container = ProviderContainer(
      overrides: <Override>[chatStreamProvider.overrideWithValue(scripted)],
    );
    addTearDown(container.dispose);
    // Keep the autoDispose'd provider alive for the duration of the test.
    final sub = container.listen<Object?>(
      chatControllerProvider(null),
      (_, __) {},
    );
    addTearDown(sub.close);

    await container.read(chatControllerProvider(null).future);
    final notifier = container.read(chatControllerProvider(null).notifier);

    await notifier.send('Hi');
    await Future<void>.delayed(const Duration(milliseconds: 60));
    expect(
      container.read(chatControllerProvider(null)).value!.messages,
      isNotEmpty,
    );

    await notifier.reset();
    expect(
      container.read(chatControllerProvider(null)).value!.messages,
      isEmpty,
    );
  });
}
