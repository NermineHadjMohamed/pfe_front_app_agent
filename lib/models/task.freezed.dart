// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'productId')
  String get productId =>
      throw _privateConstructorUsedError; // Reference to Product
  @JsonKey(name: 'roleId')
  String get roleId => throw _privateConstructorUsedError; // Reference to Role
  @JsonKey(name: 'agentId')
  String get agentId =>
      throw _privateConstructorUsedError; // Reference to Agent
  @JsonKey(name: 'status')
  String get status =>
      throw _privateConstructorUsedError; // Task status (started or finished)
  @JsonKey(name: 'startTime')
  DateTime get startTime =>
      throw _privateConstructorUsedError; // Start time of the task
  @JsonKey(name: 'finishTime')
  DateTime? get finishTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'productId') String productId,
      @JsonKey(name: 'roleId') String roleId,
      @JsonKey(name: 'agentId') String agentId,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'startTime') DateTime startTime,
      @JsonKey(name: 'finishTime') DateTime? finishTime});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? roleId = null,
    Object? agentId = null,
    Object? status = null,
    Object? startTime = null,
    Object? finishTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishTime: freezed == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'productId') String productId,
      @JsonKey(name: 'roleId') String roleId,
      @JsonKey(name: 'agentId') String agentId,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'startTime') DateTime startTime,
      @JsonKey(name: 'finishTime') DateTime? finishTime});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? roleId = null,
    Object? agentId = null,
    Object? status = null,
    Object? startTime = null,
    Object? finishTime = freezed,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishTime: freezed == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  _$TaskImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'productId') required this.productId,
      @JsonKey(name: 'roleId') required this.roleId,
      @JsonKey(name: 'agentId') required this.agentId,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'startTime') required this.startTime,
      @JsonKey(name: 'finishTime') this.finishTime});

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'productId')
  final String productId;
// Reference to Product
  @override
  @JsonKey(name: 'roleId')
  final String roleId;
// Reference to Role
  @override
  @JsonKey(name: 'agentId')
  final String agentId;
// Reference to Agent
  @override
  @JsonKey(name: 'status')
  final String status;
// Task status (started or finished)
  @override
  @JsonKey(name: 'startTime')
  final DateTime startTime;
// Start time of the task
  @override
  @JsonKey(name: 'finishTime')
  final DateTime? finishTime;

  @override
  String toString() {
    return 'Task(id: $id, productId: $productId, roleId: $roleId, agentId: $agentId, status: $status, startTime: $startTime, finishTime: $finishTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, productId, roleId, agentId,
      status, startTime, finishTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  factory _Task(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'productId') required final String productId,
      @JsonKey(name: 'roleId') required final String roleId,
      @JsonKey(name: 'agentId') required final String agentId,
      @JsonKey(name: 'status') required final String status,
      @JsonKey(name: 'startTime') required final DateTime startTime,
      @JsonKey(name: 'finishTime') final DateTime? finishTime}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'productId')
  String get productId;
  @override // Reference to Product
  @JsonKey(name: 'roleId')
  String get roleId;
  @override // Reference to Role
  @JsonKey(name: 'agentId')
  String get agentId;
  @override // Reference to Agent
  @JsonKey(name: 'status')
  String get status;
  @override // Task status (started or finished)
  @JsonKey(name: 'startTime')
  DateTime get startTime;
  @override // Start time of the task
  @JsonKey(name: 'finishTime')
  DateTime? get finishTime;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
