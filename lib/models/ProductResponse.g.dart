// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProductResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => OrderProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductResponseImplToJson(
        _$ProductResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$OrderProductImpl _$$OrderProductImplFromJson(Map<String, dynamic> json) =>
    _$OrderProductImpl(
      orderId: json['orderId'] as String,
      productDetails:
          Product.fromJson(json['productDetails'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num).toInt(),
      expectedFinishDate: json['expectedFinishDate'] as String?,
      parameters: (json['parameters'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      roles: (json['roles'] as List<dynamic>)
          .map((e) => Role.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderProductImplToJson(_$OrderProductImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'productDetails': instance.productDetails,
      'quantity': instance.quantity,
      'expectedFinishDate': instance.expectedFinishDate,
      'parameters': instance.parameters,
      'roles': instance.roles,
    };
