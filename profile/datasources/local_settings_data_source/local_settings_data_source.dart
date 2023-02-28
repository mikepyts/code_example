import 'package:neosx/common/business_objects/result.dart';
import 'package:neosx/profile/business_objects/user_settings.dart';

/// local datasource for user settings
abstract class LocalSettingsDataSource {
  Future<Result<UserSettings>> getSettings();
  Future<Result<void>> updateSettings(UserSettings newSettings);
}
