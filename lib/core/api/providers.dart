import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api_client.dart';
import 'models/admin.dart';
import 'models/chat.dart';
import 'models/explorer.dart';
import 'models/health.dart';
import 'models/program.dart';
import 'models/session.dart';
import 'models/state.dart';
import 'services/admin_service.dart';
import 'services/explorer_service.dart';
import 'services/health_service.dart';
import 'services/help_service.dart';
import 'services/intake_service.dart';
import 'services/jurisdictions_service.dart';
import 'services/llm_service.dart';
import 'services/programs_service.dart';
import 'services/sessions_service.dart';
import 'sse/chat_stream.dart';

// ============================================================================
// Service providers (constructor-injected with the shared Dio instance).
// ============================================================================

final healthServiceProvider = Provider<HealthService>(
  (ref) => HealthService(ref.watch(dioProvider)),
);

final jurisdictionsServiceProvider = Provider<JurisdictionsService>(
  (ref) => JurisdictionsService(ref.watch(dioProvider)),
);

final programsServiceProvider = Provider<ProgramsService>(
  (ref) => ProgramsService(ref.watch(dioProvider)),
);

final explorerServiceProvider = Provider<ExplorerService>(
  (ref) => ExplorerService(ref.watch(dioProvider)),
);

final intakeServiceProvider = Provider<IntakeService>(
  (ref) => IntakeService(ref.watch(dioProvider)),
);

final sessionsServiceProvider = Provider<SessionsService>(
  (ref) => SessionsService(ref.watch(dioProvider)),
);

final adminServiceProvider = Provider<AdminService>(
  (ref) => AdminService(ref.watch(dioProvider)),
);

final llmServiceProvider = Provider<LlmService>(
  (ref) => LlmService(ref.watch(dioProvider)),
);

final chatStreamProvider = Provider<ChatStream>((ref) {
  final stream = ChatStream();
  ref.onDispose(stream.close);
  return stream;
});

/// Floating help bot's streaming service. Override in a [ProviderScope]
/// with [MockHelpService] (or any [HelpService]) when developing without
/// the backend.
final helpServiceProvider = Provider<HelpService>((ref) {
  final service = HelpServiceHttp();
  ref.onDispose(service.close);
  return service;
});

// ============================================================================
// FutureProviders for the queries the UI needs (mirrors `web/lib/api/queries.ts`).
// ============================================================================

/// GET /health.
final healthCheckProvider = FutureProvider<HealthCheck>(
  (ref) => ref.watch(healthServiceProvider).checkHealth(),
);

/// GET /jurisdictions/states. `keepAlive`: states list barely changes
/// per session — hold the result across nav and tab switches.
final statesListProvider = FutureProvider<List<StateInfo>>((ref) {
  ref.keepAlive();
  return ref.watch(jurisdictionsServiceProvider).listStates();
});

/// GET /programs?... — keyed by jurisdiction code (typically a state).
/// `keepAlive`: catalog browse rarely changes; keep so navigating to a
/// program detail and back doesn't refetch the catalog.
final programsListProvider =
    FutureProvider.family<List<Program>, String>((ref, jurisdictionCode) {
  if (jurisdictionCode.isEmpty) return Future.value(<Program>[]);
  ref.keepAlive();
  return ref.watch(programsServiceProvider).listPrograms(jurisdictionCode);
});

/// GET /programs/{slug}. `keepAlive`: program details are immutable for the
/// session — caching them avoids the back-and-forth refetch that was the
/// most visible perf cost on /explorer → /program/:slug → back.
final programDetailProvider =
    FutureProvider.family<ProgramDetail, String>((ref, slug) {
  ref.keepAlive();
  return ref.watch(programsServiceProvider).getProgram(slug);
});

/// GET /sessions/{id}/results.
final sessionResultsProvider =
    FutureProvider.family<SessionResults, String>((ref, sessionId) {
  return ref.watch(sessionsServiceProvider).getResults(sessionId);
});

/// GET /sessions/{id}/plan.
final sessionPlanProvider =
    FutureProvider.family<SessionPlan, String>((ref, sessionId) {
  return ref.watch(sessionsServiceProvider).getPlan(sessionId);
});

/// GET /admin/review-tasks. Pass an admin key via `family` if the server
/// has one configured (otherwise the empty string is fine).
final reviewTasksProvider =
    FutureProvider.family<List<ReviewTask>, String?>((ref, adminKey) {
  return ref
      .watch(adminServiceProvider)
      .listReviewTasks(adminKey: adminKey);
});

/// POST /explorer/search. Re-runs whenever the request body changes.
final explorerSearchProvider = FutureProvider.family<
    ExplorerSearchResponse, ExplorerSearchRequest>((ref, body) {
  return ref.watch(explorerServiceProvider).search(body);
});

// ============================================================================
// StreamProvider — chat SSE for a given turn.
// ============================================================================

/// Identity object for a single chat turn so the StreamProvider re-runs
/// when any of these change.
class ChatTurnRequest {
  const ChatTurnRequest({
    required this.sessionId,
    required this.userMessage,
    this.context,
    this.history = const <ChatMessage>[],
  });

  final String sessionId;
  final String userMessage;
  final ChatContext? context;
  final List<ChatMessage> history;

  @override
  bool operator ==(Object other) =>
      other is ChatTurnRequest &&
      other.sessionId == sessionId &&
      other.userMessage == userMessage &&
      identical(other.context, context) &&
      _listEquals(other.history, history);

  @override
  int get hashCode => Object.hash(sessionId, userMessage, context, history.length);
}

bool _listEquals(List<ChatMessage> a, List<ChatMessage> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

final chatStreamTurnProvider =
    StreamProvider.family<ChatStreamEvent, ChatTurnRequest>((ref, turn) {
  final stream = ref.watch(chatStreamProvider);
  return stream.connect(
    sessionId: turn.sessionId,
    userMessage: turn.userMessage,
    context: turn.context,
    history: turn.history,
  );
});
