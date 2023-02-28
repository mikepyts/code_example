import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:neosx/common/business_objects/result.dart';
import 'package:neosx/common/exceptions/neosx_exceptions.dart';
import 'package:neosx/constants/app_constants.dart';
import 'package:neosx/profile/business_objects/user_settings.dart';
import 'package:neosx/profile/datasources/local_settings_data_source/local_settings_data_source.dart';

/// Local settings datasource that uses shared preferences
class DefaultLocalSettingsDataSource extends LocalSettingsDataSource {
  static const _allowNotificationAppointmentsKey = 'allowNotificationAppointmentsKey';
  static const _allowNotificationCommunityUpdatesKey = 'allowNotificationCommunityUpdatesKey';
  static const _allowNotificationImportantKey = 'allowNotificationImportantKey';

  @override
  Future<Result<UserSettings>> getSettings() async {
    try {
      const storage = FlutterSecureStorage();

      return Result<UserSettings>.success(
        data: UserSettings(
          isNotificationAppointments:
              await storage.read(key: _allowNotificationAppointmentsKey) == AppConstants.storageValueOfBoolTrue,
          isNotificationCommunityUpdates:
              await storage.read(key: _allowNotificationCommunityUpdatesKey) == AppConstants.storageValueOfBoolTrue,
          isNotificationImportant:
              await storage.read(key: _allowNotificationImportantKey) == AppConstants.storageValueOfBoolTrue,
        ),
      );
    } on Exception catch (e, st) {
      return Result.failed(
        message: 'Failed to get settings from shared prefs',
        exception: NeosXUnknownException(
          'Failed to get settings from shared prefs : $e',
        ),
        stackTrace: st,
      );
    }
  }

  @override
  Future<Result<void>> updateSettings(UserSettings newSettings) async {
    try {
      const storage = FlutterSecureStorage();

      await storage.write(
        key: _allowNotificationImportantKey,
        value: newSettings.isNotificationImportant
            ? AppConstants.storageValueOfBoolTrue
            : AppConstants.storageValueOfBoolFalse,
      );

      await storage.write(
        key: _allowNotificationAppointmentsKey,
        value: newSettings.isNotificationAppointments
            ? AppConstants.storageValueOfBoolTrue
            : AppConstants.storageValueOfBoolFalse,
      );

      await storage.write(
        key: _allowNotificationCommunityUpdatesKey,
        value: newSettings.isNotificationCommunityUpdates
            ? AppConstants.storageValueOfBoolTrue
            : AppConstants.storageValueOfBoolFalse,
      );

      return const Result<void>.success(data: null);
    } on Exception catch (e, st) {
      return Result.failed(
        message: 'Failed to update settings in shared prefs',
        exception: NeosXUnknownException(
          'Failed to update settings in shared prefs : $e',
        ),
        stackTrace: st,
      );
    }
  }
}
