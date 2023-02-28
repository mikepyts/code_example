import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neosx/profile/business_objects/user_settings.dart';

part 'notification_settings_state.freezed.dart';

/// Notification settings state
@freezed
class NotificationSettingsState with _$NotificationSettingsState {
  const NotificationSettingsState._();

  /// Loading State
  const factory NotificationSettingsState.loading({
    UserSettings? notificationSettings,
  }) = NotificationSettingsStateLoading;

  /// Fetched State
  const factory NotificationSettingsState.fetched({
    UserSettings? notificationSettings,
  }) = NotificationSettingsStateFetched;

  /// Failed state
  const factory NotificationSettingsState.failed({
    required String message,
  }) = NotificationSettingsStateFailure;

  @override
  String toString() {
    return when(
      loading: (UserSettings? notificationSettings) => 'Loading: $notificationSettings',
      fetched: (UserSettings? notificationSettings) => 'Fetched: $notificationSettings',
      failed: (String message) => 'Failed: $message',
    );
  }
}
