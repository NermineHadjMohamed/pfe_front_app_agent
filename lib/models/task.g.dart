// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['_id'] as String,
      productId: json['productId'] as String,
      roleId: json['roleId'] as String,
      agentId: json['agentId'] as String,
      status: json['status'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      finishTime: json['finishTime'] == null
          ? null
          : DateTime.parse(json['finishTime'] as String),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'productId': instance.productId,
      'roleId': instance.roleId,
      'agentId': instance.agentId,
      'status': instance.status,
      'startTime': instance.startTime.toIso8601String(),
      'finishTime': instance.finishTime?.toIso8601String(),
    };
