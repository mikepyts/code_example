import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_auth_settings_state.freezed.dart';

/// Local authentication settings state
@freezed
class LocalAuthSettingsState with _$LocalAuthSettingsState {
  const LocalAuthSettingsState._();

  /// Loading State
  const factory LocalAuthSettingsState.loading() = LocalAuthSettingsLoading;

  /// Failed state
  const factory LocalAuthSettingsState.failed({required String message}) = LocalAuthSettingsFailure;

  /// Success notification state
  const factory LocalAuthSettingsState.success({required String message}) = LocalAuthSettingsSucceed;

  @override
  String toString() {
    return when(
      loading: () => 'Loading',
      failed: (String message) => 'Failed',
      success: (String message) => 'Success',
    );
  }
}
