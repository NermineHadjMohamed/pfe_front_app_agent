// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nfc_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NfcTag _$NfcTagFromJson(Map<String, dynamic> json) {
  return _NfcTag.fromJson(json);
}

/// @nodoc
mixin _$NfcTag {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError; // Optional ID field
  String get tagId => throw _privateConstructorUsedError; // Tag ID
  String get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NfcTagCopyWith<NfcTag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NfcTagCopyWith<$Res> {
  factory $NfcTagCopyWith(NfcTag value, $Res Function(NfcTag) then) =
      _$NfcTagCopyWithImpl<$Res, NfcTag>;
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, String tagId, String state});
}

/// @nodoc
class _$NfcTagCopyWithImpl<$Res, $Val extends NfcTag>
    implements $NfcTagCopyWith<$Res> {
  _$NfcTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tagId = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tagId: null == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NfcTagImplCopyWith<$Res> implements $NfcTagCopyWith<$Res> {
  factory _$$NfcTagImplCopyWith(
          _$NfcTagImpl value, $Res Function(_$NfcTagImpl) then) =
      __$$NfcTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, String tagId, String state});
}

/// @nodoc
class __$$NfcTagImplCopyWithImpl<$Res>
    extends _$NfcTagCopyWithImpl<$Res, _$NfcTagImpl>
    implements _$$NfcTagImplCopyWith<$Res> {
  __$$NfcTagImplCopyWithImpl(
      _$NfcTagImpl _value, $Res Function(_$NfcTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tagId = null,
    Object? state = null,
  }) {
    return _then(_$NfcTagImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tagId: null == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NfcTagImpl implements _NfcTag {
  _$NfcTagImpl(
      {@JsonKey(name: '_id') this.id,
      required this.tagId,
      required this.state});

  factory _$NfcTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$NfcTagImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
// Optional ID field
  @override
  final String tagId;
// Tag ID
  @override
  final String state;

  @override
  String toString() {
    return 'NfcTag(id: $id, tagId: $tagId, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NfcTagImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tagId, tagId) || other.tagId == tagId) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tagId, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NfcTagImplCopyWith<_$NfcTagImpl> get copyWith =>
      __$$NfcTagImplCopyWithImpl<_$NfcTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NfcTagImplToJson(
      this,
    );
  }
}

abstract class _NfcTag implements NfcTag {
  factory _NfcTag(
      {@JsonKey(name: '_id') final String? id,
      required final String tagId,
      required final String state}) = _$NfcTagImpl;

  factory _NfcTag.fromJson(Map<String, dynamic> json) = _$NfcTagImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override // Optional ID field
  String get tagId;
  @override // Tag ID
  String get state;
  @override
  @JsonKey(ignore: true)
  _$$NfcTagImplCopyWith<_$NfcTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
