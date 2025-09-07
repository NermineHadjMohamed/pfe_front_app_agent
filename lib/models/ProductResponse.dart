import 'package:freezed_annotation/freezed_annotation.dart';
import 'product.dart';
import 'parameter.dart';
import 'role.dart';

part 'ProductResponse.freezed.dart'; 
part 'ProductResponse.g.dart'; 


@freezed
abstract class ProductResponse with _$ProductResponse {
  factory ProductResponse({
    required bool success, 
    required List<OrderProduct>
        data, 
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}


@freezed
abstract class OrderProduct with _$OrderProduct {
  factory OrderProduct({
    required String orderId, 
    required Product productDetails, 
    required int quantity, 
    String? expectedFinishDate, 
    required List<Parameter> parameters, 
    required List<Role> roles, 
  }) = _OrderProduct;

  factory OrderProduct.fromJson(Map<String, dynamic> json) =>
      _$OrderProductFromJson(json);
}
