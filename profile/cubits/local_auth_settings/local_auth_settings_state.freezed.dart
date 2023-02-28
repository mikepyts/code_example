// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local_auth_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocalAuthSettingsStateTearOff {
  const _$LocalAuthSettingsStateTearOff();

  LocalAuthSettingsLoading loading() {
    return const LocalAuthSettingsLoading();
  }

  LocalAuthSettingsFailure failed({required String message}) {
    return LocalAuthSettingsFailure(
      message: message,
    );
  }

  LocalAuthSettingsSucceed success({required String message}) {
    return LocalAuthSettingsSucceed(
      message: message,
    );
  }
}

/// @nodoc
const $LocalAuthSettingsState = _$LocalAuthSettingsStateTearOff();

/// @nodoc
mixin _$LocalAuthSettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String message) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String message)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalAuthSettingsLoading value) loading,
    required TResult Function(LocalAuthSettingsFailure value) failed,
    required TResult Function(LocalAuthSettingsSucceed value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocalAuthSettingsLoading value)? loading,
    TResult Function(LocalAuthSettingsFailure value)? failed,
    TResult Function(LocalAuthSettingsSucceed value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalAuthSettingsLoading value)? loading,
    TResult Function(LocalAuthSettingsFailure value)? failed,
    TResult Function(LocalAuthSettingsSucceed value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalAuthSettingsStateCopyWith<$Res> {
  factory $LocalAuthSettingsStateCopyWith(LocalAuthSettingsState value,
          $Res Function(LocalAuthSettingsState) then) =
      _$LocalAuthSettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocalAuthSettingsStateCopyWithImpl<$Res>
    implements $LocalAuthSettingsStateCopyWith<$Res> {
  _$LocalAuthSettingsStateCopyWithImpl(this._value, this._then);

  final LocalAuthSettingsState _value;
  // ignore: unused_field
  final $Res Function(LocalAuthSettingsState) _then;
}

/// @nodoc
abstract class $LocalAuthSettingsLoadingCopyWith<$Res> {
  factory $LocalAuthSettingsLoadingCopyWith(LocalAuthSettingsLoading value,
          $Res Function(LocalAuthSettingsLoading) then) =
      _$LocalAuthSettingsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocalAuthSettingsLoadingCopyWithImpl<$Res>
    extends _$LocalAuthSettingsStateCopyWithImpl<$Res>
    implements $LocalAuthSettingsLoadingCopyWith<$Res> {
  _$LocalAuthSettingsLoadingCopyWithImpl(LocalAuthSettingsLoading _value,
      $Res Function(LocalAuthSettingsLoading) _then)
      : super(_value, (v) => _then(v as LocalAuthSettingsLoading));

  @override
  LocalAuthSettingsLoading get _value =>
      super._value as LocalAuthSettingsLoading;
}

/// @nodoc

class _$LocalAuthSettingsLoading extends LocalAuthSettingsLoading {
  const _$LocalAuthSettingsLoading() : super._();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocalAuthSettingsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String message) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String message)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalAuthSettingsLoading value) loading,
    required TResult Function(LocalAuthSettingsFailure value) failed,
    required TResult Function(LocalAuthSettingsSucceed value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocalAuthSettingsLoading value)? loading,
    TResult Function(LocalAuthSettingsFailure value)? failed,
    TResult Function(LocalAuthSettingsSucceed value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalAuthSettingsLoading value)? loading,
    TResult Function(LocalAuthSettingsFailure value)? failed,
    TResult Function(LocalAuthSettingsSucceed value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocalAuthSettingsLoading extends LocalAuthSettingsState {
  const factory LocalAuthSettingsLoading() = _$LocalAuthSettingsLoading;
  const LocalAuthSettingsLoading._() : super._();
}

/// @nodoc
abstract class $LocalAuthSettingsFailureCopyWith<$Res> {
  factory $LocalAuthSettingsFailureCopyWith(LocalAuthSettingsFailure value,
          $Res Function(LocalAuthSettingsFailure) then) =
      _$LocalAuthSettingsFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$LocalAuthSettingsFailureCopyWithImpl<$Res>
    extends _$LocalAuthSettingsStateCopyWithImpl<$Res>
    implements $LocalAuthSettingsFailureCopyWith<$Res> {
  _$LocalAuthSettingsFailureCopyWithImpl(LocalAuthSettingsFailure _value,
      $Res Function(LocalAuthSettingsFailure) _then)
      : super(_value, (v) => _then(v as LocalAuthSettingsFailure));

  @override
  LocalAuthSettingsFailure get _value =>
      super._value as LocalAuthSettingsFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(LocalAuthSettingsFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalAuthSettingsFailure extends LocalAuthSettingsFailure {
  const _$LocalAuthSettingsFailure({required this.message}) : super._();

  @override
  final String message;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalAuthSettingsFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $LocalAuthSettingsFailureCopyWith<LocalAuthSettingsFailure> get copyWith =>
      _$LocalAuthSettingsFailureCopyWithImpl<LocalAuthSettingsFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String message) success,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String message)? success,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String message)? success,
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
    required TResult Function(LocalAuthSettingsLoading value) loading,
    required TResult Function(LocalAuthSettingsFailure value) failed,
    required TResult Function(LocalAuthSettingsSucceed value) success,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocalAuthSettingsLoading value)? loading,
    TResult Function(LocalAuthSettingsFailure value)? failed,
    TResult Function(LocalAuthSettingsSucceed value)? success,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalAuthSettingsLoading value)? loading,
    TResult Function(LocalAuthSettingsFailure value)? failed,
    TResult Function(LocalAuthSettingsSucceed value)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class LocalAuthSettingsFailure extends LocalAuthSettingsState {
  const factory LocalAuthSettingsFailure({required String message}) =
      _$LocalAuthSettingsFailure;
  const LocalAuthSettingsFailure._() : super._();

  String get message;
  @JsonKey(ignore: true)
  $LocalAuthSettingsFailureCopyWith<LocalAuthSettingsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalAuthSettingsSucceedCopyWith<$Res> {
  factory $LocalAuthSettingsSucceedCopyWith(LocalAuthSettingsSucceed value,
          $Res Function(LocalAuthSettingsSucceed) then) =
      _$LocalAuthSettingsSucceedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$LocalAuthSettingsSucceedCopyWithImpl<$Res>
    extends _$LocalAuthSettingsStateCopyWithImpl<$Res>
    implements $LocalAuthSettingsSucceedCopyWith<$Res> {
  _$LocalAuthSettingsSucceedCopyWithImpl(LocalAuthSettingsSucceed _value,
      $Res Function(LocalAuthSettingsSucceed) _then)
      : super(_value, (v) => _then(v as LocalAuthSettingsSucceed));

  @override
  LocalAuthSettingsSucceed get _value =>
      super._value as LocalAuthSettingsSucceed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(LocalAuthSettingsSucceed(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalAuthSettingsSucceed extends LocalAuthSettingsSucceed {
  const _$LocalAuthSettingsSucceed({required this.message}) : super._();

  @override
  final String message;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalAuthSettingsSucceed &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $LocalAuthSettingsSucceedCopyWith<LocalAuthSettingsSucceed> get copyWith =>
      _$LocalAuthSettingsSucceedCopyWithImpl<LocalAuthSettingsSucceed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String message) success,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String message)? success,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalAuthSettingsLoading value) loading,
    required TResult Function(LocalAuthSettingsFailure value) failed,
    required TResult Function(LocalAuthSettingsSucceed value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocalAuthSettingsLoading value)? loading,
    TResult Function(LocalAuthSettingsFailure value)? failed,
    TResult Function(LocalAuthSettingsSucceed value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalAuthSettingsLoading value)? loading,
    TResult Function(LocalAuthSettingsFailure value)? failed,
    TResult Function(LocalAuthSettingsSucceed value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LocalAuthSettingsSucceed extends LocalAuthSettingsState {
  const factory LocalAuthSettingsSucceed({required String message}) =
      _$LocalAuthSettingsSucceed;
  const LocalAuthSettingsSucceed._() : super._();

  String get message;
  @JsonKey(ignore: true)
  $LocalAuthSettingsSucceedCopyWith<LocalAuthSettingsSucceed> get copyWith =>
      throw _privateConstructorUsedError;
}
