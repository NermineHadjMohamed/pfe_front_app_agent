// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String get productName =>
      throw _privateConstructorUsedError; // Name of the product
  @JsonKey(name: 'description')
  String? get description =>
      throw _privateConstructorUsedError; // Description of the product (nullable)
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError; // Image URL
  @JsonKey(name: 'document')
  String? get document =>
      throw _privateConstructorUsedError; // Document URL (nullable)
  @JsonKey(name: 'parameter_types')
  String? get parameterTypes =>
      throw _privateConstructorUsedError; // Parameter types (nullable)
  @JsonKey(name: 'product_price')
  double get productPrice =>
      throw _privateConstructorUsedError; // Product price
  @JsonKey(name: 'roles')
  List<String>? get roles =>
      throw _privateConstructorUsedError; // List of role IDs associated with the product
  @JsonKey(name: 'parameters')
  List<String>? get parameters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'product_name') String productName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'document') String? document,
      @JsonKey(name: 'parameter_types') String? parameterTypes,
      @JsonKey(name: 'product_price') double productPrice,
      @JsonKey(name: 'roles') List<String>? roles,
      @JsonKey(name: 'parameters') List<String>? parameters});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? description = freezed,
    Object? image = null,
    Object? document = freezed,
    Object? parameterTypes = freezed,
    Object? productPrice = null,
    Object? roles = freezed,
    Object? parameters = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String?,
      parameterTypes: freezed == parameterTypes
          ? _value.parameterTypes
          : parameterTypes // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'product_name') String productName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'document') String? document,
      @JsonKey(name: 'parameter_types') String? parameterTypes,
      @JsonKey(name: 'product_price') double productPrice,
      @JsonKey(name: 'roles') List<String>? roles,
      @JsonKey(name: 'parameters') List<String>? parameters});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? description = freezed,
    Object? image = null,
    Object? document = freezed,
    Object? parameterTypes = freezed,
    Object? productPrice = null,
    Object? roles = freezed,
    Object? parameters = freezed,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String?,
      parameterTypes: freezed == parameterTypes
          ? _value.parameterTypes
          : parameterTypes // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      parameters: freezed == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'product_name') required this.productName,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'image') required this.image,
      @JsonKey(name: 'document') this.document,
      @JsonKey(name: 'parameter_types') this.parameterTypes,
      @JsonKey(name: 'product_price') required this.productPrice,
      @JsonKey(name: 'roles') final List<String>? roles,
      @JsonKey(name: 'parameters') final List<String>? parameters})
      : _roles = roles,
        _parameters = parameters;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'product_name')
  final String productName;
// Name of the product
  @override
  @JsonKey(name: 'description')
  final String? description;
// Description of the product (nullable)
  @override
  @JsonKey(name: 'image')
  final String image;
// Image URL
  @override
  @JsonKey(name: 'document')
  final String? document;
// Document URL (nullable)
  @override
  @JsonKey(name: 'parameter_types')
  final String? parameterTypes;
// Parameter types (nullable)
  @override
  @JsonKey(name: 'product_price')
  final double productPrice;
// Product price
  final List<String>? _roles;
// Product price
  @override
  @JsonKey(name: 'roles')
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// List of role IDs associated with the product
  final List<String>? _parameters;
// List of role IDs associated with the product
  @override
  @JsonKey(name: 'parameters')
  List<String>? get parameters {
    final value = _parameters;
    if (value == null) return null;
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Product(id: $id, productName: $productName, description: $description, image: $image, document: $document, parameterTypes: $parameterTypes, productPrice: $productPrice, roles: $roles, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.document, document) ||
                other.document == document) &&
            (identical(other.parameterTypes, parameterTypes) ||
                other.parameterTypes == parameterTypes) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productName,
      description,
      image,
      document,
      parameterTypes,
      productPrice,
      const DeepCollectionEquality().hash(_roles),
      const DeepCollectionEquality().hash(_parameters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
          {@JsonKey(name: '_id') required final String id,
          @JsonKey(name: 'product_name') required final String productName,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'image') required final String image,
          @JsonKey(name: 'document') final String? document,
          @JsonKey(name: 'parameter_types') final String? parameterTypes,
          @JsonKey(name: 'product_price') required final double productPrice,
          @JsonKey(name: 'roles') final List<String>? roles,
          @JsonKey(name: 'parameters') final List<String>? parameters}) =
      _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'product_name')
  String get productName;
  @override // Name of the product
  @JsonKey(name: 'description')
  String? get description;
  @override // Description of the product (nullable)
  @JsonKey(name: 'image')
  String get image;
  @override // Image URL
  @JsonKey(name: 'document')
  String? get document;
  @override // Document URL (nullable)
  @JsonKey(name: 'parameter_types')
  String? get parameterTypes;
  @override // Parameter types (nullable)
  @JsonKey(name: 'product_price')
  double get productPrice;
  @override // Product price
  @JsonKey(name: 'roles')
  List<String>? get roles;
  @override // List of role IDs associated with the product
  @JsonKey(name: 'parameters')
  List<String>? get parameters;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
