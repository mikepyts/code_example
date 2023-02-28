import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neosx/auth/cubits/auth_cubit.dart';
import 'package:neosx/auth/services/biometrics_service.dart';
import 'package:neosx/auth/services/failed_attempts_service.dart';
import 'package:neosx/common/services/vibration_service.dart';
import 'package:neosx/common/ui/widgets/app_bar.dart';
import 'package:neosx/common/ui/widgets/notification_widget.dart';
import 'package:neosx/common/ui/widgets/pin_code.dart';
import 'package:neosx/constants/app_colors.dart';
import 'package:neosx/constants/app_styles.dart';
import 'package:neosx/injections.dart';
import 'package:neosx/profile/cubits/passcode/passcode_check_screen_cubit.dart';
import 'package:neosx/profile/cubits/passcode/passcode_check_screen_state.dart';
import 'package:neosx/security/repositories/passcode_repository.dart';

class PasscodeCheckScreen extends StatefulWidget {
  const PasscodeCheckScreen({
    required this.onCompletion,
    Key? key,
  }) : super(key: key);

  final ValueChanged<bool> onCompletion;

  @override
  State<PasscodeCheckScreen> createState() => _PasscodeCheckScreenState();
}

class _PasscodeCheckScreenState extends State<PasscodeCheckScreen> {
  final PinCodeController _pinCodeController = PinCodeController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasscodeCheckScreenCubit(
        localAuthSettingsRepository: getIt<LocalAuthSettingsRepository>(),
        biometricsService: getIt<BiometricsService>(),
        failedAttemptsService: getIt<FailedAttemptsService>(),
        vibrationService: getIt<VibrationService>(),
      ),
      child: BlocConsumer<PasscodeCheckScreenCubit, PasscodeCheckScreenState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            unlocked: () {
              //return `true` because the lock screen was successfully unlocked
              widget.onCompletion(true);
            },
            failure: (exception) {
              _pinCodeController.reset();
              NotificationWidget.error(context, message: exception.message);
            },
          );
        },
        builder: (context, state) {
          final cubit = context.read<PasscodeCheckScreenCubit>();
          return Scaffold(
            appBar: const NeosXAppBar(),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Text(
                  tr.passcodeInput,
                  style: NeosXTypographyEn.subtitle1,
                ),
                SizedBox(height: 51.h),
                PinCode(
                  controller: _pinCodeController,
                  onDone: (digits) {
                    cubit.checkPasscode(digits);
                  },
                  vibrationCallback: cubit.vibrateOnTap,
                ),
                SizedBox(height: 4.h),
                TextButton(
                  onPressed: () {
                    widget.onCompletion(true);
                    context.read<AuthCubit>().logOut();
                  },
                  child: Text(
                    tr.passcodeForgot,
                    style: enCaption2.copyWith(
                      color: NeosXColors.primaryColor600,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
