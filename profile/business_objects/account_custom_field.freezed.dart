// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_custom_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountCustomField _$AccountCustomFieldFromJson(Map<String, dynamic> json) {
  return _AccountCustomField.fromJson(json);
}

/// @nodoc
class _$AccountCustomFieldTearOff {
  const _$AccountCustomFieldTearOff();

  _AccountCustomField call({required String data}) {
    return _AccountCustomField(
      data: data,
    );
  }

  AccountCustomField fromJson(Map<String, Object?> json) {
    return AccountCustomField.fromJson(json);
  }
}

/// @nodoc
const $AccountCustomField = _$AccountCustomFieldTearOff();

/// @nodoc
mixin _$AccountCustomField {
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCustomFieldCopyWith<AccountCustomField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCustomFieldCopyWith<$Res> {
  factory $AccountCustomFieldCopyWith(
          AccountCustomField value, $Res Function(AccountCustomField) then) =
      _$AccountCustomFieldCopyWithImpl<$Res>;
  $Res call({String data});
}

/// @nodoc
class _$AccountCustomFieldCopyWithImpl<$Res>
    implements $AccountCustomFieldCopyWith<$Res> {
  _$AccountCustomFieldCopyWithImpl(this._value, this._then);

  final AccountCustomField _value;
  // ignore: unused_field
  final $Res Function(AccountCustomField) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AccountCustomFieldCopyWith<$Res>
    implements $AccountCustomFieldCopyWith<$Res> {
  factory _$AccountCustomFieldCopyWith(
          _AccountCustomField value, $Res Function(_AccountCustomField) then) =
      __$AccountCustomFieldCopyWithImpl<$Res>;
  @override
  $Res call({String data});
}

/// @nodoc
class __$AccountCustomFieldCopyWithImpl<$Res>
    extends _$AccountCustomFieldCopyWithImpl<$Res>
    implements _$AccountCustomFieldCopyWith<$Res> {
  __$AccountCustomFieldCopyWithImpl(
      _AccountCustomField _value, $Res Function(_AccountCustomField) _then)
      : super(_value, (v) => _then(v as _AccountCustomField));

  @override
  _AccountCustomField get _value => super._value as _AccountCustomField;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_AccountCustomField(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountCustomField implements _AccountCustomField {
  const _$_AccountCustomField({required this.data});

  factory _$_AccountCustomField.fromJson(Map<String, dynamic> json) =>
      _$$_AccountCustomFieldFromJson(json);

  @override
  final String data;

  @override
  String toString() {
    return 'AccountCustomField(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountCustomField &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$AccountCustomFieldCopyWith<_AccountCustomField> get copyWith =>
      __$AccountCustomFieldCopyWithImpl<_AccountCustomField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountCustomFieldToJson(this);
  }
}

abstract class _AccountCustomField implements AccountCustomField {
  const factory _AccountCustomField({required String data}) =
      _$_AccountCustomField;

  factory _AccountCustomField.fromJson(Map<String, dynamic> json) =
      _$_AccountCustomField.fromJson;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$AccountCustomFieldCopyWith<_AccountCustomField> get copyWith =>
      throw _privateConstructorUsedError;
}
