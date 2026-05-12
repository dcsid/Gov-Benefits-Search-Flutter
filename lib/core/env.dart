class Env {
  const Env._();

  static const String apiBase = String.fromEnvironment(
    'API_BASE',
    defaultValue: 'http://localhost:8000/api/v1',
  );

  static const String appName = String.fromEnvironment(
    'APP_NAME',
    defaultValue: 'Benefits Digger',
  );

  static const bool enableDevtools = bool.fromEnvironment(
    'ENABLE_DEVTOOLS',
    defaultValue: false,
  );

  static const bool useMocks = bool.fromEnvironment(
    'USE_MOCKS',
    defaultValue: false,
  );
}
