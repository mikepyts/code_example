// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserSettingsDto _$$_UserSettingsDtoFromJson(Map<String, dynamic> json) =>
    _$_UserSettingsDto(
      enabled: (json['enabled'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$NotificationTypeEnumMap, e))
              .toList() ??
          const <NotificationType>[],
    );

Map<String, dynamic> _$$_UserSettingsDtoToJson(_$_UserSettingsDto instance) =>
    <String, dynamic>{
      'enabled':
          instance.enabled.map((e) => _$NotificationTypeEnumMap[e]).toList(),
    };

const _$NotificationTypeEnumMap = {
  NotificationType.important: 'IMPORTANT_NOTIFICATION',
  NotificationType.appointments: 'APPOINTMENT_NOTIFICATION',
  NotificationType.communityUpdates: 'COMMUNITY_UPDATE',
};
