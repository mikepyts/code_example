import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neosx/common/exceptions/neosx_exceptions.dart';

part 'passcode_check_screen_state.freezed.dart';

@freezed
class PasscodeCheckScreenState with _$PasscodeCheckScreenState {
  const factory PasscodeCheckScreenState.locked() = _Locked;
  const factory PasscodeCheckScreenState.unlocked() = _Unlocked;
  const factory PasscodeCheckScreenState.failure({required NeosXException exception}) = _Failure;
}
