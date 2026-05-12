// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthCheckImpl _$$HealthCheckImplFromJson(Map<String, dynamic> json) =>
    _$HealthCheckImpl(
      status: json['status'] as String,
      db: json['db'] as String,
      llm: json['llm'] as String,
    );

Map<String, dynamic> _$$HealthCheckImplToJson(_$HealthCheckImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'db': instance.db,
      'llm': instance.llm,
    };
