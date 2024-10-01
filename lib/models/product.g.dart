// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['_id'] as String,
      productName: json['product_name'] as String,
      description: json['description'] as String?,
      image: json['image'] as String,
      document: json['document'] as String?,
      parameterTypes: json['parameter_types'] as String?,
      productPrice: (json['product_price'] as num).toDouble(),
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      parameters: (json['parameters'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'product_name': instance.productName,
      'description': instance.description,
      'image': instance.image,
      'document': instance.document,
      'parameter_types': instance.parameterTypes,
      'product_price': instance.productPrice,
      'roles': instance.roles,
      'parameters': instance.parameters,
    };
