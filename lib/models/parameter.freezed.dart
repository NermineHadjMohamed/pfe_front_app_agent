// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Parameter _$ParameterFromJson(Map<String, dynamic> json) {
  return _Parameter.fromJson(json);
}

/// @nodoc
mixin _$Parameter {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parameter_name')
  String get parameterName =>
      throw _privateConstructorUsedError; // Name of the parameter
  @JsonKey(name: 'parameter_value')
  String get parameterValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParameterCopyWith<Parameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParameterCopyWith<$Res> {
  factory $ParameterCopyWith(Parameter value, $Res Function(Parameter) then) =
      _$ParameterCopyWithImpl<$Res, Parameter>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'parameter_name') String parameterName,
      @JsonKey(name: 'parameter_value') String parameterValue});
}

/// @nodoc
class _$ParameterCopyWithImpl<$Res, $Val extends Parameter>
    implements $ParameterCopyWith<$Res> {
  _$ParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parameterName = null,
    Object? parameterValue = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parameterName: null == parameterName
          ? _value.parameterName
          : parameterName // ignore: cast_nullable_to_non_nullable
              as String,
      parameterValue: null == parameterValue
          ? _value.parameterValue
          : parameterValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParameterImplCopyWith<$Res>
    implements $ParameterCopyWith<$Res> {
  factory _$$ParameterImplCopyWith(
          _$ParameterImpl value, $Res Function(_$ParameterImpl) then) =
      __$$ParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'parameter_name') String parameterName,
      @JsonKey(name: 'parameter_value') String parameterValue});
}

/// @nodoc
class __$$ParameterImplCopyWithImpl<$Res>
    extends _$ParameterCopyWithImpl<$Res, _$ParameterImpl>
    implements _$$ParameterImplCopyWith<$Res> {
  __$$ParameterImplCopyWithImpl(
      _$ParameterImpl _value, $Res Function(_$ParameterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parameterName = null,
    Object? parameterValue = null,
  }) {
    return _then(_$ParameterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parameterName: null == parameterName
          ? _value.parameterName
          : parameterName // ignore: cast_nullable_to_non_nullable
              as String,
      parameterValue: null == parameterValue
          ? _value.parameterValue
          : parameterValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParameterImpl implements _Parameter {
  _$ParameterImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'parameter_name') required this.parameterName,
      @JsonKey(name: 'parameter_value') required this.parameterValue});

  factory _$ParameterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParameterImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'parameter_name')
  final String parameterName;
// Name of the parameter
  @override
  @JsonKey(name: 'parameter_value')
  final String parameterValue;

  @override
  String toString() {
    return 'Parameter(id: $id, parameterName: $parameterName, parameterValue: $parameterValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParameterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parameterName, parameterName) ||
                other.parameterName == parameterName) &&
            (identical(other.parameterValue, parameterValue) ||
                other.parameterValue == parameterValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, parameterName, parameterValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParameterImplCopyWith<_$ParameterImpl> get copyWith =>
      __$$ParameterImplCopyWithImpl<_$ParameterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParameterImplToJson(
      this,
    );
  }
}

abstract class _Parameter implements Parameter {
  factory _Parameter(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'parameter_name') required final String parameterName,
      @JsonKey(name: 'parameter_value')
      required final String parameterValue}) = _$ParameterImpl;

  factory _Parameter.fromJson(Map<String, dynamic> json) =
      _$ParameterImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'parameter_name')
  String get parameterName;
  @override // Name of the parameter
  @JsonKey(name: 'parameter_value')
  String get parameterValue;
  @override
  @JsonKey(ignore: true)
  _$$ParameterImplCopyWith<_$ParameterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
