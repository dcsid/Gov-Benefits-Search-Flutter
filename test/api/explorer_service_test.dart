import 'package:benefits_digger/core/api/models/explorer.dart';
import 'package:benefits_digger/core/api/services/explorer_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockDio extends Mock implements Dio {}

void main() {
  test('search posts request body and parses ExplorerSearchResponse',
      () async {
    final dio = _MockDio();
    when(() => dio.post<Object?>('/explorer/search',
            data: any(named: 'data'))).thenAnswer(
      (_) async => Response<Object?>(
        requestOptions: RequestOptions(path: '/explorer/search'),
        statusCode: 200,
        data: <String, dynamic>{
          'mode': 'hybrid',
          'interpretation': <String, dynamic>{'method': 'heuristic'},
          'programs': <Map<String, dynamic>>[
            <String, dynamic>{
              'slug': 'snap',
              'name': 'SNAP',
              'data_gathered_from': <Map<String, dynamic>>[],
              'match_reasons': <String>['food'],
              'search_score': 5,
            },
          ],
        },
      ),
    );
    final out = await ExplorerService(dio).search(
      const ExplorerSearchRequest(query: 'food', stateCode: 'NY'),
    );
    expect(out.mode, 'hybrid');
    expect(out.programs.single.searchScore, 5);

    final captured = verify(
      () => dio.post<Object?>('/explorer/search', data: captureAny(named: 'data')),
    ).captured.single as Map<String, dynamic>;
    expect(captured['query'], 'food');
    expect(captured['state_code'], 'NY');
  });
}
