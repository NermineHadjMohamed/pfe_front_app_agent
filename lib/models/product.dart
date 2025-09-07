import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  factory Product({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'product_name') required String productName, 
    @JsonKey(name: 'description') String? description,          
    @JsonKey(name: 'image') required String image,              
    @JsonKey(name: 'document') String? document,              
    @JsonKey(name: 'parameter_types') String? parameterTypes,  
    @JsonKey(name: 'product_price') required double productPrice, 
    @JsonKey(name: 'roles') List<String>? roles,               
    @JsonKey(name: 'parameters') List<String>? parameters,     
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
