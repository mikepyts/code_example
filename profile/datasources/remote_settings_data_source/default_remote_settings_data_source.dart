import 'package:neosx/common/business_objects/result.dart';
import 'package:neosx/common/helpers/extensions.dart';
import 'package:neosx/common/services/device_info_service.dart';
import 'package:neosx/profile/business_objects/user_settings.dart';
import 'package:neosx/profile/datasources/api/notification_settings_api.dart';
import 'package:neosx/profile/datasources/remote_settings_data_source/remote_settings_data_source.dart';
import 'package:neosx/profile/dtos/user_settings_dto.dart';

/// Local settings datasource that uses shared preferences
class DefaultRemoteSettingsDataSource extends RemoteSettingsDataSource {
  DefaultRemoteSettingsDataSource({
    required NotificationSettingsApi notificationSettingsApi,
    required DeviceInfoService deviceInfoService,
  })  : _notificationSettingsApi = notificationSettingsApi,
        _deviceInfoService = deviceInfoService;

  final NotificationSettingsApi _notificationSettingsApi;
  final DeviceInfoService _deviceInfoService;

  @override
  Future<Result<UserSettings>> getSettings() async {
    final deviceId = await _deviceInfoService.getDeviceId();

    return _notificationSettingsApi.getNotificationSettings(deviceId).toResult<UserSettings>(
          mapper: (UserSettingsDto userDto) => userDto.toBo(),
        );
  }

  @override
  Future<Result<void>> updateSettings(UserSettings newSettings) async {
    final deviceId = await _deviceInfoService.getDeviceId();

    return _notificationSettingsApi
        .setNotificationSettings(
          deviceId,
          UserSettingsDto.fromBo(newSettings),
        )
        .toResult<UserSettings>(
          mapper: (UserSettingsDto userDto) => userDto.toBo(),
        );
  }
}
