import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_settings.freezed.dart';

/// User settings business object
@freezed
class UserSettings with _$UserSettings {
  const factory UserSettings({
    @Default(false) bool isNotificationImportant,
    @Default(false) bool isNotificationAppointments,
    @Default(false) bool isNotificationCommunityUpdates,
  }) = _UserSettings;

  const UserSettings._();
}
