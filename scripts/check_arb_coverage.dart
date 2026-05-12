/// Asserts every translation ARB has the same set of non-@ keys as
/// app_en.arb. Run via `dart run scripts/check_arb_coverage.dart`.
///
/// Exits non-zero on missing/extra keys, missing ICU placeholders, or empty
/// values — wire it into CI to catch translation drift.
library;

import 'dart:convert';
import 'dart:io';

const String _arbDir = 'lib/l10n';
const String _templateLocale = 'en';
const List<String> _expectedLocales = <String>[
  'en',
  'es',
  'zh',
  'vi',
  'ko',
  'ru',
  'ar',
];

final RegExp _placeholder = RegExp(r'\{([A-Za-z_][A-Za-z0-9_]*)\}');

void main(List<String> args) {
  final templatePath = '$_arbDir/app_$_templateLocale.arb';
  final templateMap = _readArb(templatePath);
  final templateKeys = templateMap.keys
      .where((k) => !k.startsWith('@'))
      .toSet();

  final templatePlaceholders = <String, Set<String>>{
    for (final k in templateKeys)
      k: _placeholder
          .allMatches(templateMap[k] as String? ?? '')
          .map((m) => m.group(1)!)
          .toSet(),
  };

  var failures = 0;

  for (final locale in _expectedLocales) {
    final path = '$_arbDir/app_$locale.arb';
    final file = File(path);
    if (!file.existsSync()) {
      stdout.writeln('[$locale] MISSING file $path');
      failures++;
      continue;
    }
    final map = _readArb(path);
    final keys = map.keys.where((k) => !k.startsWith('@')).toSet();

    final missing = templateKeys.difference(keys);
    final extra = keys.difference(templateKeys);
    if (missing.isNotEmpty) {
      stdout.writeln(
        '[$locale] MISSING ${missing.length} key(s): '
        '${missing.take(5).join(", ")}',
      );
      failures++;
    }
    if (extra.isNotEmpty) {
      stdout.writeln(
        '[$locale] EXTRA ${extra.length} key(s): '
        '${extra.take(5).join(", ")}',
      );
      failures++;
    }

    var emptyCount = 0;
    var placeholderMismatches = 0;
    for (final k in keys.intersection(templateKeys)) {
      final v = map[k];
      if (v is! String || v.trim().isEmpty) {
        emptyCount++;
        continue;
      }
      final ph = _placeholder.allMatches(v).map((m) => m.group(1)!).toSet();
      if (ph.length != templatePlaceholders[k]!.length ||
          !ph.containsAll(templatePlaceholders[k]!)) {
        placeholderMismatches++;
        if (placeholderMismatches <= 3) {
          stdout.writeln(
            '[$locale] placeholder mismatch on "$k": '
            'expected ${templatePlaceholders[k]}, got $ph',
          );
        }
      }
    }
    if (emptyCount > 0) {
      stdout.writeln('[$locale] EMPTY values: $emptyCount');
      failures++;
    }
    if (placeholderMismatches > 0) {
      stdout.writeln(
        '[$locale] placeholder mismatches: $placeholderMismatches',
      );
      failures++;
    }

    stdout.writeln(
      '[$locale] OK — ${keys.length} keys, '
      '${emptyCount == 0 && placeholderMismatches == 0 ? "clean" : "see above"}',
    );
  }

  if (failures > 0) {
    stdout.writeln('FAIL: $failures coverage problem(s)');
    exit(1);
  }
  stdout.writeln('PASS: every locale matches app_$_templateLocale.arb');
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}
