import 'package:freezed_annotation/freezed_annotation.dart';
import 'product.dart';
import 'parameter.dart';
import 'role.dart';

part 'ProductResponse.freezed.dart'; // Ensure proper case sensitivity
part 'ProductResponse.g.dart'; // For JSON serialization

// Define the complete response structure
@freezed
abstract class ProductResponse with _$ProductResponse {
  factory ProductResponse({
    required bool success, // Indicates if the API call was successful
    required List<OrderProduct>
        data, // List of products and associated order information
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

// Define the structure of products within the order
@freezed
abstract class OrderProduct with _$OrderProduct {
  factory OrderProduct({
    required String orderId, // Order ID
    required Product productDetails, // Use the detailed Product model
    required int quantity, // Quantity of the product
    String? expectedFinishDate, // Expected finish date for the product
    required List<Parameter> parameters, // List of product parameters
    required List<Role> roles, // List of roles associated with the product
  }) = _OrderProduct;

  factory OrderProduct.fromJson(Map<String, dynamic> json) =>
      _$OrderProductFromJson(json);
}
