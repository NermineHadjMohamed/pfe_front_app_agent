// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderProduction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderProductionImpl _$$OrderProductionImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderProductionImpl(
      id: json['_id'] as String,
      orderId: json['orderId'] as String,
      expectedFinishDate: DateTime.parse(json['expectedFinishDate'] as String),
      products: (json['products'] as List<dynamic>)
          .map((e) => OrderProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderProductionImplToJson(
        _$OrderProductionImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'orderId': instance.orderId,
      'expectedFinishDate': instance.expectedFinishDate.toIso8601String(),
      'products': instance.products,
    };

_$OrderProductImpl _$$OrderProductImplFromJson(Map<String, dynamic> json) =>
    _$OrderProductImpl(
      productId: json['productId'] as String,
      quantity: (json['quantity'] as num).toInt(),
      expectedFinishDate: DateTime.parse(json['expectedFinishDate'] as String),
      selectedNfcTags: (json['selectedNfcTags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      roles: (json['roles'] as List<dynamic>)
          .map((e) => RoleDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderProductImplToJson(_$OrderProductImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
      'expectedFinishDate': instance.expectedFinishDate.toIso8601String(),
      'selectedNfcTags': instance.selectedNfcTags,
      'roles': instance.roles,
    };

_$RoleDetailsImpl _$$RoleDetailsImplFromJson(Map<String, dynamic> json) =>
    _$RoleDetailsImpl(
      roleId: json['roleId'] as String,
      agents:
          (json['agents'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$RoleDetailsImplToJson(_$RoleDetailsImpl instance) =>
    <String, dynamic>{
      'roleId': instance.roleId,
      'agents': instance.agents,
    };
