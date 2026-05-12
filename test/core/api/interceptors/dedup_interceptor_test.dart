import 'dart:async';

import 'package:benefits_digger/core/api/interceptors/dedup_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockAdapter extends Mock implements HttpClientAdapter {}

void main() {
  setUpAll(() {
    registerFallbackValue(RequestOptions(path: '/'));
  });

  test(
    'two simultaneous identical GETs result in ONE adapter call '
    '(dedup coalesces the second)',
    () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://example.test/api/v1'));
      final dedup = DedupInterceptor();
      dio.interceptors.add(dedup);

      final adapter = _MockAdapter();
      dio.httpClientAdapter = adapter;

      // Single deferred response — completes after both requests have
      // already entered the interceptor stack.
      final responseGate = Completer<ResponseBody>();
      var adapterCalls = 0;
      when(() => adapter.fetch(any(), any(), any())).thenAnswer((_) async {
        adapterCalls += 1;
        return responseGate.future;
      });

      final f1 = dio.get<List<dynamic>>('/jurisdictions/states');
      final f2 = dio.get<List<dynamic>>('/jurisdictions/states');

      // Let both requests propagate through the interceptor chain.
      await Future<void>.delayed(Duration.zero);

      // Release the network: a single mocked response.
      responseGate.complete(
        ResponseBody.fromString(
          '[{"code":"CA","name":"California"}]',
          200,
          headers: <String, List<String>>{
            'content-type': <String>['application/json'],
          },
        ),
      );

      final r1 = await f1;
      final r2 = await f2;

      expect(adapterCalls, 1,
          reason: 'only one network call should have reached the adapter');
      expect(dedup.coalescedCount, 1,
          reason: 'the second request should have coalesced onto the first');
      expect(dedup.inflightCount, 0,
          reason: 'inflight should be drained after both complete');
      expect(r1.statusCode, 200);
      expect(r2.statusCode, 200);
      expect(r1.data, r2.data);
      // The second response is marked as a dedup hit; the first is the
      // canonical one.
      expect(r2.extra['__dedup_hit'], isTrue);
    },
  );

  test('different query params do NOT dedup', () async {
    final dio = Dio(BaseOptions(baseUrl: 'https://example.test/api/v1'));
    final dedup = DedupInterceptor();
    dio.interceptors.add(dedup);

    final adapter = _MockAdapter();
    dio.httpClientAdapter = adapter;

    final gates = <Completer<ResponseBody>>[
      Completer<ResponseBody>(),
      Completer<ResponseBody>(),
    ];
    var calls = 0;
    when(() => adapter.fetch(any(), any(), any())).thenAnswer((_) async {
      final body = await gates[calls].future;
      calls += 1;
      return body;
    });

    final f1 = dio.get<Object?>('/programs?state_code=CA');
    final f2 = dio.get<Object?>('/programs?state_code=TX');

    await Future<void>.delayed(Duration.zero);
    gates[0].complete(ResponseBody.fromString('[]', 200));
    gates[1].complete(ResponseBody.fromString('[]', 200));

    await f1;
    await f2;

    expect(calls, 2);
    expect(dedup.coalescedCount, 0);
  });

  test('POST requests are NOT deduped', () async {
    final dio = Dio(BaseOptions(baseUrl: 'https://example.test/api/v1'));
    dio.interceptors.add(DedupInterceptor());

    final adapter = _MockAdapter();
    dio.httpClientAdapter = adapter;

    var calls = 0;
    when(() => adapter.fetch(any(), any(), any())).thenAnswer((_) async {
      calls += 1;
      return ResponseBody.fromString('{}', 200);
    });

    await Future.wait(<Future<dynamic>>[
      dio.post<Object?>('/explorer/search', data: {'q': 'snap'}),
      dio.post<Object?>('/explorer/search', data: {'q': 'snap'}),
    ]);

    expect(calls, 2, reason: 'POSTs are not deduped — they may have side effects');
  });
}
