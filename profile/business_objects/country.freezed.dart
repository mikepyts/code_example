// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
class _$CountryTearOff {
  const _$CountryTearOff();

  _Country call(
      {required bool domestic,
      required String iso2Code,
      required String iso3Code,
      required LocalizedNameRes name,
      required String numericCode}) {
    return _Country(
      domestic: domestic,
      iso2Code: iso2Code,
      iso3Code: iso3Code,
      name: name,
      numericCode: numericCode,
    );
  }

  Country fromJson(Map<String, Object?> json) {
    return Country.fromJson(json);
  }
}

/// @nodoc
const $Country = _$CountryTearOff();

/// @nodoc
mixin _$Country {
  bool get domestic => throw _privateConstructorUsedError;
  String get iso2Code => throw _privateConstructorUsedError;
  String get iso3Code => throw _privateConstructorUsedError;
  LocalizedNameRes get name => throw _privateConstructorUsedError;
  String get numericCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call(
      {bool domestic,
      String iso2Code,
      String iso3Code,
      LocalizedNameRes name,
      String numericCode});

  $LocalizedNameResCopyWith<$Res> get name;
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object? domestic = freezed,
    Object? iso2Code = freezed,
    Object? iso3Code = freezed,
    Object? name = freezed,
    Object? numericCode = freezed,
  }) {
    return _then(_value.copyWith(
      domestic: domestic == freezed
          ? _value.domestic
          : domestic // ignore: cast_nullable_to_non_nullable
              as bool,
      iso2Code: iso2Code == freezed
          ? _value.iso2Code
          : iso2Code // ignore: cast_nullable_to_non_nullable
              as String,
      iso3Code: iso3Code == freezed
          ? _value.iso3Code
          : iso3Code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedNameRes,
      numericCode: numericCode == freezed
          ? _value.numericCode
          : numericCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $LocalizedNameResCopyWith<$Res> get name {
    return $LocalizedNameResCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc
abstract class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) then) =
      __$CountryCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool domestic,
      String iso2Code,
      String iso3Code,
      LocalizedNameRes name,
      String numericCode});

  @override
  $LocalizedNameResCopyWith<$Res> get name;
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(_Country _value, $Res Function(_Country) _then)
      : super(_value, (v) => _then(v as _Country));

  @override
  _Country get _value => super._value as _Country;

  @override
  $Res call({
    Object? domestic = freezed,
    Object? iso2Code = freezed,
    Object? iso3Code = freezed,
    Object? name = freezed,
    Object? numericCode = freezed,
  }) {
    return _then(_Country(
      domestic: domestic == freezed
          ? _value.domestic
          : domestic // ignore: cast_nullable_to_non_nullable
              as bool,
      iso2Code: iso2Code == freezed
          ? _value.iso2Code
          : iso2Code // ignore: cast_nullable_to_non_nullable
              as String,
      iso3Code: iso3Code == freezed
          ? _value.iso3Code
          : iso3Code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedNameRes,
      numericCode: numericCode == freezed
          ? _value.numericCode
          : numericCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Country extends _Country {
  _$_Country(
      {required this.domestic,
      required this.iso2Code,
      required this.iso3Code,
      required this.name,
      required this.numericCode})
      : super._();

  factory _$_Country.fromJson(Map<String, dynamic> json) =>
      _$$_CountryFromJson(json);

  @override
  final bool domestic;
  @override
  final String iso2Code;
  @override
  final String iso3Code;
  @override
  final LocalizedNameRes name;
  @override
  final String numericCode;

  @override
  String toString() {
    return 'Country(domestic: $domestic, iso2Code: $iso2Code, iso3Code: $iso3Code, name: $name, numericCode: $numericCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Country &&
            const DeepCollectionEquality().equals(other.domestic, domestic) &&
            const DeepCollectionEquality().equals(other.iso2Code, iso2Code) &&
            const DeepCollectionEquality().equals(other.iso3Code, iso3Code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.numericCode, numericCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(domestic),
      const DeepCollectionEquality().hash(iso2Code),
      const DeepCollectionEquality().hash(iso3Code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(numericCode));

  @JsonKey(ignore: true)
  @override
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryToJson(this);
  }
}

abstract class _Country extends Country {
  factory _Country(
      {required bool domestic,
      required String iso2Code,
      required String iso3Code,
      required LocalizedNameRes name,
      required String numericCode}) = _$_Country;
  _Country._() : super._();

  factory _Country.fromJson(Map<String, dynamic> json) = _$_Country.fromJson;

  @override
  bool get domestic;
  @override
  String get iso2Code;
  @override
  String get iso3Code;
  @override
  LocalizedNameRes get name;
  @override
  String get numericCode;
  @override
  @JsonKey(ignore: true)
  _$CountryCopyWith<_Country> get copyWith =>
      throw _privateConstructorUsedError;
}
