import 'dart:async';

import 'package:neosx/common/business_objects/result.dart';
import 'package:neosx/profile/business_objects/user_settings.dart';
import 'package:neosx/profile/datasources/remote_settings_data_source/remote_settings_data_source.dart';

/// Settings repository
abstract class SettingsRepository {
  Future<Result<UserSettings>> getUserSettings();
  Future<Result<void>> updateSettings(UserSettings newSettings);
}

/// Default settings repository
class DefaultSettingsRepository extends SettingsRepository {
  DefaultSettingsRepository({
    required RemoteSettingsDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final RemoteSettingsDataSource _remoteDataSource;

  @override
  Future<Result<UserSettings>> getUserSettings() async {
    return _remoteDataSource.getSettings();
  }

  @override
  Future<Result<void>> updateSettings(UserSettings newSettings) {
    return _remoteDataSource.updateSettings(newSettings);
  }
}
