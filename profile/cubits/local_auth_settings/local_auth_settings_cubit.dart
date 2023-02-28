import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neosx/auth/business_objects/local_auth_settings.dart';
import 'package:neosx/auth/services/biometrics_service.dart';
import 'package:neosx/common/business_objects/result.dart';
import 'package:neosx/common/repositories/app_info_repository.dart';
import 'package:neosx/injections.dart';
import 'package:neosx/profile/cubits/local_auth_settings/local_auth_settings_state.dart';
import 'package:neosx/security/repositories/passcode_repository.dart';

/// Local authentication settings cubit
class LocalAuthSettingsCubit extends Cubit<LocalAuthSettingsState> {
  LocalAuthSettingsCubit({
    required BiometricsService biometricsService,
    required AppInfoRepository appInfoRepository,
    required LocalAuthSettingsRepository passcodeRepository,
  })  : _biometricsService = biometricsService,
        _appInfoRepository = appInfoRepository,
        _passcodeRepository = passcodeRepository,
        super(const LocalAuthSettingsState.loading()) {
    _fetchLocalAuthSettings();
  }

  final BiometricsService _biometricsService;

  final LocalAuthSettingsRepository _passcodeRepository;

  String _appVersionText = '';
  LocalAuthSettings? _localAuthSettings;
  final AppInfoRepository _appInfoRepository;

  Future<void> _fetchLocalAuthSettings() async {
    emit(const LocalAuthSettingsState.loading());

    final Result<LocalAuthSettings> localAuthSettingsResult = await _passcodeRepository.getLocalAuthSettings();
    _appVersionText = '${await _appInfoRepository.getVersion()} + ${await _appInfoRepository.getBuildNumber()}';

    localAuthSettingsResult.when(
      success: (LocalAuthSettings authSettings) {
        _localAuthSettings = authSettings;
        emit(const LocalAuthSettingsState.success(message: ''));
      },
      failed: (String message, _, __) {
        emit(LocalAuthSettingsState.failed(message: message));
      },
    );
  }

  bool isPasscodeSet() {
    return _localAuthSettings?.isPasscodeSet() ?? false;
  }

  bool isBiometricsEnabled() {
    return _localAuthSettings?.enableBiometrics ?? false;
  }

  String getAppVersion() {
    return _appVersionText;
  }

  Future<void> setBiometrics({required bool isEnabled}) async {
    await _passcodeRepository.updateLocalAuthSettingsFields(enableBiometrics: isEnabled);
    await _fetchLocalAuthSettings();
  }

  Future<void> onPasscodeCreationFinished({required bool isChanged}) async {
    if (isChanged) {
      emit(LocalAuthSettingsState.success(message: tr.passcodeChanged));
    }
    _fetchLocalAuthSettings();
  }

  Future<void> enableBiometrics() async {
    final isSupportedResult = await _biometricsService.isBiometricsSupported();

    //if not supported: show message
    final isSupported = isSupportedResult.when(success: (isSupported) => isSupported, failed: (_, __, ___) => false);
    if (!isSupported) {
      emit(LocalAuthSettingsState.failed(message: tr.biometricsNotSupported));
      return;
    }

    //if supported - try to authenticate for the first time
    final bioAuthResult = await _biometricsService.authenticate();

    await bioAuthResult.when(
      success: (isAuthenticated) async {
        if (isAuthenticated) {
          emit(LocalAuthSettingsState.success(message: tr.biometricsEnabled));
          await setBiometrics(isEnabled: true);
          return;
        } else {
          emit(LocalAuthSettingsState.failed(message: tr.authenticationFailed));
        }
      },
      failed: (message, e, _) async {
        emit(LocalAuthSettingsState.failed(message: message));
      },
    );
  }
}
