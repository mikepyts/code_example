// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserSettingsTearOff {
  const _$UserSettingsTearOff();

  _UserSettings call(
      {bool isNotificationImportant = false,
      bool isNotificationAppointments = false,
      bool isNotificationCommunityUpdates = false}) {
    return _UserSettings(
      isNotificationImportant: isNotificationImportant,
      isNotificationAppointments: isNotificationAppointments,
      isNotificationCommunityUpdates: isNotificationCommunityUpdates,
    );
  }
}

/// @nodoc
const $UserSettings = _$UserSettingsTearOff();

/// @nodoc
mixin _$UserSettings {
  bool get isNotificationImportant => throw _privateConstructorUsedError;
  bool get isNotificationAppointments => throw _privateConstructorUsedError;
  bool get isNotificationCommunityUpdates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSettingsCopyWith<UserSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsCopyWith<$Res> {
  factory $UserSettingsCopyWith(
          UserSettings value, $Res Function(UserSettings) then) =
      _$UserSettingsCopyWithImpl<$Res>;
  $Res call(
      {bool isNotificationImportant,
      bool isNotificationAppointments,
      bool isNotificationCommunityUpdates});
}

/// @nodoc
class _$UserSettingsCopyWithImpl<$Res> implements $UserSettingsCopyWith<$Res> {
  _$UserSettingsCopyWithImpl(this._value, this._then);

  final UserSettings _value;
  // ignore: unused_field
  final $Res Function(UserSettings) _then;

  @override
  $Res call({
    Object? isNotificationImportant = freezed,
    Object? isNotificationAppointments = freezed,
    Object? isNotificationCommunityUpdates = freezed,
  }) {
    return _then(_value.copyWith(
      isNotificationImportant: isNotificationImportant == freezed
          ? _value.isNotificationImportant
          : isNotificationImportant // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotificationAppointments: isNotificationAppointments == freezed
          ? _value.isNotificationAppointments
          : isNotificationAppointments // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotificationCommunityUpdates: isNotificationCommunityUpdates == freezed
          ? _value.isNotificationCommunityUpdates
          : isNotificationCommunityUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserSettingsCopyWith<$Res>
    implements $UserSettingsCopyWith<$Res> {
  factory _$UserSettingsCopyWith(
          _UserSettings value, $Res Function(_UserSettings) then) =
      __$UserSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isNotificationImportant,
      bool isNotificationAppointments,
      bool isNotificationCommunityUpdates});
}

/// @nodoc
class __$UserSettingsCopyWithImpl<$Res> extends _$UserSettingsCopyWithImpl<$Res>
    implements _$UserSettingsCopyWith<$Res> {
  __$UserSettingsCopyWithImpl(
      _UserSettings _value, $Res Function(_UserSettings) _then)
      : super(_value, (v) => _then(v as _UserSettings));

  @override
  _UserSettings get _value => super._value as _UserSettings;

  @override
  $Res call({
    Object? isNotificationImportant = freezed,
    Object? isNotificationAppointments = freezed,
    Object? isNotificationCommunityUpdates = freezed,
  }) {
    return _then(_UserSettings(
      isNotificationImportant: isNotificationImportant == freezed
          ? _value.isNotificationImportant
          : isNotificationImportant // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotificationAppointments: isNotificationAppointments == freezed
          ? _value.isNotificationAppointments
          : isNotificationAppointments // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotificationCommunityUpdates: isNotificationCommunityUpdates == freezed
          ? _value.isNotificationCommunityUpdates
          : isNotificationCommunityUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserSettings extends _UserSettings {
  const _$_UserSettings(
      {this.isNotificationImportant = false,
      this.isNotificationAppointments = false,
      this.isNotificationCommunityUpdates = false})
      : super._();

  @JsonKey()
  @override
  final bool isNotificationImportant;
  @JsonKey()
  @override
  final bool isNotificationAppointments;
  @JsonKey()
  @override
  final bool isNotificationCommunityUpdates;

  @override
  String toString() {
    return 'UserSettings(isNotificationImportant: $isNotificationImportant, isNotificationAppointments: $isNotificationAppointments, isNotificationCommunityUpdates: $isNotificationCommunityUpdates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserSettings &&
            const DeepCollectionEquality().equals(
                other.isNotificationImportant, isNotificationImportant) &&
            const DeepCollectionEquality().equals(
                other.isNotificationAppointments, isNotificationAppointments) &&
            const DeepCollectionEquality().equals(
                other.isNotificationCommunityUpdates,
                isNotificationCommunityUpdates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isNotificationImportant),
      const DeepCollectionEquality().hash(isNotificationAppointments),
      const DeepCollectionEquality().hash(isNotificationCommunityUpdates));

  @JsonKey(ignore: true)
  @override
  _$UserSettingsCopyWith<_UserSettings> get copyWith =>
      __$UserSettingsCopyWithImpl<_UserSettings>(this, _$identity);
}

abstract class _UserSettings extends UserSettings {
  const factory _UserSettings(
      {bool isNotificationImportant,
      bool isNotificationAppointments,
      bool isNotificationCommunityUpdates}) = _$_UserSettings;
  const _UserSettings._() : super._();

  @override
  bool get isNotificationImportant;
  @override
  bool get isNotificationAppointments;
  @override
  bool get isNotificationCommunityUpdates;
  @override
  @JsonKey(ignore: true)
  _$UserSettingsCopyWith<_UserSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
