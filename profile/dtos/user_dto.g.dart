// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      accountType:
          $enumDecodeNullable(_$UserAccountTypeEnumMap, json['accountType']) ??
              UserDto.defaultUserAccountType,
      birthDate: json['birthDate'] as String? ?? '',
      carPoolEnabled: json['carPoolEnabled'] as bool? ?? false,
      contractStartDate: json['contractStartDate'] as String? ?? '',
      contractType: json['contractType'] as String? ?? '',
      country: const CountryDtoConverter()
          .fromJson(json['country'] as Map<String, dynamic>?),
      department: json['department'] as String? ?? '',
      division: json['division'] as String? ?? '',
      email: json['email'] as String? ?? '',
      employeeId: json['employeeId'] as String? ?? '',
      name: const LocalizedNameResDtoConverter()
          .fromJson(json['name'] as Map<String, dynamic>?),
      personalCode: json['personalCode'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      sector: json['sector'] as String? ?? '',
      title: json['title'] as String? ?? '',
      username: json['username'] as String? ?? '',
      qrImageData: (json['qrImageData'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const <int>[],
      notes: json['notes'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'accountType': _$UserAccountTypeEnumMap[instance.accountType],
      'birthDate': instance.birthDate,
      'carPoolEnabled': instance.carPoolEnabled,
      'contractStartDate': instance.contractStartDate,
      'contractType': instance.contractType,
      'country': const CountryDtoConverter().toJson(instance.country),
      'department': instance.department,
      'division': instance.division,
      'email': instance.email,
      'employeeId': instance.employeeId,
      'name': const LocalizedNameResDtoConverter().toJson(instance.name),
      'personalCode': instance.personalCode,
      'phone': instance.phone,
      'sector': instance.sector,
      'title': instance.title,
      'username': instance.username,
      'qrImageData': instance.qrImageData,
      'notes': instance.notes,
    };

const _$UserAccountTypeEnumMap = {
  UserAccountType.contractor: 'CONTRACTOR',
  UserAccountType.employee: 'EMPLOYEE',
  UserAccountType.general: 'GENERAL',
  UserAccountType.resident: 'RESIDENT',
  UserAccountType.smp: 'SMP',
  UserAccountType.visitor: 'VISITOR',
};
