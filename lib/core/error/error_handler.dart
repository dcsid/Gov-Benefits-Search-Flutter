import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

import '../../l10n/app_localizations.dart';
import '../../widgets/ui/bd_toast.dart';
import '../api/api_exception.dart';

/// Maps a thrown error from the API layer to a friendly, localized message and
/// shows it via [showBdToast]. Logs the technical detail to debugPrint for
/// developers.
///
/// Use everywhere a `.when(error: ...)` or `catch (e)` site would otherwise
/// surface a raw `HttpException(422)` / `DioException(...)` string to the user.
void showApiError(BuildContext context, Object error, {StackTrace? stackTrace}) {
  final l10n = AppLocalizations.of(context);
  final message = _resolveMessage(error, l10n);

  debugPrint('[showApiError] ${error.runtimeType}: $error');
  if (stackTrace != null) debugPrint(stackTrace.toString());

  showBdToast(
    context,
    message,
    title: _resolveTitle(error, l10n),
    variant: BdToastVariant.destructive,
  );
}

String _resolveTitle(Object error, AppLocalizations? l10n) {
  if (l10n != null) return l10n.errors_genericTitle;
  return 'Something went wrong';
}

String _resolveMessage(Object error, AppLocalizations? l10n) {
  // Unwrap DioException -> the mapped ApiException attached as `error`.
  if (error is DioException && error.error is ApiException) {
    return _resolveMessage(error.error as ApiException, l10n);
  }
  if (error is DioException) {
    return _network(l10n);
  }
  if (error is NetworkException) return _network(l10n);
  if (error is TimeoutException) return _timeout(l10n);
  if (error is HttpException) {
    final code = error.statusCode;
    if (code == 422) return _validation(l10n);
    if (code == 429) return _rateLimited(l10n);
    if (code == 401 || code == 403) return _auth(l10n);
    if (code == 404) return _notFound(l10n);
    if (code >= 500) return _server(l10n);
    return _generic(l10n);
  }
  if (error is UnknownApiException) return _generic(l10n);
  return _generic(l10n);
}

String _validation(AppLocalizations? l) =>
    l?.errors_validation ??
    "Couldn't process that request — please refresh and try again.";

String _rateLimited(AppLocalizations? l) =>
    l?.errors_rateLimited ??
    'Too many requests. Please wait a minute and try again.';

String _server(AppLocalizations? l) =>
    l?.errors_server ??
    'Our service is having trouble. Please try again later.';

String _network(AppLocalizations? l) =>
    l?.errors_network ??
    "Couldn't reach the server. Check your connection.";

String _timeout(AppLocalizations? l) =>
    l?.errors_timeout ?? 'The request timed out. Please try again.';

String _auth(AppLocalizations? l) =>
    l?.errors_auth ?? 'You need to sign in to do that.';

String _notFound(AppLocalizations? l) =>
    l?.errors_notFound ?? "We couldn't find what you were looking for.";

String _generic(AppLocalizations? l) =>
    l?.errors_generic ?? 'Something went wrong. Please try again.';
