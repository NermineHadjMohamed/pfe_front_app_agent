import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  factory Product({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'product_name') required String productName, // Name of the product
    @JsonKey(name: 'description') String? description,          // Description of the product (nullable)
    @JsonKey(name: 'image') required String image,              // Image URL
    @JsonKey(name: 'document') String? document,               // Document URL (nullable)
    @JsonKey(name: 'parameter_types') String? parameterTypes,   // Parameter types (nullable)
    @JsonKey(name: 'product_price') required double productPrice, // Product price
    @JsonKey(name: 'roles') List<String>? roles,               // List of role IDs associated with the product
    @JsonKey(name: 'parameters') List<String>? parameters,     // List of parameter IDs associated with the product
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
