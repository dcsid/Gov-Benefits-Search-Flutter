import 'package:dio/dio.dart';

/// In-memory, path-aware response cache for the Dio client.
///
/// Per-path TTLs are deliberately tight:
///   - `/programs/*`        — 5 min   (catalog is stable mid-session)
///   - `/jurisdictions/*`   — 1 hour  (states list barely changes)
///   - `/sessions/{id}/*`   — 1 min   (results/plan can flip after an answer)
///   - everything else      — no cache
///
/// `POST` /chat/stream and POST /help/stream are bypassed implicitly (cache
/// is GET-only). Callers can opt out per-request via `options.extra['nocache']
/// = true` (used by the screening controller after each /answers POST to
/// invalidate session caches).
class CacheInterceptor extends Interceptor {
  CacheInterceptor({DateTime Function()? now}) : _now = now ?? DateTime.now;

  final DateTime Function() _now;
  final Map<String, _Entry> _store = <String, _Entry>{};

  /// Returns the TTL for [path] or `null` if the path is not cacheable.
  Duration? ttlFor(String path) {
    if (path.startsWith('/programs')) return const Duration(minutes: 5);
    if (path.startsWith('/jurisdictions')) return const Duration(hours: 1);
    if (path.startsWith('/sessions/')) return const Duration(minutes: 1);
    return null;
  }

  /// Invalidate cache entries whose URL contains [pathFragment].
  void invalidate(String pathFragment) {
    _store.removeWhere((key, _) => key.contains(pathFragment));
  }

  /// Drop everything. Mainly useful in tests.
  void clear() => _store.clear();

  int get size => _store.length;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.method != 'GET') {
      handler.next(options);
      return;
    }
    if (options.extra['nocache'] == true) {
      handler.next(options);
      return;
    }
    final ttl = ttlFor(options.path);
    if (ttl == null) {
      handler.next(options);
      return;
    }
    final key = _keyFor(options);
    final cached = _store[key];
    if (cached != null && _now().isBefore(cached.expiresAt)) {
      handler.resolve(
        Response<dynamic>(
          requestOptions: options,
          data: cached.data,
          statusCode: cached.statusCode,
          statusMessage: cached.statusMessage,
          headers: cached.headers,
          extra: <String, dynamic>{...options.extra, '__cache_hit': true},
        ),
      );
      return;
    }
    options.extra['__cache_key'] = key;
    options.extra['__cache_ttl'] = ttl;
    handler.next(options);
  }

  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    final key = response.requestOptions.extra['__cache_key'] as String?;
    final ttl = response.requestOptions.extra['__cache_ttl'] as Duration?;
    final status = response.statusCode ?? 0;
    if (key != null && ttl != null && status >= 200 && status < 300) {
      _store[key] = _Entry(
        data: response.data,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        headers: response.headers,
        expiresAt: _now().add(ttl),
      );
    }
    handler.next(response);
  }

  String _keyFor(RequestOptions o) {
    final uri = o.uri;
    final params = <String, dynamic>{...uri.queryParameters};
    final sortedKeys = params.keys.toList()..sort();
    final canonicalQuery = sortedKeys
        .map((k) =>
            '${Uri.encodeQueryComponent(k)}=${Uri.encodeQueryComponent(params[k].toString())}')
        .join('&');
    return '${o.method} ${uri.scheme}://${uri.host}:${uri.port}${uri.path}?$canonicalQuery';
  }
}

class _Entry {
  _Entry({
    required this.data,
    required this.statusCode,
    required this.statusMessage,
    required this.headers,
    required this.expiresAt,
  });

  final Object? data;
  final int? statusCode;
  final String? statusMessage;
  final Headers headers;
  final DateTime expiresAt;
}
