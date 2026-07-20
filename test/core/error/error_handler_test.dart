import 'package:benefits_digger/core/api/api_exception.dart';
import 'package:benefits_digger/core/error/error_handler.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget harness({required Object error}) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en')],
      home: Scaffold(
        body: Builder(
          builder: (context) => ElevatedButton(
            onPressed: () => showApiError(context, error),
            child: const Text('go'),
          ),
        ),
      ),
    );
  }

  testWidgets('422 HttpException renders the validation copy', (tester) async {
    await tester.pumpWidget(
      harness(
        error: const HttpException(statusCode: 422, message: 'unprocessable'),
      ),
    );
    await tester.tap(find.text('go'));
    await tester.pump();

    expect(
      find.textContaining("Couldn't process that request"),
      findsOneWidget,
    );
  });

  testWidgets('429 renders rate-limited copy', (tester) async {
    await tester.pumpWidget(
      harness(error: const HttpException(statusCode: 429, message: 'too many')),
    );
    await tester.tap(find.text('go'));
    await tester.pump();
    expect(find.textContaining('Too many requests'), findsOneWidget);
  });

  testWidgets('5xx renders server copy', (tester) async {
    await tester.pumpWidget(
      harness(error: const HttpException(statusCode: 503, message: 'down')),
    );
    await tester.tap(find.text('go'));
    await tester.pump();
    expect(
      find.textContaining('Our service is having trouble'),
      findsOneWidget,
    );
  });

  testWidgets('NetworkException renders offline copy', (tester) async {
    await tester.pumpWidget(harness(error: const NetworkException()));
    await tester.tap(find.text('go'));
    await tester.pump();
    expect(find.textContaining("Couldn't reach the server"), findsOneWidget);
  });

  testWidgets('TimeoutException renders timeout copy', (tester) async {
    await tester.pumpWidget(harness(error: const TimeoutException()));
    await tester.tap(find.text('go'));
    await tester.pump();
    expect(find.textContaining('timed out'), findsOneWidget);
  });

  testWidgets('DioException with NetworkException attached unwraps', (
    tester,
  ) async {
    final dioErr = DioException(
      requestOptions: RequestOptions(path: '/x'),
      error: const NetworkException(),
      type: DioExceptionType.connectionError,
    );
    await tester.pumpWidget(harness(error: dioErr));
    await tester.tap(find.text('go'));
    await tester.pump();
    expect(find.textContaining("Couldn't reach the server"), findsOneWidget);
  });
}
