import 'package:benefits_digger/core/api/interceptors/cache_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockAdapter extends Mock implements HttpClientAdapter {}

void main() {
  setUpAll(() {
    registerFallbackValue(RequestOptions(path: '/'));
  });

  test('TTL table: programs=5m, jurisdictions=1h, sessions=1m, else=null', () {
    final c = CacheInterceptor();
    expect(c.ttlFor('/programs?state_code=CA'), const Duration(minutes: 5));
    expect(c.ttlFor('/programs/snap'), const Duration(minutes: 5));
    expect(c.ttlFor('/jurisdictions/states'), const Duration(hours: 1));
    expect(c.ttlFor('/sessions/abc/results'), const Duration(minutes: 1));
    expect(c.ttlFor('/sessions/abc/plan'), const Duration(minutes: 1));
    expect(c.ttlFor('/health'), isNull);
    expect(c.ttlFor('/chat/stream'), isNull);
    expect(c.ttlFor('/help/stream'), isNull);
    expect(c.ttlFor('/explorer/search'), isNull);
    expect(c.ttlFor('/llm/complete'), isNull);
  });

  test('GET cache hit on second call within TTL', () async {
    final dio = Dio(BaseOptions(baseUrl: 'https://example.test/api/v1'));
    final cache = CacheInterceptor();
    dio.interceptors.add(cache);

    final adapter = _MockAdapter();
    dio.httpClientAdapter = adapter;

    var calls = 0;
    when(() => adapter.fetch(any(), any(), any())).thenAnswer((_) async {
      calls += 1;
      return ResponseBody.fromString(
        '[{"code":"CA"}]',
        200,
        headers: <String, List<String>>{
          'content-type': <String>['application/json'],
        },
      );
    });

    final first = await dio.get<List<dynamic>>('/jurisdictions/states');
    final second = await dio.get<List<dynamic>>('/jurisdictions/states');

    expect(calls, 1, reason: 'second GET should hit the cache');
    expect(first.statusCode, 200);
    expect(second.extra['__cache_hit'], isTrue);
    expect(second.data, first.data);
    expect(cache.size, 1);
  });

  test('invalidate(pathFragment) drops matching entries', () async {
    final dio = Dio(BaseOptions(baseUrl: 'https://example.test/api/v1'));
    final cache = CacheInterceptor();
    dio.interceptors.add(cache);

    final adapter = _MockAdapter();
    dio.httpClientAdapter = adapter;
    var calls = 0;
    when(() => adapter.fetch(any(), any(), any())).thenAnswer((_) async {
      calls += 1;
      return ResponseBody.fromString('{}', 200);
    });

    await dio.get<Object?>('/sessions/abc/results');
    expect(cache.size, 1);
    cache.invalidate('/sessions/abc');
    expect(cache.size, 0);
    await dio.get<Object?>('/sessions/abc/results');
    expect(calls, 2);
  });

  test('non-cacheable paths bypass cache', () async {
    final dio = Dio(BaseOptions(baseUrl: 'https://example.test/api/v1'));
    dio.interceptors.add(CacheInterceptor());

    final adapter = _MockAdapter();
    dio.httpClientAdapter = adapter;
    var calls = 0;
    when(() => adapter.fetch(any(), any(), any())).thenAnswer((_) async {
      calls += 1;
      return ResponseBody.fromString('{}', 200);
    });

    await dio.get<Object?>('/health');
    await dio.get<Object?>('/health');
    expect(calls, 2, reason: '/health is not cacheable');
  });

  test('nocache extra opts out of cache', () async {
    final dio = Dio(BaseOptions(baseUrl: 'https://example.test/api/v1'));
    final cache = CacheInterceptor();
    dio.interceptors.add(cache);

    final adapter = _MockAdapter();
    dio.httpClientAdapter = adapter;
    var calls = 0;
    when(() => adapter.fetch(any(), any(), any())).thenAnswer((_) async {
      calls += 1;
      return ResponseBody.fromString('{}', 200);
    });

    final opts = Options(extra: <String, dynamic>{'nocache': true});
    await dio.get<Object?>('/jurisdictions/states', options: opts);
    await dio.get<Object?>('/jurisdictions/states', options: opts);
    expect(calls, 2);
    expect(cache.size, 0);
  });
}
