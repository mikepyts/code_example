// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_custom_field_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountCustomFieldDto _$AccountCustomFieldDtoFromJson(
    Map<String, dynamic> json) {
  return _AccountCustomFieldDto.fromJson(json);
}

/// @nodoc
class _$AccountCustomFieldDtoTearOff {
  const _$AccountCustomFieldDtoTearOff();

  _AccountCustomFieldDto call({String data = ''}) {
    return _AccountCustomFieldDto(
      data: data,
    );
  }

  AccountCustomFieldDto fromJson(Map<String, Object?> json) {
    return AccountCustomFieldDto.fromJson(json);
  }
}

/// @nodoc
const $AccountCustomFieldDto = _$AccountCustomFieldDtoTearOff();

/// @nodoc
mixin _$AccountCustomFieldDto {
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCustomFieldDtoCopyWith<AccountCustomFieldDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCustomFieldDtoCopyWith<$Res> {
  factory $AccountCustomFieldDtoCopyWith(AccountCustomFieldDto value,
          $Res Function(AccountCustomFieldDto) then) =
      _$AccountCustomFieldDtoCopyWithImpl<$Res>;
  $Res call({String data});
}

/// @nodoc
class _$AccountCustomFieldDtoCopyWithImpl<$Res>
    implements $AccountCustomFieldDtoCopyWith<$Res> {
  _$AccountCustomFieldDtoCopyWithImpl(this._value, this._then);

  final AccountCustomFieldDto _value;
  // ignore: unused_field
  final $Res Function(AccountCustomFieldDto) _then;

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
abstract class _$AccountCustomFieldDtoCopyWith<$Res>
    implements $AccountCustomFieldDtoCopyWith<$Res> {
  factory _$AccountCustomFieldDtoCopyWith(_AccountCustomFieldDto value,
          $Res Function(_AccountCustomFieldDto) then) =
      __$AccountCustomFieldDtoCopyWithImpl<$Res>;
  @override
  $Res call({String data});
}

/// @nodoc
class __$AccountCustomFieldDtoCopyWithImpl<$Res>
    extends _$AccountCustomFieldDtoCopyWithImpl<$Res>
    implements _$AccountCustomFieldDtoCopyWith<$Res> {
  __$AccountCustomFieldDtoCopyWithImpl(_AccountCustomFieldDto _value,
      $Res Function(_AccountCustomFieldDto) _then)
      : super(_value, (v) => _then(v as _AccountCustomFieldDto));

  @override
  _AccountCustomFieldDto get _value => super._value as _AccountCustomFieldDto;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_AccountCustomFieldDto(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountCustomFieldDto extends _AccountCustomFieldDto {
  const _$_AccountCustomFieldDto({this.data = ''}) : super._();

  factory _$_AccountCustomFieldDto.fromJson(Map<String, dynamic> json) =>
      _$$_AccountCustomFieldDtoFromJson(json);

  @JsonKey()
  @override
  final String data;

  @override
  String toString() {
    return 'AccountCustomFieldDto(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountCustomFieldDto &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$AccountCustomFieldDtoCopyWith<_AccountCustomFieldDto> get copyWith =>
      __$AccountCustomFieldDtoCopyWithImpl<_AccountCustomFieldDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountCustomFieldDtoToJson(this);
  }
}

abstract class _AccountCustomFieldDto extends AccountCustomFieldDto {
  const factory _AccountCustomFieldDto({String data}) =
      _$_AccountCustomFieldDto;
  const _AccountCustomFieldDto._() : super._();

  factory _AccountCustomFieldDto.fromJson(Map<String, dynamic> json) =
      _$_AccountCustomFieldDto.fromJson;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$AccountCustomFieldDtoCopyWith<_AccountCustomFieldDto> get copyWith =>
      throw _privateConstructorUsedError;
}
