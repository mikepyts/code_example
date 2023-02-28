// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileCardStateTearOff {
  const _$ProfileCardStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Fetched fetched({required User user}) {
    return _Fetched(
      user: user,
    );
  }

  _Failure failed({required String message}) {
    return _Failure(
      message: message,
    );
  }

  _LoadingBusinessQRCode loadingBusinessQRCode() {
    return const _LoadingBusinessQRCode();
  }
}

/// @nodoc
const $ProfileCardState = _$ProfileCardStateTearOff();

/// @nodoc
mixin _$ProfileCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) fetched,
    required TResult Function(String message) failed,
    required TResult Function() loadingBusinessQRCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? fetched,
    TResult Function(String message)? failed,
    TResult Function()? loadingBusinessQRCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? fetched,
    TResult Function(String message)? failed,
    TResult Function()? loadingBusinessQRCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Failure value) failed,
    required TResult Function(_LoadingBusinessQRCode value)
        loadingBusinessQRCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failure value)? failed,
    TResult Function(_LoadingBusinessQRCode value)? loadingBusinessQRCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failure value)? failed,
    TResult Function(_LoadingBusinessQRCode value)? loadingBusinessQRCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCardStateCopyWith<$Res> {
  factory $ProfileCardStateCopyWith(
          ProfileCardState value, $Res Function(ProfileCardState) then) =
      _$ProfileCardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileCardStateCopyWithImpl<$Res>
    implements $ProfileCardStateCopyWith<$Res> {
  _$ProfileCardStateCopyWithImpl(this._value, this._then);

  final ProfileCardState _value;
  // ignore: unused_field
  final $Res Function(ProfileCardState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ProfileCardStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) fetched,
    required TResult Function(String message) failed,
    required TResult Function() loadingBusinessQRCode,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? fetched,
    TResult Function(String message)? failed,
    TResult Function()? loadingBusinessQRCode,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? fetched,
    TResult Function(String message)? failed,
    TResult Function()? loadingBusinessQRCode,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Failure value) failed,
    required TResult Function(_LoadingBusinessQRCode value)
        loadingBusinessQRCode,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failure value)? failed,
    TResult Function(_LoadingBusinessQRCode value)? loadingBusinessQRCode,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failure value)? failed,
    TResult Function(_LoadingBusinessQRCode value)? loadingBusinessQRCode,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends ProfileCardState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$FetchedCopyWith<$Res> {
  factory _$FetchedCopyWith(_Fetched value, $Res Function(_Fetched) then) =
      __$FetchedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$FetchedCopyWithImpl<$Res> extends _$ProfileCardStateCopyWithImpl<$Res>
    implements _$FetchedCopyWith<$Res> {
  __$FetchedCopyWithImpl(_Fetched _value, $Res Function(_Fetched) _then)
      : super(_value, (v) => _then(v as _Fetched));

  @override
  _Fetched get _value => super._value as _Fetched;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Fetched(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Fetched extends _Fetched {
  const _$_Fetched({required this.user}) : super._();

  @override
  final User user;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Fetched &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$FetchedCopyWith<_Fetched> get copyWith =>
      __$FetchedCopyWithImpl<_Fetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) fetched,
    required TResult Function(String message) failed,
    required TResult Function() loadingBusinessQRCode,
  }) {
    return fetched(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? fetched,
    TResult Function(String message)? failed,
    TResult Function()? loadingBusinessQRCode,
  }) {
    return fetched?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? fetched,
    TResult Function(String message)? failed,
    TResult Function()? loadingBusinessQRCode,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Failure value) failed,
    required TResult Function(_LoadingBusinessQRCode value)
        loadingBusinessQRCode,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failure value)? failed,
    TResult Function(_LoadingBusinessQRCode value)? loadingBusinessQRCode,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failure value)? failed,
    TResult Function(_LoadingBusinessQRCode value)? loadingBusinessQRCode,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched extends ProfileCardState {
  const factory _Fetched({required User user}) = _$_Fetched;
  const _Fetched._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$FetchedCopyWith<_Fetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$ProfileCardStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Failure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure({required this.message}) : super._();

  @override
  final String message;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) fetched,
    required TResult Function(String message) failed,
    required TResult Function() loadingBusinessQRCode,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? fetched,
    TResult Function(String message)? failed,
    TResult Function()? loadingBusinessQRCode,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? fetched,
    TResult Function(String message)? failed,
    TResult Function()? loadingBusinessQRCode,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Failure value) failed,
    required TResult Function(_LoadingBusinessQRCode value)
        loadingBusinessQRCode,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failure value)? failed,
    TResult Function(_LoadingBusinessQRCode value)? loadingBusinessQRCode,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failure value)? failed,
    TResult Function(_LoadingBusinessQRCode value)? loadingBusinessQRCode,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failure extends ProfileCardState {
  const factory _Failure({required String message}) = _$_Failure;
  const _Failure._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingBusinessQRCodeCopyWith<$Res> {
  factory _$LoadingBusinessQRCodeCopyWith(_LoadingBusinessQRCode value,
          $Res Function(_LoadingBusinessQRCode) then) =
      __$LoadingBusinessQRCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingBusinessQRCodeCopyWithImpl<$Res>
    extends _$ProfileCardStateCopyWithImpl<$Res>
    implements _$LoadingBusinessQRCodeCopyWith<$Res> {
  __$LoadingBusinessQRCodeCopyWithImpl(_LoadingBusinessQRCode _value,
      $Res Function(_LoadingBusinessQRCode) _then)
      : super(_value, (v) => _then(v as _LoadingBusinessQRCode));

  @override
  _LoadingBusinessQRCode get _value => super._value as _LoadingBusinessQRCode;
}

/// @nodoc

class _$_LoadingBusinessQRCode extends _LoadingBusinessQRCode {
  const _$_LoadingBusinessQRCode() : super._();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingBusinessQRCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) fetched,
    required TResult Function(String message) failed,
    required TResult Function() loadingBusinessQRCode,
  }) {
    return loadingBusinessQRCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? fetched,
    TResult Function(String message)? failed,
    TResult Function()? loadingBusinessQRCode,
  }) {
    return loadingBusinessQRCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? fetched,
    TResult Function(String message)? failed,
    TResult Function()? loadingBusinessQRCode,
    required TResult orElse(),
  }) {
    if (loadingBusinessQRCode != null) {
      return loadingBusinessQRCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Failure value) failed,
    required TResult Function(_LoadingBusinessQRCode value)
        loadingBusinessQRCode,
  }) {
    return loadingBusinessQRCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failure value)? failed,
    TResult Function(_LoadingBusinessQRCode value)? loadingBusinessQRCode,
  }) {
    return loadingBusinessQRCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failure value)? failed,
    TResult Function(_LoadingBusinessQRCode value)? loadingBusinessQRCode,
    required TResult orElse(),
  }) {
    if (loadingBusinessQRCode != null) {
      return loadingBusinessQRCode(this);
    }
    return orElse();
  }
}

abstract class _LoadingBusinessQRCode extends ProfileCardState {
  const factory _LoadingBusinessQRCode() = _$_LoadingBusinessQRCode;
  const _LoadingBusinessQRCode._() : super._();
}
