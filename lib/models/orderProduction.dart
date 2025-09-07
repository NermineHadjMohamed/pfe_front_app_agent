import 'package:freezed_annotation/freezed_annotation.dart';
import 'product.dart';  
import 'role.dart';     
import 'nfc_tag.dart';  

part 'orderProduction.freezed.dart';
part 'orderProduction.g.dart';

@freezed
abstract class OrderProduction with _$OrderProduction {
  factory OrderProduction({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'orderId') required String orderId,
    @JsonKey(name: 'expectedFinishDate') required DateTime expectedFinishDate,
    @JsonKey(name: 'products') required List<OrderProduct> products, 
  }) = _OrderProduction;

  factory OrderProduction.fromJson(Map<String, dynamic> json) => _$OrderProductionFromJson(json);
}


@freezed
abstract class OrderProduct with _$OrderProduct {
  factory OrderProduct({
    @JsonKey(name: 'productId') required String productId,
    @JsonKey(name: 'quantity') required int quantity,
    @JsonKey(name: 'expectedFinishDate') required DateTime expectedFinishDate,
    @JsonKey(name: 'selectedNfcTags') List<String>? selectedNfcTags, 
    @JsonKey(name: 'roles') required List<RoleDetails> roles, 
  }) = _OrderProduct;

  factory OrderProduct.fromJson(Map<String, dynamic> json) => _$OrderProductFromJson(json);
}


@freezed
abstract class RoleDetails with _$RoleDetails {
  factory RoleDetails({
    @JsonKey(name: 'roleId') required String roleId,
    @JsonKey(name: 'agents') List<String>? agents, 
  }) = _RoleDetails;

  factory RoleDetails.fromJson(Map<String, dynamic> json) => _$RoleDetailsFromJson(json);
}
