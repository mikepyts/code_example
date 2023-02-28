import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neosx/common/business_objects/result.dart';
import 'package:neosx/profile/business_objects/user_settings.dart';
import 'package:neosx/profile/cubits/notification_settings_cubit/notification_settings_state.dart';
import 'package:neosx/profile/repositories/settings_repository.dart';

/// Notification settings cubit
class NotificationSettingsCubit extends Cubit<NotificationSettingsState> {
  NotificationSettingsCubit({
    required SettingsRepository notificationSettingsRepository,
  })  : _notificationSettingsRepository = notificationSettingsRepository,
        super(const NotificationSettingsState.loading());

  final SettingsRepository _notificationSettingsRepository;

  /// Should be called only when notifications are initialized
  Future<void> fetchNotificationSettings() async {
    final Result<UserSettings> notificationSettingsResult = await _notificationSettingsRepository.getUserSettings();

    emit(
      notificationSettingsResult.when(
        success: (UserSettings notificationSettings) =>
            NotificationSettingsState.fetched(notificationSettings: notificationSettings),
        failed: (String message, _, __) => NotificationSettingsState.failed(message: message),
      ),
    );
  }

  Future<void> updateNotificationSettings({
    bool? allowImportantNotification,
    bool? allowAppointmentsNotification,
    bool? allowCommunityUpdatesNotification,
    required UserSettings localNotificationSettings,
  }) async {
    // Display local notification settings when they are loading
    emit(
      NotificationSettingsState.loading(notificationSettings: localNotificationSettings),
    );

    // Get remote notification settings
    final Result<UserSettings> remoteNotificationSettingsResult =
        await _notificationSettingsRepository.getUserSettings();

    final UserSettings? remoteNotificationSettings =
        remoteNotificationSettingsResult.whenOrNull(success: (UserSettings settings) => settings);

    if (remoteNotificationSettings != null) {
      final updatedNotificationSettings = remoteNotificationSettings.copyWith(
        isNotificationImportant: allowImportantNotification ?? remoteNotificationSettings.isNotificationImportant,
        isNotificationAppointments:
            allowAppointmentsNotification ?? remoteNotificationSettings.isNotificationAppointments,
        isNotificationCommunityUpdates:
            allowCommunityUpdatesNotification ?? remoteNotificationSettings.isNotificationCommunityUpdates,
      );

      final Result<void> remoteNotificationSettingsUpdated =
          await _notificationSettingsRepository.updateSettings(updatedNotificationSettings);

      remoteNotificationSettingsUpdated.map(
        success: (_) => emit(
          NotificationSettingsState.fetched(notificationSettings: updatedNotificationSettings),
        ),
        failed: (_) => NotificationSettingsState.fetched(notificationSettings: localNotificationSettings),
      );
    } else {
      emit(NotificationSettingsState.fetched(notificationSettings: localNotificationSettings));
    }
  }
}
