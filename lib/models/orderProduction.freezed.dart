// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orderProduction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderProduction _$OrderProductionFromJson(Map<String, dynamic> json) {
  return _OrderProduction.fromJson(json);
}

/// @nodoc
mixin _$OrderProduction {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'orderId')
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'expectedFinishDate')
  DateTime get expectedFinishDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  List<OrderProduct> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderProductionCopyWith<OrderProduction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductionCopyWith<$Res> {
  factory $OrderProductionCopyWith(
          OrderProduction value, $Res Function(OrderProduction) then) =
      _$OrderProductionCopyWithImpl<$Res, OrderProduction>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'orderId') String orderId,
      @JsonKey(name: 'expectedFinishDate') DateTime expectedFinishDate,
      @JsonKey(name: 'products') List<OrderProduct> products});
}

/// @nodoc
class _$OrderProductionCopyWithImpl<$Res, $Val extends OrderProduction>
    implements $OrderProductionCopyWith<$Res> {
  _$OrderProductionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? expectedFinishDate = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      expectedFinishDate: null == expectedFinishDate
          ? _value.expectedFinishDate
          : expectedFinishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderProductionImplCopyWith<$Res>
    implements $OrderProductionCopyWith<$Res> {
  factory _$$OrderProductionImplCopyWith(_$OrderProductionImpl value,
          $Res Function(_$OrderProductionImpl) then) =
      __$$OrderProductionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'orderId') String orderId,
      @JsonKey(name: 'expectedFinishDate') DateTime expectedFinishDate,
      @JsonKey(name: 'products') List<OrderProduct> products});
}

/// @nodoc
class __$$OrderProductionImplCopyWithImpl<$Res>
    extends _$OrderProductionCopyWithImpl<$Res, _$OrderProductionImpl>
    implements _$$OrderProductionImplCopyWith<$Res> {
  __$$OrderProductionImplCopyWithImpl(
      _$OrderProductionImpl _value, $Res Function(_$OrderProductionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? expectedFinishDate = null,
    Object? products = null,
  }) {
    return _then(_$OrderProductionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      expectedFinishDate: null == expectedFinishDate
          ? _value.expectedFinishDate
          : expectedFinishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderProductionImpl implements _OrderProduction {
  _$OrderProductionImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'orderId') required this.orderId,
      @JsonKey(name: 'expectedFinishDate') required this.expectedFinishDate,
      @JsonKey(name: 'products') required final List<OrderProduct> products})
      : _products = products;

  factory _$OrderProductionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderProductionImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'orderId')
  final String orderId;
  @override
  @JsonKey(name: 'expectedFinishDate')
  final DateTime expectedFinishDate;
  final List<OrderProduct> _products;
  @override
  @JsonKey(name: 'products')
  List<OrderProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'OrderProduction(id: $id, orderId: $orderId, expectedFinishDate: $expectedFinishDate, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderProductionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.expectedFinishDate, expectedFinishDate) ||
                other.expectedFinishDate == expectedFinishDate) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderId, expectedFinishDate,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderProductionImplCopyWith<_$OrderProductionImpl> get copyWith =>
      __$$OrderProductionImplCopyWithImpl<_$OrderProductionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderProductionImplToJson(
      this,
    );
  }
}

abstract class _OrderProduction implements OrderProduction {
  factory _OrderProduction(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'orderId') required final String orderId,
      @JsonKey(name: 'expectedFinishDate')
      required final DateTime expectedFinishDate,
      @JsonKey(name: 'products')
      required final List<OrderProduct> products}) = _$OrderProductionImpl;

  factory _OrderProduction.fromJson(Map<String, dynamic> json) =
      _$OrderProductionImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'orderId')
  String get orderId;
  @override
  @JsonKey(name: 'expectedFinishDate')
  DateTime get expectedFinishDate;
  @override
  @JsonKey(name: 'products')
  List<OrderProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$OrderProductionImplCopyWith<_$OrderProductionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderProduct _$OrderProductFromJson(Map<String, dynamic> json) {
  return _OrderProduct.fromJson(json);
}

