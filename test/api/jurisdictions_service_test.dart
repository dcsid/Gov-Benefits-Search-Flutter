import 'package:benefits_digger/core/api/services/jurisdictions_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockDio extends Mock implements Dio {}

void main() {
  test('listStates parses an array of {code,name}', () async {
    final dio = _MockDio();
    when(() => dio.get<Object?>('/jurisdictions/states')).thenAnswer(
      (_) async => Response<Object?>(
        requestOptions: RequestOptions(path: '/jurisdictions/states'),
        statusCode: 200,
        data: <Map<String, dynamic>>[
          <String, dynamic>{'code': 'NY', 'name': 'New York'},
          <String, dynamic>{'code': 'CA', 'name': 'California'},
        ],
      ),
    );
    final out = await JurisdictionsService(dio).listStates();
    expect(out, hasLength(2));
    expect(out.first.code, 'NY');
    expect(out.last.name, 'California');
  });
}
