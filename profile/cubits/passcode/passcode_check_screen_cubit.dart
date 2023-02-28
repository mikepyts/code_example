import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neosx/auth/services/biometrics_service.dart';
import 'package:neosx/auth/services/failed_attempts_service.dart';
import 'package:neosx/common/exceptions/neosx_exceptions.dart';
import 'package:neosx/common/services/vibration_service.dart';
import 'package:neosx/injections.dart';
import 'package:neosx/profile/cubits/passcode/passcode_check_screen_state.dart';
import 'package:neosx/security/repositories/passcode_repository.dart';

class PasscodeCheckScreenCubit extends Cubit<PasscodeCheckScreenState> {
  final LocalAuthSettingsRepository _localAuthSettingsRepository;
  final BiometricsService _biometricsService;
  final FailedAttemptsService _failedAttemptsService;
  final VibrationService _vibrationService;

  PasscodeCheckScreenCubit({
    required LocalAuthSettingsRepository localAuthSettingsRepository,
    required BiometricsService biometricsService,
    required FailedAttemptsService failedAttemptsService,
    required VibrationService vibrationService,
  })  : _localAuthSettingsRepository = localAuthSettingsRepository,
        _biometricsService = biometricsService,
        _failedAttemptsService = failedAttemptsService,
        _vibrationService = vibrationService,
        super(const PasscodeCheckScreenState.locked());

  Future<void> checkPasscode(String passcode) async {
    final blockingMessage = await _failedAttemptsService.checkAbilityToTry();

    //if too many attempts:
    if (blockingMessage != null) {
      emit(PasscodeCheckScreenState.failure(exception: NeosXInputException(blockingMessage)));
      return;
    }

    final localAuthSettings = await _localAuthSettingsRepository.getLocalAuthSettings();

    emit(
      localAuthSettings.when(
        failed: (_, error, ___) => PasscodeCheckScreenState.failure(exception: error),
        success: (settings) {
          if (passcode == settings.passcode) {
            _failedAttemptsService.registerSuccessAttempt();
            return const PasscodeCheckScreenState.unlocked();
          } else {
            _failedAttemptsService.registerFailureAttempt();
            return PasscodeCheckScreenState.failure(exception: NeosXInputException(tr.passcodeWrong));
          }
        },
      ),
    );
  }

  ///Authenticates with biometrics if it's enabled.
  Future<void> tryUnlockWithBiometrics() async {
    final localAuthSettings = await _localAuthSettingsRepository.getLocalAuthSettings();

    final isEnabled = localAuthSettings.when(
      failed: (_, error, ___) => false,
      success: (settings) => settings.enableBiometrics,
    );

    if (isEnabled) {
      final bioAuthResult = await _biometricsService.authenticate();
      emit(
        bioAuthResult.when(
          success: (isAuthenticated) {
            if (isAuthenticated) {
              return const PasscodeCheckScreenState.unlocked();
            } else {
              return PasscodeCheckScreenState.failure(exception: NeosXInputException(tr.authenticationFailed));
            }
          },
          failed: (message, e, _) {
            return PasscodeCheckScreenState.failure(exception: NeosXInputException(message));
          },
        ),
      );
    }
  }

  Future<void> vibrateOnTap() async {
    return _vibrationService.tryVibrate();
  }
}
