// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryDto _$CountryDtoFromJson(Map<String, dynamic> json) {
  return _CountryDto.fromJson(json);
}

/// @nodoc
class _$CountryDtoTearOff {
  const _$CountryDtoTearOff();

  _CountryDto call(
      {bool domestic = true,
      String iso2Code = '',
      String iso3Code = '',
      @LocalizedNameResDtoConverter() LocalizedNameResDto? name,
      String numericCode = ''}) {
    return _CountryDto(
      domestic: domestic,
      iso2Code: iso2Code,
      iso3Code: iso3Code,
      name: name,
      numericCode: numericCode,
    );
  }

  CountryDto fromJson(Map<String, Object?> json) {
    return CountryDto.fromJson(json);
  }
}

/// @nodoc
const $CountryDto = _$CountryDtoTearOff();

/// @nodoc
mixin _$CountryDto {
  bool get domestic => throw _privateConstructorUsedError;
  String get iso2Code => throw _privateConstructorUsedError;
  String get iso3Code => throw _privateConstructorUsedError;
  @LocalizedNameResDtoConverter()
  LocalizedNameResDto? get name => throw _privateConstructorUsedError;
  String get numericCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDtoCopyWith<CountryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDtoCopyWith<$Res> {
  factory $CountryDtoCopyWith(
          CountryDto value, $Res Function(CountryDto) then) =
      _$CountryDtoCopyWithImpl<$Res>;
  $Res call(
      {bool domestic,
      String iso2Code,
      String iso3Code,
      @LocalizedNameResDtoConverter() LocalizedNameResDto? name,
      String numericCode});

  $LocalizedNameResDtoCopyWith<$Res>? get name;
}

/// @nodoc
class _$CountryDtoCopyWithImpl<$Res> implements $CountryDtoCopyWith<$Res> {
  _$CountryDtoCopyWithImpl(this._value, this._then);

  final CountryDto _value;
  // ignore: unused_field
  final $Res Function(CountryDto) _then;

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
              as LocalizedNameResDto?,
      numericCode: numericCode == freezed
          ? _value.numericCode
          : numericCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $LocalizedNameResDtoCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $LocalizedNameResDtoCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc
abstract class _$CountryDtoCopyWith<$Res> implements $CountryDtoCopyWith<$Res> {
  factory _$CountryDtoCopyWith(
          _CountryDto value, $Res Function(_CountryDto) then) =
      __$CountryDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool domestic,
      String iso2Code,
      String iso3Code,
      @LocalizedNameResDtoConverter() LocalizedNameResDto? name,
      String numericCode});

  @override
  $LocalizedNameResDtoCopyWith<$Res>? get name;
}

/// @nodoc
class __$CountryDtoCopyWithImpl<$Res> extends _$CountryDtoCopyWithImpl<$Res>
    implements _$CountryDtoCopyWith<$Res> {
  __$CountryDtoCopyWithImpl(
      _CountryDto _value, $Res Function(_CountryDto) _then)
      : super(_value, (v) => _then(v as _CountryDto));

  @override
  _CountryDto get _value => super._value as _CountryDto;

  @override
  $Res call({
    Object? domestic = freezed,
    Object? iso2Code = freezed,
    Object? iso3Code = freezed,
    Object? name = freezed,
    Object? numericCode = freezed,
  }) {
    return _then(_CountryDto(
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
              as LocalizedNameResDto?,
      numericCode: numericCode == freezed
          ? _value.numericCode
          : numericCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryDto extends _CountryDto {
  _$_CountryDto(
      {this.domestic = true,
      this.iso2Code = '',
      this.iso3Code = '',
      @LocalizedNameResDtoConverter() this.name,
      this.numericCode = ''})
      : super._();

  factory _$_CountryDto.fromJson(Map<String, dynamic> json) =>
      _$$_CountryDtoFromJson(json);

  @JsonKey()
  @override
  final bool domestic;
  @JsonKey()
  @override
  final String iso2Code;
  @JsonKey()
  @override
  final String iso3Code;
  @override
  @LocalizedNameResDtoConverter()
  final LocalizedNameResDto? name;
  @JsonKey()
  @override
  final String numericCode;

  @override
  String toString() {
    return 'CountryDto(domestic: $domestic, iso2Code: $iso2Code, iso3Code: $iso3Code, name: $name, numericCode: $numericCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CountryDto &&
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
  _$CountryDtoCopyWith<_CountryDto> get copyWith =>
      __$CountryDtoCopyWithImpl<_CountryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryDtoToJson(this);
  }
}

abstract class _CountryDto extends CountryDto {
  factory _CountryDto(
      {bool domestic,
      String iso2Code,
      String iso3Code,
      @LocalizedNameResDtoConverter() LocalizedNameResDto? name,
      String numericCode}) = _$_CountryDto;
  _CountryDto._() : super._();

  factory _CountryDto.fromJson(Map<String, dynamic> json) =
      _$_CountryDto.fromJson;

  @override
  bool get domestic;
  @override
  String get iso2Code;
  @override
  String get iso3Code;
  @override
  @LocalizedNameResDtoConverter()
  LocalizedNameResDto? get name;
  @override
  String get numericCode;
  @override
  @JsonKey(ignore: true)
  _$CountryDtoCopyWith<_CountryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
