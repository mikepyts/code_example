// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryDto _$$_CountryDtoFromJson(Map<String, dynamic> json) =>
    _$_CountryDto(
      domestic: json['domestic'] as bool? ?? true,
      iso2Code: json['iso2Code'] as String? ?? '',
      iso3Code: json['iso3Code'] as String? ?? '',
      name: const LocalizedNameResDtoConverter()
          .fromJson(json['name'] as Map<String, dynamic>?),
      numericCode: json['numericCode'] as String? ?? '',
    );

Map<String, dynamic> _$$_CountryDtoToJson(_$_CountryDto instance) =>
    <String, dynamic>{
      'domestic': instance.domestic,
      'iso2Code': instance.iso2Code,
      'iso3Code': instance.iso3Code,
      'name': const LocalizedNameResDtoConverter().toJson(instance.name),
      'numericCode': instance.numericCode,
    };
