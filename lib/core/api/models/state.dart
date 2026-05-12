import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';
part 'state.g.dart';

// note: Python `list_states` only returns {code, name}; the TS stub had an
// optional `abbreviation` field that the live API does not emit.
@freezed
class StateInfo with _$StateInfo {
  const factory StateInfo({
    required String code,
    required String name,
  }) = _StateInfo;

  factory StateInfo.fromJson(Map<String, dynamic> json) =>
      _$StateInfoFromJson(json);
}
