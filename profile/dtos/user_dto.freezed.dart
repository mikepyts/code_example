// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

  _UserDto call(
      {UserAccountType accountType = UserDto.defaultUserAccountType,
      String birthDate = '',
      bool carPoolEnabled = false,
      String contractStartDate = '',
      String contractType = '',
      @CountryDtoConverter() CountryDto? country,
      String department = '',
      String division = '',
      String email = '',
      String employeeId = '',
      @LocalizedNameResDtoConverter() LocalizedNameResDto? name,
      String personalCode = '',
      String phone = '',
      String sector = '',
      String title = '',
      String username = '',
      List<int> qrImageData = const <int>[],
      String notes = ''}) {
    return _UserDto(
      accountType: accountType,
      birthDate: birthDate,
      carPoolEnabled: carPoolEnabled,
      contractStartDate: contractStartDate,
      contractType: contractType,
      country: country,
      department: department,
      division: division,
      email: email,
      employeeId: employeeId,
      name: name,
      personalCode: personalCode,
      phone: phone,
      sector: sector,
      title: title,
      username: username,
      qrImageData: qrImageData,
      notes: notes,
    );
  }

  UserDto fromJson(Map<String, Object?> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  UserAccountType get accountType => throw _privateConstructorUsedError;
  String get birthDate => throw _privateConstructorUsedError;
  bool get carPoolEnabled =>
      throw _privateConstructorUsedError; //ex. "2022-05-19T19:15:51.273Z":
  String get contractStartDate => throw _privateConstructorUsedError;
  String get contractType => throw _privateConstructorUsedError;
  @CountryDtoConverter()
  CountryDto? get country => throw _privateConstructorUsedError;
  String get department => throw _privateConstructorUsedError;
  String get division => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get employeeId => throw _privateConstructorUsedError;
  @LocalizedNameResDtoConverter()
  LocalizedNameResDto? get name => throw _privateConstructorUsedError;
  String get personalCode => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get sector => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get username =>
      throw _privateConstructorUsedError; //extra field added locally
  List<int> get qrImageData => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {UserAccountType accountType,
      String birthDate,
      bool carPoolEnabled,
      String contractStartDate,
      String contractType,
      @CountryDtoConverter() CountryDto? country,
      String department,
      String division,
      String email,
      String employeeId,
      @LocalizedNameResDtoConverter() LocalizedNameResDto? name,
      String personalCode,
      String phone,
      String sector,
      String title,
      String username,
      List<int> qrImageData,
      String notes});

  $CountryDtoCopyWith<$Res>? get country;
  $LocalizedNameResDtoCopyWith<$Res>? get name;
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object? accountType = freezed,
    Object? birthDate = freezed,
    Object? carPoolEnabled = freezed,
    Object? contractStartDate = freezed,
    Object? contractType = freezed,
    Object? country = freezed,
    Object? department = freezed,
    Object? division = freezed,
    Object? email = freezed,
    Object? employeeId = freezed,
    Object? name = freezed,
    Object? personalCode = freezed,
    Object? phone = freezed,
    Object? sector = freezed,
    Object? title = freezed,
    Object? username = freezed,
    Object? qrImageData = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      accountType: accountType == freezed
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as UserAccountType,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      carPoolEnabled: carPoolEnabled == freezed
          ? _value.carPoolEnabled
          : carPoolEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      contractStartDate: contractStartDate == freezed
          ? _value.contractStartDate
          : contractStartDate // ignore: cast_nullable_to_non_nullable
              as String,
      contractType: contractType == freezed
          ? _value.contractType
          : contractType // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryDto?,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      division: division == freezed
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedNameResDto?,
      personalCode: personalCode == freezed
          ? _value.personalCode
          : personalCode // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      sector: sector == freezed
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      qrImageData: qrImageData == freezed
          ? _value.qrImageData
          : qrImageData // ignore: cast_nullable_to_non_nullable
              as List<int>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $CountryDtoCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryDtoCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value));
    });
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
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserAccountType accountType,
      String birthDate,
      bool carPoolEnabled,
      String contractStartDate,
      String contractType,
      @CountryDtoConverter() CountryDto? country,
      String department,
      String division,
      String email,
      String employeeId,
      @LocalizedNameResDtoConverter() LocalizedNameResDto? name,
      String personalCode,
      String phone,
      String sector,
      String title,
      String username,
      List<int> qrImageData,
      String notes});

  @override
  $CountryDtoCopyWith<$Res>? get country;
  @override
  $LocalizedNameResDtoCopyWith<$Res>? get name;
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object? accountType = freezed,
    Object? birthDate = freezed,
    Object? carPoolEnabled = freezed,
    Object? contractStartDate = freezed,
    Object? contractType = freezed,
    Object? country = freezed,
    Object? department = freezed,
    Object? division = freezed,
    Object? email = freezed,
    Object? employeeId = freezed,
    Object? name = freezed,
    Object? personalCode = freezed,
    Object? phone = freezed,
    Object? sector = freezed,
    Object? title = freezed,
    Object? username = freezed,
    Object? qrImageData = freezed,
    Object? notes = freezed,
  }) {
    return _then(_UserDto(
      accountType: accountType == freezed
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as UserAccountType,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      carPoolEnabled: carPoolEnabled == freezed
          ? _value.carPoolEnabled
          : carPoolEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      contractStartDate: contractStartDate == freezed
          ? _value.contractStartDate
          : contractStartDate // ignore: cast_nullable_to_non_nullable
              as String,
      contractType: contractType == freezed
          ? _value.contractType
          : contractType // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryDto?,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      division: division == freezed
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedNameResDto?,
      personalCode: personalCode == freezed
          ? _value.personalCode
          : personalCode // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      sector: sector == freezed
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      qrImageData: qrImageData == freezed
          ? _value.qrImageData
          : qrImageData // ignore: cast_nullable_to_non_nullable
              as List<int>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {this.accountType = UserDto.defaultUserAccountType,
      this.birthDate = '',
      this.carPoolEnabled = false,
      this.contractStartDate = '',
      this.contractType = '',
      @CountryDtoConverter() this.country,
      this.department = '',
      this.division = '',
      this.email = '',
      this.employeeId = '',
      @LocalizedNameResDtoConverter() this.name,
      this.personalCode = '',
      this.phone = '',
      this.sector = '',
      this.title = '',
      this.username = '',
      this.qrImageData = const <int>[],
      this.notes = ''})
      : super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @JsonKey()
  @override
  final UserAccountType accountType;
  @JsonKey()
  @override
  final String birthDate;
  @JsonKey()
  @override
  final bool carPoolEnabled;
  @JsonKey()
  @override //ex. "2022-05-19T19:15:51.273Z":
  final String contractStartDate;
  @JsonKey()
  @override
  final String contractType;
  @override
  @CountryDtoConverter()
  final CountryDto? country;
  @JsonKey()
  @override
  final String department;
  @JsonKey()
  @override
  final String division;
  @JsonKey()
  @override
  final String email;
  @JsonKey()
  @override
  final String employeeId;
  @override
  @LocalizedNameResDtoConverter()
  final LocalizedNameResDto? name;
  @JsonKey()
  @override
  final String personalCode;
  @JsonKey()
  @override
  final String phone;
  @JsonKey()
  @override
  final String sector;
  @JsonKey()
  @override
  final String title;
  @JsonKey()
  @override
  final String username;
  @JsonKey()
  @override //extra field added locally
  final List<int> qrImageData;
  @JsonKey()
  @override
  final String notes;

  @override
  String toString() {
    return 'UserDto(accountType: $accountType, birthDate: $birthDate, carPoolEnabled: $carPoolEnabled, contractStartDate: $contractStartDate, contractType: $contractType, country: $country, department: $department, division: $division, email: $email, employeeId: $employeeId, name: $name, personalCode: $personalCode, phone: $phone, sector: $sector, title: $title, username: $username, qrImageData: $qrImageData, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDto &&
            const DeepCollectionEquality()
                .equals(other.accountType, accountType) &&
            const DeepCollectionEquality().equals(other.birthDate, birthDate) &&
            const DeepCollectionEquality()
                .equals(other.carPoolEnabled, carPoolEnabled) &&
            const DeepCollectionEquality()
                .equals(other.contractStartDate, contractStartDate) &&
            const DeepCollectionEquality()
                .equals(other.contractType, contractType) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.department, department) &&
            const DeepCollectionEquality().equals(other.division, division) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.employeeId, employeeId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.personalCode, personalCode) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.sector, sector) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.qrImageData, qrImageData) &&
            const DeepCollectionEquality().equals(other.notes, notes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accountType),
      const DeepCollectionEquality().hash(birthDate),
      const DeepCollectionEquality().hash(carPoolEnabled),
      const DeepCollectionEquality().hash(contractStartDate),
      const DeepCollectionEquality().hash(contractType),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(department),
      const DeepCollectionEquality().hash(division),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(employeeId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(personalCode),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(sector),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(qrImageData),
      const DeepCollectionEquality().hash(notes));

  @JsonKey(ignore: true)
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {UserAccountType accountType,
      String birthDate,
      bool carPoolEnabled,
      String contractStartDate,
      String contractType,
      @CountryDtoConverter() CountryDto? country,
      String department,
      String division,
      String email,
      String employeeId,
      @LocalizedNameResDtoConverter() LocalizedNameResDto? name,
      String personalCode,
      String phone,
      String sector,
      String title,
      String username,
      List<int> qrImageData,
      String notes}) = _$_UserDto;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  UserAccountType get accountType;
  @override
  String get birthDate;
  @override
  bool get carPoolEnabled;
  @override //ex. "2022-05-19T19:15:51.273Z":
  String get contractStartDate;
  @override
  String get contractType;
  @override
  @CountryDtoConverter()
  CountryDto? get country;
  @override
  String get department;
  @override
  String get division;
  @override
  String get email;
  @override
  String get employeeId;
  @override
  @LocalizedNameResDtoConverter()
  LocalizedNameResDto? get name;
  @override
  String get personalCode;
  @override
  String get phone;
  @override
  String get sector;
  @override
  String get title;
  @override
  String get username;
  @override //extra field added locally
  List<int> get qrImageData;
  @override
  String get notes;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
