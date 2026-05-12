import 'dart:async';

import 'package:dio/dio.dart';

/// Collapses concurrent identical GET requests onto a single network call.
///
/// First-paint flows commonly fire the same `/jurisdictions/states` or
/// `/programs?...` query from two different Riverpod providers
/// simultaneously. Without dedup we see N duplicate sockets in flight; with
/// it, the second-and-onward callers attach to the first inflight `Future`
/// and synthesize a `Response` from its result.
///
/// Order: install this AFTER the cache interceptor. A cache hit short-
/// circuits before dedup sees it; only true network-bound requests reach
/// here.
class DedupInterceptor extends Interceptor {
  DedupInterceptor();

  final Map<String, Completer<Response<dynamic>>> _inflight =
      <String, Completer<Response<dynamic>>>{};

  /// Number of duplicates resolved from an inflight peer in the lifetime of
  /// this interceptor. Exposed for tests and for the `<X> → <Y>` callout in
  /// the perf commit message.
  int get coalescedCount => _coalesced;
  int _coalesced = 0;

  /// Number of distinct in-flight requests right now.
  int get inflightCount => _inflight.length;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.method != 'GET') {
      handler.next(options);
      return;
    }
    if (options.extra['nodedup'] == true) {
      handler.next(options);
      return;
    }
    final key = _keyFor(options);
    final existing = _inflight[key];
    if (existing != null) {
      _coalesced += 1;
      existing.future.then(
        (response) {
          handler.resolve(
            Response<dynamic>(
              requestOptions: options,
              data: response.data,
              statusCode: response.statusCode,
              statusMessage: response.statusMessage,
              headers: response.headers,
              extra: <String, dynamic>{
                ...response.extra,
                '__dedup_hit': true,
              },
              isRedirect: response.isRedirect,
            ),
          );
        },
        onError: (Object err, StackTrace st) {
          if (err is DioException) {
            handler.reject(err);
          } else {
            handler.reject(
              DioException(
                requestOptions: options,
                error: err,
                stackTrace: st,
                type: DioExceptionType.unknown,
              ),
            );
          }
        },
      );
      return;
    }
    final completer = Completer<Response<dynamic>>();
    _inflight[key] = completer;
    options.extra['__dedup_key'] = key;
    handler.next(options);
  }

  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    final key = response.requestOptions.extra['__dedup_key'] as String?;
    if (key != null) {
      final c = _inflight.remove(key);
      if (c != null && !c.isCompleted) c.complete(response);
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final key = err.requestOptions.extra['__dedup_key'] as String?;
    if (key != null) {
      final c = _inflight.remove(key);
      if (c != null && !c.isCompleted) c.completeError(err);
    }
    handler.next(err);
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
