// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationSettingsStateTearOff {
  const _$NotificationSettingsStateTearOff();

  NotificationSettingsStateLoading loading(
      {UserSettings? notificationSettings}) {
    return NotificationSettingsStateLoading(
      notificationSettings: notificationSettings,
    );
  }

  NotificationSettingsStateFetched fetched(
      {UserSettings? notificationSettings}) {
    return NotificationSettingsStateFetched(
      notificationSettings: notificationSettings,
    );
  }

  NotificationSettingsStateFailure failed({required String message}) {
    return NotificationSettingsStateFailure(
      message: message,
    );
  }
}

/// @nodoc
const $NotificationSettingsState = _$NotificationSettingsStateTearOff();

/// @nodoc
mixin _$NotificationSettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSettings? notificationSettings) loading,
    required TResult Function(UserSettings? notificationSettings) fetched,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserSettings? notificationSettings)? loading,
    TResult Function(UserSettings? notificationSettings)? fetched,
    TResult Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSettings? notificationSettings)? loading,
    TResult Function(UserSettings? notificationSettings)? fetched,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationSettingsStateLoading value) loading,
    required TResult Function(NotificationSettingsStateFetched value) fetched,
    required TResult Function(NotificationSettingsStateFailure value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationSettingsStateLoading value)? loading,
    TResult Function(NotificationSettingsStateFetched value)? fetched,
    TResult Function(NotificationSettingsStateFailure value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationSettingsStateLoading value)? loading,
    TResult Function(NotificationSettingsStateFetched value)? fetched,
    TResult Function(NotificationSettingsStateFailure value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingsStateCopyWith<$Res> {
  factory $NotificationSettingsStateCopyWith(NotificationSettingsState value,
          $Res Function(NotificationSettingsState) then) =
      _$NotificationSettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationSettingsStateCopyWithImpl<$Res>
    implements $NotificationSettingsStateCopyWith<$Res> {
  _$NotificationSettingsStateCopyWithImpl(this._value, this._then);

  final NotificationSettingsState _value;
  // ignore: unused_field
  final $Res Function(NotificationSettingsState) _then;
}

/// @nodoc
abstract class $NotificationSettingsStateLoadingCopyWith<$Res> {
  factory $NotificationSettingsStateLoadingCopyWith(
          NotificationSettingsStateLoading value,
          $Res Function(NotificationSettingsStateLoading) then) =
      _$NotificationSettingsStateLoadingCopyWithImpl<$Res>;
  $Res call({UserSettings? notificationSettings});

  $UserSettingsCopyWith<$Res>? get notificationSettings;
}

/// @nodoc
class _$NotificationSettingsStateLoadingCopyWithImpl<$Res>
    extends _$NotificationSettingsStateCopyWithImpl<$Res>
    implements $NotificationSettingsStateLoadingCopyWith<$Res> {
  _$NotificationSettingsStateLoadingCopyWithImpl(
      NotificationSettingsStateLoading _value,
      $Res Function(NotificationSettingsStateLoading) _then)
      : super(_value, (v) => _then(v as NotificationSettingsStateLoading));

  @override
  NotificationSettingsStateLoading get _value =>
      super._value as NotificationSettingsStateLoading;

  @override
  $Res call({
    Object? notificationSettings = freezed,
  }) {
    return _then(NotificationSettingsStateLoading(
      notificationSettings: notificationSettings == freezed
          ? _value.notificationSettings
          : notificationSettings // ignore: cast_nullable_to_non_nullable
              as UserSettings?,
    ));
  }

  @override
  $UserSettingsCopyWith<$Res>? get notificationSettings {
    if (_value.notificationSettings == null) {
      return null;
    }

    return $UserSettingsCopyWith<$Res>(_value.notificationSettings!, (value) {
      return _then(_value.copyWith(notificationSettings: value));
    });
  }
}

/// @nodoc

class _$NotificationSettingsStateLoading
    extends NotificationSettingsStateLoading {
  const _$NotificationSettingsStateLoading({this.notificationSettings})
      : super._();

  @override
  final UserSettings? notificationSettings;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationSettingsStateLoading &&
            const DeepCollectionEquality()
                .equals(other.notificationSettings, notificationSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(notificationSettings));

  @JsonKey(ignore: true)
  @override
  $NotificationSettingsStateLoadingCopyWith<NotificationSettingsStateLoading>
      get copyWith => _$NotificationSettingsStateLoadingCopyWithImpl<
          NotificationSettingsStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSettings? notificationSettings) loading,
    required TResult Function(UserSettings? notificationSettings) fetched,
    required TResult Function(String message) failed,
  }) {
    return loading(notificationSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserSettings? notificationSettings)? loading,
    TResult Function(UserSettings? notificationSettings)? fetched,
    TResult Function(String message)? failed,
  }) {
    return loading?.call(notificationSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSettings? notificationSettings)? loading,
    TResult Function(UserSettings? notificationSettings)? fetched,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(notificationSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationSettingsStateLoading value) loading,
    required TResult Function(NotificationSettingsStateFetched value) fetched,
    required TResult Function(NotificationSettingsStateFailure value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationSettingsStateLoading value)? loading,
    TResult Function(NotificationSettingsStateFetched value)? fetched,
    TResult Function(NotificationSettingsStateFailure value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationSettingsStateLoading value)? loading,
    TResult Function(NotificationSettingsStateFetched value)? fetched,
    TResult Function(NotificationSettingsStateFailure value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NotificationSettingsStateLoading
    extends NotificationSettingsState {
  const factory NotificationSettingsStateLoading(
          {UserSettings? notificationSettings}) =
      _$NotificationSettingsStateLoading;
  const NotificationSettingsStateLoading._() : super._();

  UserSettings? get notificationSettings;
  @JsonKey(ignore: true)
  $NotificationSettingsStateLoadingCopyWith<NotificationSettingsStateLoading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingsStateFetchedCopyWith<$Res> {
  factory $NotificationSettingsStateFetchedCopyWith(
          NotificationSettingsStateFetched value,
          $Res Function(NotificationSettingsStateFetched) then) =
      _$NotificationSettingsStateFetchedCopyWithImpl<$Res>;
  $Res call({UserSettings? notificationSettings});

  $UserSettingsCopyWith<$Res>? get notificationSettings;
}

/// @nodoc
class _$NotificationSettingsStateFetchedCopyWithImpl<$Res>
    extends _$NotificationSettingsStateCopyWithImpl<$Res>
    implements $NotificationSettingsStateFetchedCopyWith<$Res> {
  _$NotificationSettingsStateFetchedCopyWithImpl(
      NotificationSettingsStateFetched _value,
      $Res Function(NotificationSettingsStateFetched) _then)
      : super(_value, (v) => _then(v as NotificationSettingsStateFetched));

  @override
  NotificationSettingsStateFetched get _value =>
      super._value as NotificationSettingsStateFetched;

  @override
  $Res call({
    Object? notificationSettings = freezed,
  }) {
    return _then(NotificationSettingsStateFetched(
      notificationSettings: notificationSettings == freezed
          ? _value.notificationSettings
          : notificationSettings // ignore: cast_nullable_to_non_nullable
              as UserSettings?,
    ));
  }

  @override
  $UserSettingsCopyWith<$Res>? get notificationSettings {
    if (_value.notificationSettings == null) {
      return null;
    }

    return $UserSettingsCopyWith<$Res>(_value.notificationSettings!, (value) {
      return _then(_value.copyWith(notificationSettings: value));
    });
  }
}

/// @nodoc

class _$NotificationSettingsStateFetched
    extends NotificationSettingsStateFetched {
  const _$NotificationSettingsStateFetched({this.notificationSettings})
      : super._();

  @override
  final UserSettings? notificationSettings;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationSettingsStateFetched &&
            const DeepCollectionEquality()
                .equals(other.notificationSettings, notificationSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(notificationSettings));

  @JsonKey(ignore: true)
  @override
  $NotificationSettingsStateFetchedCopyWith<NotificationSettingsStateFetched>
      get copyWith => _$NotificationSettingsStateFetchedCopyWithImpl<
          NotificationSettingsStateFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSettings? notificationSettings) loading,
    required TResult Function(UserSettings? notificationSettings) fetched,
    required TResult Function(String message) failed,
  }) {
    return fetched(notificationSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserSettings? notificationSettings)? loading,
    TResult Function(UserSettings? notificationSettings)? fetched,
    TResult Function(String message)? failed,
  }) {
    return fetched?.call(notificationSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSettings? notificationSettings)? loading,
    TResult Function(UserSettings? notificationSettings)? fetched,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(notificationSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationSettingsStateLoading value) loading,
    required TResult Function(NotificationSettingsStateFetched value) fetched,
    required TResult Function(NotificationSettingsStateFailure value) failed,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationSettingsStateLoading value)? loading,
    TResult Function(NotificationSettingsStateFetched value)? fetched,
    TResult Function(NotificationSettingsStateFailure value)? failed,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationSettingsStateLoading value)? loading,
    TResult Function(NotificationSettingsStateFetched value)? fetched,
    TResult Function(NotificationSettingsStateFailure value)? failed,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class NotificationSettingsStateFetched
    extends NotificationSettingsState {
  const factory NotificationSettingsStateFetched(
          {UserSettings? notificationSettings}) =
      _$NotificationSettingsStateFetched;
  const NotificationSettingsStateFetched._() : super._();

  UserSettings? get notificationSettings;
  @JsonKey(ignore: true)
  $NotificationSettingsStateFetchedCopyWith<NotificationSettingsStateFetched>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingsStateFailureCopyWith<$Res> {
  factory $NotificationSettingsStateFailureCopyWith(
          NotificationSettingsStateFailure value,
          $Res Function(NotificationSettingsStateFailure) then) =
      _$NotificationSettingsStateFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$NotificationSettingsStateFailureCopyWithImpl<$Res>
    extends _$NotificationSettingsStateCopyWithImpl<$Res>
    implements $NotificationSettingsStateFailureCopyWith<$Res> {
  _$NotificationSettingsStateFailureCopyWithImpl(
      NotificationSettingsStateFailure _value,
      $Res Function(NotificationSettingsStateFailure) _then)
      : super(_value, (v) => _then(v as NotificationSettingsStateFailure));

  @override
  NotificationSettingsStateFailure get _value =>
      super._value as NotificationSettingsStateFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(NotificationSettingsStateFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationSettingsStateFailure
    extends NotificationSettingsStateFailure {
  const _$NotificationSettingsStateFailure({required this.message}) : super._();

  @override
  final String message;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationSettingsStateFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $NotificationSettingsStateFailureCopyWith<NotificationSettingsStateFailure>
      get copyWith => _$NotificationSettingsStateFailureCopyWithImpl<
          NotificationSettingsStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSettings? notificationSettings) loading,
    required TResult Function(UserSettings? notificationSettings) fetched,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserSettings? notificationSettings)? loading,
    TResult Function(UserSettings? notificationSettings)? fetched,
    TResult Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSettings? notificationSettings)? loading,
    TResult Function(UserSettings? notificationSettings)? fetched,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationSettingsStateLoading value) loading,
    required TResult Function(NotificationSettingsStateFetched value) fetched,
    required TResult Function(NotificationSettingsStateFailure value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationSettingsStateLoading value)? loading,
    TResult Function(NotificationSettingsStateFetched value)? fetched,
    TResult Function(NotificationSettingsStateFailure value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationSettingsStateLoading value)? loading,
    TResult Function(NotificationSettingsStateFetched value)? fetched,
    TResult Function(NotificationSettingsStateFailure value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class NotificationSettingsStateFailure
    extends NotificationSettingsState {
  const factory NotificationSettingsStateFailure({required String message}) =
      _$NotificationSettingsStateFailure;
  const NotificationSettingsStateFailure._() : super._();

  String get message;
  @JsonKey(ignore: true)
  $NotificationSettingsStateFailureCopyWith<NotificationSettingsStateFailure>
      get copyWith => throw _privateConstructorUsedError;
}
