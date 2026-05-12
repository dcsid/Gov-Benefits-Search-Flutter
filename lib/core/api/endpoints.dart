class Endpoints {
  const Endpoints._();

  static const String health = '/health';
  static const String states = '/jurisdictions/states';
  static const String explorerSearch = '/explorer/search';
  static const String intakeInterpret = '/intake/interpret';
  static const String intakeProbe = '/intake/probe';
  static const String sessions = '/sessions';
  static const String adminReviewTasks = '/admin/review-tasks';
  static const String adminSync = '/admin/sync';
  static const String chatStream = '/chat/stream';
  static const String helpStream = '/help/stream';
  static const String llmComplete = '/llm/complete';

  static String programs(String jurisdictionCode) =>
      '/programs?jurisdiction_code=${Uri.encodeComponent(jurisdictionCode)}';

  static String programDetail(String slug) =>
      '/programs/${Uri.encodeComponent(slug)}';

  static String sessionAnswers(String sessionId) =>
      '/sessions/${Uri.encodeComponent(sessionId)}/answers';

  static String sessionResults(String sessionId) =>
      '/sessions/${Uri.encodeComponent(sessionId)}/results';

  static String sessionPlan(String sessionId) =>
      '/sessions/${Uri.encodeComponent(sessionId)}/plan';

  static String sessionCompare(String sessionId) =>
      '/sessions/${Uri.encodeComponent(sessionId)}/compare';
}
