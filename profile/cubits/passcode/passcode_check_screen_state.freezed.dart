// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'passcode_check_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PasscodeCheckScreenStateTearOff {
  const _$PasscodeCheckScreenStateTearOff();

  _Locked locked() {
    return const _Locked();
  }

  _Unlocked unlocked() {
    return const _Unlocked();
  }

  _Failure failure({required NeosXException exception}) {
    return _Failure(
      exception: exception,
    );
  }
}

/// @nodoc
const $PasscodeCheckScreenState = _$PasscodeCheckScreenStateTearOff();

/// @nodoc
mixin _$PasscodeCheckScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locked,
    required TResult Function() unlocked,
    required TResult Function(NeosXException exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? locked,
    TResult Function()? unlocked,
    TResult Function(NeosXException exception)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locked,
    TResult Function()? unlocked,
    TResult Function(NeosXException exception)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasscodeCheckScreenStateCopyWith<$Res> {
  factory $PasscodeCheckScreenStateCopyWith(PasscodeCheckScreenState value,
          $Res Function(PasscodeCheckScreenState) then) =
      _$PasscodeCheckScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasscodeCheckScreenStateCopyWithImpl<$Res>
    implements $PasscodeCheckScreenStateCopyWith<$Res> {
  _$PasscodeCheckScreenStateCopyWithImpl(this._value, this._then);

  final PasscodeCheckScreenState _value;
  // ignore: unused_field
  final $Res Function(PasscodeCheckScreenState) _then;
}

/// @nodoc
abstract class _$LockedCopyWith<$Res> {
  factory _$LockedCopyWith(_Locked value, $Res Function(_Locked) then) =
      __$LockedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LockedCopyWithImpl<$Res>
    extends _$PasscodeCheckScreenStateCopyWithImpl<$Res>
    implements _$LockedCopyWith<$Res> {
  __$LockedCopyWithImpl(_Locked _value, $Res Function(_Locked) _then)
      : super(_value, (v) => _then(v as _Locked));

  @override
  _Locked get _value => super._value as _Locked;
}

/// @nodoc

class _$_Locked with DiagnosticableTreeMixin implements _Locked {
  const _$_Locked();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasscodeCheckScreenState.locked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PasscodeCheckScreenState.locked'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Locked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locked,
    required TResult Function() unlocked,
    required TResult Function(NeosXException exception) failure,
  }) {
    return locked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? locked,
    TResult Function()? unlocked,
    TResult Function(NeosXException exception)? failure,
  }) {
    return locked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locked,
    TResult Function()? unlocked,
    TResult Function(NeosXException exception)? failure,
    required TResult orElse(),
  }) {
    if (locked != null) {
      return locked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
    required TResult Function(_Failure value) failure,
  }) {
    return locked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    TResult Function(_Failure value)? failure,
  }) {
    return locked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (locked != null) {
      return locked(this);
    }
    return orElse();
  }
}

abstract class _Locked implements PasscodeCheckScreenState {
  const factory _Locked() = _$_Locked;
}

/// @nodoc
abstract class _$UnlockedCopyWith<$Res> {
  factory _$UnlockedCopyWith(_Unlocked value, $Res Function(_Unlocked) then) =
      __$UnlockedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnlockedCopyWithImpl<$Res>
    extends _$PasscodeCheckScreenStateCopyWithImpl<$Res>
    implements _$UnlockedCopyWith<$Res> {
  __$UnlockedCopyWithImpl(_Unlocked _value, $Res Function(_Unlocked) _then)
      : super(_value, (v) => _then(v as _Unlocked));

  @override
  _Unlocked get _value => super._value as _Unlocked;
}

/// @nodoc

class _$_Unlocked with DiagnosticableTreeMixin implements _Unlocked {
  const _$_Unlocked();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasscodeCheckScreenState.unlocked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PasscodeCheckScreenState.unlocked'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unlocked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locked,
    required TResult Function() unlocked,
    required TResult Function(NeosXException exception) failure,
  }) {
    return unlocked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? locked,
    TResult Function()? unlocked,
    TResult Function(NeosXException exception)? failure,
  }) {
    return unlocked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locked,
    TResult Function()? unlocked,
    TResult Function(NeosXException exception)? failure,
    required TResult orElse(),
  }) {
    if (unlocked != null) {
      return unlocked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
    required TResult Function(_Failure value) failure,
  }) {
    return unlocked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    TResult Function(_Failure value)? failure,
  }) {
    return unlocked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (unlocked != null) {
      return unlocked(this);
    }
    return orElse();
  }
}

abstract class _Unlocked implements PasscodeCheckScreenState {
  const factory _Unlocked() = _$_Unlocked;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({NeosXException exception});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$PasscodeCheckScreenStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_Failure(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as NeosXException,
    ));
  }
}

/// @nodoc

class _$_Failure with DiagnosticableTreeMixin implements _Failure {
  const _$_Failure({required this.exception});

  @override
  final NeosXException exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasscodeCheckScreenState.failure(exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PasscodeCheckScreenState.failure'))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locked,
    required TResult Function() unlocked,
    required TResult Function(NeosXException exception) failure,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? locked,
    TResult Function()? unlocked,
    TResult Function(NeosXException exception)? failure,
  }) {
    return failure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locked,
    TResult Function()? unlocked,
    TResult Function(NeosXException exception)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements PasscodeCheckScreenState {
  const factory _Failure({required NeosXException exception}) = _$_Failure;

  NeosXException get exception;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