/// @nodoc
mixin _$OrderProduct {
  @JsonKey(name: 'productId')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'expectedFinishDate')
  DateTime get expectedFinishDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'selectedNfcTags')
  List<String>? get selectedNfcTags =>
      throw _privateConstructorUsedError; // List of NFC Tag IDs
  @JsonKey(name: 'roles')
  List<RoleDetails> get roles => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'productId') String productId,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'expectedFinishDate') DateTime expectedFinishDate,
      @JsonKey(name: 'selectedNfcTags') List<String>? selectedNfcTags,
      @JsonKey(name: 'roles') List<RoleDetails> roles});
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
    Object? productId = null,
    Object? quantity = null,
    Object? expectedFinishDate = null,
    Object? selectedNfcTags = freezed,
    Object? roles = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      expectedFinishDate: null == expectedFinishDate
          ? _value.expectedFinishDate
          : expectedFinishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedNfcTags: freezed == selectedNfcTags
          ? _value.selectedNfcTags
          : selectedNfcTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RoleDetails>,
    ) as $Val);
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
      {@JsonKey(name: 'productId') String productId,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'expectedFinishDate') DateTime expectedFinishDate,
      @JsonKey(name: 'selectedNfcTags') List<String>? selectedNfcTags,
      @JsonKey(name: 'roles') List<RoleDetails> roles});
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
    Object? productId = null,
    Object? quantity = null,
    Object? expectedFinishDate = null,
    Object? selectedNfcTags = freezed,
    Object? roles = null,
  }) {
    return _then(_$OrderProductImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      expectedFinishDate: null == expectedFinishDate
          ? _value.expectedFinishDate
          : expectedFinishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedNfcTags: freezed == selectedNfcTags
          ? _value._selectedNfcTags
          : selectedNfcTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RoleDetails>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderProductImpl implements _OrderProduct {
  _$OrderProductImpl(
      {@JsonKey(name: 'productId') required this.productId,
      @JsonKey(name: 'quantity') required this.quantity,
      @JsonKey(name: 'expectedFinishDate') required this.expectedFinishDate,
      @JsonKey(name: 'selectedNfcTags') final List<String>? selectedNfcTags,
      @JsonKey(name: 'roles') required final List<RoleDetails> roles})
      : _selectedNfcTags = selectedNfcTags,
        _roles = roles;

  factory _$OrderProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderProductImplFromJson(json);

  @override
  @JsonKey(name: 'productId')
  final String productId;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'expectedFinishDate')
  final DateTime expectedFinishDate;
  final List<String>? _selectedNfcTags;
  @override
  @JsonKey(name: 'selectedNfcTags')
  List<String>? get selectedNfcTags {
    final value = _selectedNfcTags;
    if (value == null) return null;
    if (_selectedNfcTags is EqualUnmodifiableListView) return _selectedNfcTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// List of NFC Tag IDs
  final List<RoleDetails> _roles;
// List of NFC Tag IDs
  @override
  @JsonKey(name: 'roles')
  List<RoleDetails> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  String toString() {
    return 'OrderProduct(productId: $productId, quantity: $quantity, expectedFinishDate: $expectedFinishDate, selectedNfcTags: $selectedNfcTags, roles: $roles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.expectedFinishDate, expectedFinishDate) ||
                other.expectedFinishDate == expectedFinishDate) &&
            const DeepCollectionEquality()
                .equals(other._selectedNfcTags, _selectedNfcTags) &&
            const DeepCollectionEquality().equals(other._roles, _roles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      quantity,
      expectedFinishDate,
      const DeepCollectionEquality().hash(_selectedNfcTags),
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
          {@JsonKey(name: 'productId') required final String productId,
          @JsonKey(name: 'quantity') required final int quantity,
          @JsonKey(name: 'expectedFinishDate')
          required final DateTime expectedFinishDate,
          @JsonKey(name: 'selectedNfcTags') final List<String>? selectedNfcTags,
          @JsonKey(name: 'roles') required final List<RoleDetails> roles}) =
      _$OrderProductImpl;

  factory _OrderProduct.fromJson(Map<String, dynamic> json) =
      _$OrderProductImpl.fromJson;

  @override
  @JsonKey(name: 'productId')
  String get productId;
  @override
  @JsonKey(name: 'quantity')
  int get quantity;
  @override
  @JsonKey(name: 'expectedFinishDate')
  DateTime get expectedFinishDate;
  @override
  @JsonKey(name: 'selectedNfcTags')
  List<String>? get selectedNfcTags;
  @override // List of NFC Tag IDs
  @JsonKey(name: 'roles')
  List<RoleDetails> get roles;
  @override
  @JsonKey(ignore: true)
  _$$OrderProductImplCopyWith<_$OrderProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoleDetails _$RoleDetailsFromJson(Map<String, dynamic> json) {
  return _RoleDetails.fromJson(json);
}

/// @nodoc
mixin _$RoleDetails {
  @JsonKey(name: 'roleId')
  String get roleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'agents')
  List<String>? get agents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleDetailsCopyWith<RoleDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleDetailsCopyWith<$Res> {
  factory $RoleDetailsCopyWith(
          RoleDetails value, $Res Function(RoleDetails) then) =
      _$RoleDetailsCopyWithImpl<$Res, RoleDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'roleId') String roleId,
      @JsonKey(name: 'agents') List<String>? agents});
}

