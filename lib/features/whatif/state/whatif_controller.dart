import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/api/models/session.dart';
import '../../../core/api/providers.dart';

class ScenarioRow {
  ScenarioRow({
    required this.id,
    this.questionKey = '',
    this.type = 'string',
    this.value = '',
  });

  final String id;
  String questionKey;
  String type;
  String value;
}

class WhatIfState {
  const WhatIfState({
    required this.label,
    required this.rows,
    required this.isSubmitting,
    this.compare,
    this.error,
  });

  factory WhatIfState.initial() =>
      const WhatIfState(label: 'Two more dependents', rows: [], isSubmitting: false);

  final String label;
  final List<ScenarioRow> rows;
  final bool isSubmitting;
  final SessionCompare? compare;
  final String? error;

  WhatIfState copyWith({
    String? label,
    List<ScenarioRow>? rows,
    bool? isSubmitting,
    SessionCompare? compare,
    bool clearCompare = false,
    String? error,
    bool clearError = false,
  }) {
    return WhatIfState(
      label: label ?? this.label,
      rows: rows ?? this.rows,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      compare: clearCompare ? null : (compare ?? this.compare),
      error: clearError ? null : (error ?? this.error),
    );
  }
}

class WhatIfController extends Notifier<WhatIfState> {
  int _seq = 0;

  @override
  WhatIfState build() => WhatIfState.initial();

  void setLabel(String value) => state = state.copyWith(label: value);

  void addRow() {
    final next = List<ScenarioRow>.from(state.rows)
      ..add(
        ScenarioRow(
          id: 'r-${DateTime.now().microsecondsSinceEpoch}',
        ),
      );
    state = state.copyWith(rows: next);
  }

  void removeRow(String id) {
    state = state.copyWith(
      rows: state.rows.where((r) => r.id != id).toList(),
    );
  }

  void updateRow(
    String id, {
    String? questionKey,
    String? type,
    String? value,
  }) {
    final next = state.rows.map((row) {
      if (row.id != id) return row;
      return ScenarioRow(
        id: row.id,
        questionKey: questionKey ?? row.questionKey,
        type: type ?? row.type,
        value: value ?? row.value,
      );
    }).toList();
    state = state.copyWith(rows: next);
  }

  void applyPreset(String label, List<ScenarioRow> rows) {
    state = state.copyWith(label: label, rows: rows);
  }

  Future<void> submit(String sessionId) async {
    final seq = ++_seq;
    final answers = <String, dynamic>{};
    for (final r in state.rows) {
      final key = r.questionKey.trim();
      if (key.isEmpty) continue;
      answers[key] = _coerce(r.type, r.value);
    }
    state = state.copyWith(
      isSubmitting: true,
      clearError: true,
      clearCompare: true,
    );
    try {
      final res = await ref.read(sessionsServiceProvider).compare(
            sessionId,
            CompareRequest(
              scenarios: <CompareScenarioInput>[
                CompareScenarioInput(
                  name: state.label.isEmpty ? 'What-if scenario' : state.label,
                  answers: answers,
                ),
              ],
            ),
          );
      if (seq != _seq) return;
      state = state.copyWith(isSubmitting: false, compare: res);
    } catch (err) {
      if (seq != _seq) return;
      state = state.copyWith(isSubmitting: false, error: err.toString());
    }
  }
}

Object? _coerce(String type, String value) {
  switch (type) {
    case 'number':
      return num.tryParse(value) ?? value;
    case 'boolean':
      return value.toLowerCase() == 'true';
    case 'date':
    case 'string':
    default:
      return value;
  }
}

final whatIfControllerProvider =
    NotifierProvider<WhatIfController, WhatIfState>(WhatIfController.new);
