// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Country _$$_CountryFromJson(Map<String, dynamic> json) => _$_Country(
      domestic: json['domestic'] as bool,
      iso2Code: json['iso2Code'] as String,
      iso3Code: json['iso3Code'] as String,
      name: LocalizedNameRes.fromJson(json['name'] as Map<String, dynamic>),
      numericCode: json['numericCode'] as String,
    );

Map<String, dynamic> _$$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'domestic': instance.domestic,
      'iso2Code': instance.iso2Code,
      'iso3Code': instance.iso3Code,
      'name': instance.name,
      'numericCode': instance.numericCode,
    };
