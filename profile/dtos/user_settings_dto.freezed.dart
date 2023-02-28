// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSettingsDto _$UserSettingsDtoFromJson(Map<String, dynamic> json) {
  return _UserSettingsDto.fromJson(json);
}

/// @nodoc
class _$UserSettingsDtoTearOff {
  const _$UserSettingsDtoTearOff();

  _UserSettingsDto call(
      {List<NotificationType> enabled = const <NotificationType>[]}) {
    return _UserSettingsDto(
      enabled: enabled,
    );
  }

  UserSettingsDto fromJson(Map<String, Object?> json) {
    return UserSettingsDto.fromJson(json);
  }
}

/// @nodoc
const $UserSettingsDto = _$UserSettingsDtoTearOff();

/// @nodoc
mixin _$UserSettingsDto {
  List<NotificationType> get enabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSettingsDtoCopyWith<UserSettingsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsDtoCopyWith<$Res> {
  factory $UserSettingsDtoCopyWith(
          UserSettingsDto value, $Res Function(UserSettingsDto) then) =
      _$UserSettingsDtoCopyWithImpl<$Res>;
  $Res call({List<NotificationType> enabled});
}

/// @nodoc
class _$UserSettingsDtoCopyWithImpl<$Res>
    implements $UserSettingsDtoCopyWith<$Res> {
  _$UserSettingsDtoCopyWithImpl(this._value, this._then);

  final UserSettingsDto _value;
  // ignore: unused_field
  final $Res Function(UserSettingsDto) _then;

  @override
  $Res call({
    Object? enabled = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as List<NotificationType>,
    ));
  }
}

/// @nodoc
abstract class _$UserSettingsDtoCopyWith<$Res>
    implements $UserSettingsDtoCopyWith<$Res> {
  factory _$UserSettingsDtoCopyWith(
          _UserSettingsDto value, $Res Function(_UserSettingsDto) then) =
      __$UserSettingsDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<NotificationType> enabled});
}

/// @nodoc
class __$UserSettingsDtoCopyWithImpl<$Res>
    extends _$UserSettingsDtoCopyWithImpl<$Res>
    implements _$UserSettingsDtoCopyWith<$Res> {
  __$UserSettingsDtoCopyWithImpl(
      _UserSettingsDto _value, $Res Function(_UserSettingsDto) _then)
      : super(_value, (v) => _then(v as _UserSettingsDto));

  @override
  _UserSettingsDto get _value => super._value as _UserSettingsDto;

  @override
  $Res call({
    Object? enabled = freezed,
  }) {
    return _then(_UserSettingsDto(
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as List<NotificationType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserSettingsDto extends _UserSettingsDto {
  const _$_UserSettingsDto({this.enabled = const <NotificationType>[]})
      : super._();

  factory _$_UserSettingsDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserSettingsDtoFromJson(json);

  @JsonKey()
  @override
  final List<NotificationType> enabled;

  @override
  String toString() {
    return 'UserSettingsDto(enabled: $enabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserSettingsDto &&
            const DeepCollectionEquality().equals(other.enabled, enabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(enabled));

  @JsonKey(ignore: true)
  @override
  _$UserSettingsDtoCopyWith<_UserSettingsDto> get copyWith =>
      __$UserSettingsDtoCopyWithImpl<_UserSettingsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserSettingsDtoToJson(this);
  }
}

abstract class _UserSettingsDto extends UserSettingsDto {
  const factory _UserSettingsDto({List<NotificationType> enabled}) =
      _$_UserSettingsDto;
  const _UserSettingsDto._() : super._();

  factory _UserSettingsDto.fromJson(Map<String, dynamic> json) =
      _$_UserSettingsDto.fromJson;

  @override
  List<NotificationType> get enabled;
  @override
  @JsonKey(ignore: true)
  _$UserSettingsDtoCopyWith<_UserSettingsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
