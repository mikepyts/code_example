import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neosx/profile/business_objects/user_settings.dart';

part 'user_settings_dto.freezed.dart';
part 'user_settings_dto.g.dart';

/// User settings business object
@freezed
class UserSettingsDto with _$UserSettingsDto {
  const factory UserSettingsDto({
    @Default(<NotificationType>[]) List<NotificationType> enabled,
  }) = _UserSettingsDto;

  const UserSettingsDto._();

  /// Converts [UserSettings] into [UserSettingsDto]
  factory UserSettingsDto.fromBo(UserSettings bo) {
    final enabled = <NotificationType>[];

    if (bo.isNotificationImportant && !enabled.contains(NotificationType.important)) {
      enabled.add(NotificationType.important);
    }

    if (bo.isNotificationAppointments && !enabled.contains(NotificationType.appointments)) {
      enabled.add(NotificationType.appointments);
    }

    if (bo.isNotificationCommunityUpdates && !enabled.contains(NotificationType.communityUpdates)) {
      enabled.add(NotificationType.communityUpdates);
    }

    return UserSettingsDto(
      enabled: enabled,
    );
  }

  /// Converts [UserSettingsDto] into [UserSettings]
  UserSettings toBo() => UserSettings(
        isNotificationImportant: enabled.any(
          (element) => element == NotificationType.important,
        ),
        isNotificationAppointments: enabled.any(
          (element) => element == NotificationType.appointments,
        ),
        isNotificationCommunityUpdates: enabled.any(
          (element) => element == NotificationType.communityUpdates,
        ),
      );

  /// From Json
  factory UserSettingsDto.fromJson(Map<String, dynamic> json) => _$UserSettingsDtoFromJson(json);
}

enum NotificationType {
  @JsonValue('IMPORTANT_NOTIFICATION')
  important,
  @JsonValue('APPOINTMENT_NOTIFICATION')
  appointments,
  @JsonValue('COMMUNITY_UPDATE')
  communityUpdates,
}
