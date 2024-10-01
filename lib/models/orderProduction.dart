import 'package:freezed_annotation/freezed_annotation.dart';
import 'product.dart';  // Import the Product model
import 'role.dart';     // Import the Role model
import 'nfc_tag.dart';  // Import the NFC Tag model (if you have one)

part 'orderProduction.freezed.dart';
part 'orderProduction.g.dart';

@freezed
abstract class OrderProduction with _$OrderProduction {
  factory OrderProduction({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'orderId') required String orderId,
    @JsonKey(name: 'expectedFinishDate') required DateTime expectedFinishDate,
    @JsonKey(name: 'products') required List<OrderProduct> products, // List of OrderProduct
  }) = _OrderProduction;

  factory OrderProduction.fromJson(Map<String, dynamic> json) => _$OrderProductionFromJson(json);
}

// This represents an individual product within an order production
@freezed
abstract class OrderProduct with _$OrderProduct {
  factory OrderProduct({
    @JsonKey(name: 'productId') required String productId,
    @JsonKey(name: 'quantity') required int quantity,
    @JsonKey(name: 'expectedFinishDate') required DateTime expectedFinishDate,
    @JsonKey(name: 'selectedNfcTags') List<String>? selectedNfcTags, // List of NFC Tag IDs
    @JsonKey(name: 'roles') required List<RoleDetails> roles, // List of RoleDetails
  }) = _OrderProduct;

  factory OrderProduct.fromJson(Map<String, dynamic> json) => _$OrderProductFromJson(json);
}

// This class represents the role details associated with the product in the order
@freezed
abstract class RoleDetails with _$RoleDetails {
  factory RoleDetails({
    @JsonKey(name: 'roleId') required String roleId,
    @JsonKey(name: 'agents') List<String>? agents, // List of Agent IDs
  }) = _RoleDetails;

  factory RoleDetails.fromJson(Map<String, dynamic> json) => _$RoleDetailsFromJson(json);
}