/// @nodoc
class _$RoleDetailsCopyWithImpl<$Res, $Val extends RoleDetails>
    implements $RoleDetailsCopyWith<$Res> {
  _$RoleDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleId = null,
    Object? agents = freezed,
  }) {
    return _then(_value.copyWith(
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      agents: freezed == agents
          ? _value.agents
          : agents // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleDetailsImplCopyWith<$Res>
    implements $RoleDetailsCopyWith<$Res> {
  factory _$$RoleDetailsImplCopyWith(
          _$RoleDetailsImpl value, $Res Function(_$RoleDetailsImpl) then) =
      __$$RoleDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'roleId') String roleId,
      @JsonKey(name: 'agents') List<String>? agents});
}

/// @nodoc
class __$$RoleDetailsImplCopyWithImpl<$Res>
    extends _$RoleDetailsCopyWithImpl<$Res, _$RoleDetailsImpl>
    implements _$$RoleDetailsImplCopyWith<$Res> {
  __$$RoleDetailsImplCopyWithImpl(
      _$RoleDetailsImpl _value, $Res Function(_$RoleDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleId = null,
    Object? agents = freezed,
  }) {
    return _then(_$RoleDetailsImpl(
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      agents: freezed == agents
          ? _value._agents
          : agents // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleDetailsImpl implements _RoleDetails {
  _$RoleDetailsImpl(
      {@JsonKey(name: 'roleId') required this.roleId,
      @JsonKey(name: 'agents') final List<String>? agents})
      : _agents = agents;

  factory _$RoleDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'roleId')
  final String roleId;
  final List<String>? _agents;
  @override
  @JsonKey(name: 'agents')
  List<String>? get agents {
    final value = _agents;
    if (value == null) return null;
    if (_agents is EqualUnmodifiableListView) return _agents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RoleDetails(roleId: $roleId, agents: $agents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleDetailsImpl &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            const DeepCollectionEquality().equals(other._agents, _agents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, roleId, const DeepCollectionEquality().hash(_agents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleDetailsImplCopyWith<_$RoleDetailsImpl> get copyWith =>
      __$$RoleDetailsImplCopyWithImpl<_$RoleDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleDetailsImplToJson(
      this,
    );
  }
}

abstract class _RoleDetails implements RoleDetails {
  factory _RoleDetails(
      {@JsonKey(name: 'roleId') required final String roleId,
      @JsonKey(name: 'agents') final List<String>? agents}) = _$RoleDetailsImpl;

  factory _RoleDetails.fromJson(Map<String, dynamic> json) =
      _$RoleDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'roleId')
  String get roleId;
  @override
  @JsonKey(name: 'agents')
  List<String>? get agents;
  @override
  @JsonKey(ignore: true)
  _$$RoleDetailsImplCopyWith<_$RoleDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
