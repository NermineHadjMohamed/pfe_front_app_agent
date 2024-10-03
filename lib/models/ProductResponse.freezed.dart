// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ProductResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductResponse {
  bool get success =>
      throw _privateConstructorUsedError; // Indicates if the API call was successful
  List<OrderProduct> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
          ProductResponse value, $Res Function(ProductResponse) then) =
      _$ProductResponseCopyWithImpl<$Res, ProductResponse>;
  @useResult
  $Res call({bool success, List<OrderProduct> data});
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res, $Val extends ProductResponse>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductResponseImplCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$$ProductResponseImplCopyWith(_$ProductResponseImpl value,
          $Res Function(_$ProductResponseImpl) then) =
      __$$ProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<OrderProduct> data});
}

/// @nodoc
class __$$ProductResponseImplCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res, _$ProductResponseImpl>
    implements _$$ProductResponseImplCopyWith<$Res> {
  __$$ProductResponseImplCopyWithImpl(
      _$ProductResponseImpl _value, $Res Function(_$ProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$ProductResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResponseImpl implements _ProductResponse {
  _$ProductResponseImpl(
      {required this.success, required final List<OrderProduct> data})
      : _data = data;

  factory _$ProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseImplFromJson(json);

  @override
  final bool success;
// Indicates if the API call was successful
  final List<OrderProduct> _data;
// Indicates if the API call was successful
  @override
  List<OrderProduct> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ProductResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      __$$ProductResponseImplCopyWithImpl<_$ProductResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductResponse implements ProductResponse {
  factory _ProductResponse(
      {required final bool success,
      required final List<OrderProduct> data}) = _$ProductResponseImpl;

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$ProductResponseImpl.fromJson;

  @override
  bool get success;
  @override // Indicates if the API call was successful
  List<OrderProduct> get data;
  @override
  @JsonKey(ignore: true)
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderProduct _$OrderProductFromJson(Map<String, dynamic> json) {
  return _OrderProduct.fromJson(json);
}

/// @nodoc
mixin _$OrderProduct {
  String get orderId => throw _privateConstructorUsedError; // Order ID
  Product get productDetails =>
      throw _privateConstructorUsedError; // Use the detailed Product model
  int get quantity =>
      throw _privateConstructorUsedError; // Quantity of the product
  String? get expectedFinishDate =>
      throw _privateConstructorUsedError; // Expected finish date for the product
  List<Parameter> get parameters =>
      throw _privateConstructorUsedError; // List of product parameters
  List<Role> get roles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderProductCopyWith<OrderProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductCopyWith<$Res> {
  factory $OrderProductCopyWith(
          OrderProduct value, $Res Function(OrderProduct) then) =
      _$OrderProductCopyWithImpl<$Res, OrderProduct>;
  @useResult
  $Res call(
      {String orderId,
      Product productDetails,
      int quantity,
      String? expectedFinishDate,
      List<Parameter> parameters,
      List<Role> roles});

  $ProductCopyWith<$Res> get productDetails;
}

/// @nodoc
class _$OrderProductCopyWithImpl<$Res, $Val extends OrderProduct>
    implements $OrderProductCopyWith<$Res> {
  _$OrderProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? productDetails = null,
    Object? quantity = null,
    Object? expectedFinishDate = freezed,
    Object? parameters = null,
    Object? roles = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productDetails: null == productDetails
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as Product,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      expectedFinishDate: freezed == expectedFinishDate
          ? _value.expectedFinishDate
          : expectedFinishDate // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get productDetails {
    return $ProductCopyWith<$Res>(_value.productDetails, (value) {
      return _then(_value.copyWith(productDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderProductImplCopyWith<$Res>
    implements $OrderProductCopyWith<$Res> {
  factory _$$OrderProductImplCopyWith(
          _$OrderProductImpl value, $Res Function(_$OrderProductImpl) then) =
      __$$OrderProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      Product productDetails,
      int quantity,
      String? expectedFinishDate,
      List<Parameter> parameters,
      List<Role> roles});

  @override
  $ProductCopyWith<$Res> get productDetails;
}

/// @nodoc
class __$$OrderProductImplCopyWithImpl<$Res>
    extends _$OrderProductCopyWithImpl<$Res, _$OrderProductImpl>
    implements _$$OrderProductImplCopyWith<$Res> {
  __$$OrderProductImplCopyWithImpl(
      _$OrderProductImpl _value, $Res Function(_$OrderProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? productDetails = null,
    Object? quantity = null,
    Object? expectedFinishDate = freezed,
    Object? parameters = null,
    Object? roles = null,
  }) {
    return _then(_$OrderProductImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productDetails: null == productDetails
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as Product,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      expectedFinishDate: freezed == expectedFinishDate
          ? _value.expectedFinishDate
          : expectedFinishDate // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<Parameter>,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderProductImpl implements _OrderProduct {
  _$OrderProductImpl(
      {required this.orderId,
      required this.productDetails,
      required this.quantity,
      this.expectedFinishDate,
      required final List<Parameter> parameters,
      required final List<Role> roles})
      : _parameters = parameters,
        _roles = roles;

  factory _$OrderProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderProductImplFromJson(json);

  @override
  final String orderId;
// Order ID
  @override
  final Product productDetails;
// Use the detailed Product model
  @override
  final int quantity;
// Quantity of the product
  @override
  final String? expectedFinishDate;
// Expected finish date for the product
  final List<Parameter> _parameters;
// Expected finish date for the product
  @override
  List<Parameter> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

// List of product parameters
  final List<Role> _roles;
// List of product parameters
  @override
  List<Role> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  String toString() {
    return 'OrderProduct(orderId: $orderId, productDetails: $productDetails, quantity: $quantity, expectedFinishDate: $expectedFinishDate, parameters: $parameters, roles: $roles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderProductImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productDetails, productDetails) ||
                other.productDetails == productDetails) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.expectedFinishDate, expectedFinishDate) ||
                other.expectedFinishDate == expectedFinishDate) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            const DeepCollectionEquality().equals(other._roles, _roles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      productDetails,
      quantity,
      expectedFinishDate,
      const DeepCollectionEquality().hash(_parameters),
      const DeepCollectionEquality().hash(_roles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderProductImplCopyWith<_$OrderProductImpl> get copyWith =>
      __$$OrderProductImplCopyWithImpl<_$OrderProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderProductImplToJson(
      this,
    );
  }
}

abstract class _OrderProduct implements OrderProduct {
  factory _OrderProduct(
      {required final String orderId,
      required final Product productDetails,
      required final int quantity,
      final String? expectedFinishDate,
      required final List<Parameter> parameters,
      required final List<Role> roles}) = _$OrderProductImpl;

  factory _OrderProduct.fromJson(Map<String, dynamic> json) =
      _$OrderProductImpl.fromJson;

  @override
  String get orderId;
  @override // Order ID
  Product get productDetails;
  @override // Use the detailed Product model
  int get quantity;
  @override // Quantity of the product
  String? get expectedFinishDate;
  @override // Expected finish date for the product
  List<Parameter> get parameters;
  @override // List of product parameters
  List<Role> get roles;
  @override
  @JsonKey(ignore: true)
  _$$OrderProductImplCopyWith<_$OrderProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
