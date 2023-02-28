import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:neosx/auth/cubits/auth_cubit.dart';
import 'package:neosx/auth/services/biometrics_service.dart';
import 'package:neosx/auth/ui/screens/create_passcode_screen.dart';
import 'package:neosx/common/datasources/app_info_data_source.dart';
import 'package:neosx/common/helpers/extensions.dart';
import 'package:neosx/common/repositories/app_info_repository.dart';
import 'package:neosx/common/services/device_info_service.dart';
import 'package:neosx/common/ui/widgets/buttons/dialogs.dart';
import 'package:neosx/common/ui/widgets/notification_widget.dart';
import 'package:neosx/constants/app_colors.dart';
import 'package:neosx/constants/app_constants.dart';
import 'package:neosx/constants/app_sizes.dart';
import 'package:neosx/constants/app_styles.dart';
import 'package:neosx/gen/assets.gen.dart';
import 'package:neosx/injections.dart';
import 'package:neosx/location/exceptions/exceptions.dart';
import 'package:neosx/location/services/location_service.dart';
import 'package:neosx/notification/cubit/notification_cubit.dart';
import 'package:neosx/notification/cubit/notification_state.dart';
import 'package:neosx/notification/service/notification_service.dart';
import 'package:neosx/profile/business_objects/user_settings.dart';
import 'package:neosx/profile/cubits/local_auth_settings/local_auth_settings_cubit.dart';
import 'package:neosx/profile/cubits/local_auth_settings/local_auth_settings_state.dart';
import 'package:neosx/profile/cubits/notification_settings_cubit/notification_settings_cubit.dart';
import 'package:neosx/profile/cubits/notification_settings_cubit/notification_settings_state.dart';
import 'package:neosx/profile/cubits/profile/profile_card_cubit.dart';
import 'package:neosx/profile/cubits/settings/share_location_cubit.dart';
import 'package:neosx/profile/datasources/api/notification_settings_api.dart';
import 'package:neosx/profile/datasources/remote_settings_data_source/default_remote_settings_data_source.dart';
import 'package:neosx/profile/repositories/settings_repository.dart';
import 'package:neosx/profile/repositories/user_repository.dart';
import 'package:neosx/profile/ui/widgets/user_info_card_widget.dart';
import 'package:neosx/router.gr.dart';
import 'package:neosx/security/repositories/passcode_repository.dart';
import 'package:visibility_detector/visibility_detector.dart';

/// Profile Screen
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SettingsRepository>(
          create: (_) => DefaultSettingsRepository(
            remoteDataSource: DefaultRemoteSettingsDataSource(
              deviceInfoService: getIt<DeviceInfoService>(),
              notificationSettingsApi: getIt<NotificationSettingsApi>(),
            ),
          ),
        ),
        RepositoryProvider<AppInfoRepository>(
          create: (_) => DefaultAppInfoRepository(
            dataSource: DefaultAppInfoDataSource(),
          ),
        ),
      ],
      child: BlocProvider<ProfileCardCubit>(
        create: (BuildContext ctx) {
          final ProfileCardCubit cubit = ProfileCardCubit(userRepository: getIt<UserRepository>());
          final TabsRouter tabsRouter = context.tabsRouter;
          tabsRouter.addListener(
            () {
              if (tabsRouter.activeIndex == 3) {
                cubit.fetchQRCodeOnly();
              }
            },
          );
          return cubit;
        },
        child: Scaffold(
          backgroundColor: NeosXColors.primaryColorPalette[50],
          body: SafeArea(
            child: Builder(
              builder: (BuildContext context) {
                return RefreshIndicator(
                  onRefresh: () {
                    context.read<ProfileCardCubit>().fetch(isForceRemote: true);
                    return Future.value();
                  },
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10.h,
                      horizontal: AppSizes.listTileHorizontalContentPadding,
                    ),
                    child: ListView(
                      padding: EdgeInsets.only(top: 15.h),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: const UserInfoCardWidget(),
                        ),
                        ListTile(
                          title: Text(
                            tr.needHelpWithAccessBadge,
                            style: NeosXTypographyEn.button.copyWith(color: NeosXColors.secondaryColor900),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right_sharp, size: 26.h),
                          onTap: () {
                            context.router.push(const PersonalCategoryDetailsRoute());
                          },
                        ),
                        // white area with buttons
                        Material(
                          color: context.colorTheme.surface,
                          child: MultiBlocProvider(
                            providers: [
                              BlocProvider(
                                create: (context) => NotificationCubit(
                                  notificationService: getIt<NotificationService>(),
                                )..init(),
                                lazy: false,
                              ),
                              BlocProvider(
                                create: (context) => NotificationSettingsCubit(
                                  notificationSettingsRepository: context.read<SettingsRepository>(),
                                ),
                              ),
                              BlocProvider(
                                create: (context) => LocalAuthSettingsCubit(
                                  biometricsService: getIt<BiometricsService>(),
                                  appInfoRepository: context.read<AppInfoRepository>(),
                                  passcodeRepository: getIt<LocalAuthSettingsRepository>(),
                                ),
                              ),
                            ],
                            child: Builder(
                              builder: (BuildContext context) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 24.h),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: AppSizes.listTileHorizontalContentPadding,
                                    ),
                                    child: Text(
                                      tr.security,
                                      style: NeosXTypographyEn.subtitle2.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  BlocConsumer<LocalAuthSettingsCubit, LocalAuthSettingsState>(
                                    listener: (_, LocalAuthSettingsState state) {
                                      state.maybeWhen(
                                        failed: (String message) => NotificationWidget.error(
                                          context,
                                          message: message,
                                          duration: AppConstants.notificationLongDuration,
                                        ),
                                        success: (String message) {
                                          if (message.isNotEmpty) {
                                            NotificationWidget.success(
                                              context,
                                              message: message,
                                            );
                                          }
                                        },
                                        orElse: () {},
                                      );
                                    },
                                    builder: (context, LocalAuthSettingsState settingsState) {
                                      return _IosSwitcher(
                                        value: context.read<LocalAuthSettingsCubit>().isBiometricsEnabled(),
                                        title: Text(tr.enableBiometrics),
                                        onChanged: (bool? value) => _switchBiometrics(
                                          context: context,
                                          state: value ?? false,
                                        ),
                                      );
                                    },
                                  ),
                                  Divider(
                                    height: 1.h,
                                    indent: 20.w,
                                    thickness: 1.h,
                                    endIndent: 20.w,
                                    color: NeosXColors.primaryColor200,
                                  ),
                                  ListTile(
                                    title: Text(
                                      tr.changePasscode,
                                      style: NeosXTypographyEn.body1,
                                    ),
                                    onTap: () => _changePasscode(context: context),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: AppSizes.listTileHorizontalContentPadding),
                                    child: Divider(
                                      height: 1.h,
                                      thickness: 1.h,
                                      color: NeosXColors.primaryColor200,
                                    ),
                                  ),
                                  BlocListener<NotificationCubit, NotificationState>(
                                    listenWhen: (NotificationState currentState, NotificationState nextState) {
                                      return currentState != const NotificationState.success() &&
                                          nextState == const NotificationState.success();
                                    },
                                    listener: (_, __) {
                                      context.read<NotificationSettingsCubit>().fetchNotificationSettings();
                                    },
                                    child: BlocBuilder<NotificationSettingsCubit, NotificationSettingsState>(
                                      builder: (_, NotificationSettingsState settingsState) {
                                        final NotificationSettingsCubit notificationSettingsCubit =
                                            context.read<NotificationSettingsCubit>();
                                        return Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 44.h),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: AppSizes.listTileHorizontalContentPadding,
                                              ),
                                              child: Text(
                                                context.localizations.notificationTitle,
                                                style: NeosXTypographyEn.subtitle2.copyWith(
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            _IosSwitcher(
                                              title: settingsState.maybeMap(
                                                orElse: () => Text(context.localizations.settingsNotificationImportant),
                                              ),
                                              value: settingsState.maybeWhen(
                                                loading: (localUserSettings) =>
                                                    localUserSettings?.isNotificationImportant ?? false,
                                                fetched: (userSettings) =>
                                                    userSettings?.isNotificationImportant ?? false,
                                                orElse: () => false,
                                              ),
                                              onChanged: settingsState.maybeWhen(
                                                fetched: (userSettings) => (bool? value) =>
                                                    notificationSettingsCubit.updateNotificationSettings(
                                                      allowImportantNotification: value ?? false,
                                                      localNotificationSettings: userSettings ?? const UserSettings(),
                                                    ),
                                                loading: (_) => null,
                                                orElse: () => (bool? value) =>
                                                    notificationSettingsCubit.updateNotificationSettings(
                                                      allowImportantNotification: value ?? false,
                                                      localNotificationSettings: const UserSettings(),
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: AppSizes.listTileHorizontalContentPadding,
                                              ),
                                              child: Divider(
                                                thickness: 1.h,
                                                height: 1.h,
                                                color: NeosXColors.primaryColor200,
                                              ),
                                            ),
                                            _IosSwitcher(
                                              title: settingsState.maybeMap(
                                                orElse: () =>
                                                    Text(context.localizations.settingsNotificationAppointments),
                                              ),
                                              value: settingsState.maybeWhen(
                                                loading: (localUserSettings) =>
                                                    localUserSettings?.isNotificationAppointments ?? false,
                                                fetched: (userSettings) =>
                                                    userSettings?.isNotificationAppointments ?? false,
                                                orElse: () => false,
                                              ),
                                              onChanged: settingsState.maybeWhen(
                                                fetched: (userSettings) => (bool? value) =>
                                                    notificationSettingsCubit.updateNotificationSettings(
                                                      allowAppointmentsNotification: value ?? false,
                                                      localNotificationSettings: userSettings ?? const UserSettings(),
                                                    ),
                                                loading: (_) => null,
                                                orElse: () => (bool? value) =>
                                                    notificationSettingsCubit.updateNotificationSettings(
                                                      allowAppointmentsNotification: value ?? false,
                                                      localNotificationSettings: const UserSettings(),
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: AppSizes.listTileHorizontalContentPadding,
                                              ),
                                              child: Divider(
                                                thickness: 1.h,
                                                height: 1.h,
                                                color: NeosXColors.primaryColor200,
                                              ),
                                            ),
                                            _IosSwitcher(
                                              title: settingsState.maybeMap(
                                                orElse: () =>
                                                    Text(context.localizations.settingsNotificationCommunityUpdates),
                                              ),
                                              value: settingsState.maybeWhen(
                                                loading: (localUserSettings) =>
                                                    localUserSettings?.isNotificationCommunityUpdates ?? false,
                                                fetched: (userSettings) =>
                                                    userSettings?.isNotificationCommunityUpdates ?? false,
                                                orElse: () => false,
                                              ),
                                              onChanged: settingsState.maybeWhen(
                                                fetched: (userSettings) => (bool? value) =>
                                                    notificationSettingsCubit.updateNotificationSettings(
                                                      allowCommunityUpdatesNotification: value ?? false,
                                                      localNotificationSettings: userSettings ?? const UserSettings(),
                                                    ),
                                                loading: (_) => null,
                                                orElse: () => (bool? value) =>
                                                    notificationSettingsCubit.updateNotificationSettings(
                                                      allowCommunityUpdatesNotification: value ?? false,
                                                      localNotificationSettings: const UserSettings(),
                                                    ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: AppSizes.listTileHorizontalContentPadding,
                                    ),
                                    child: Divider(
                                      thickness: 1.h,
                                      height: 1.h,
                                      color: NeosXColors.primaryColor200,
                                    ),
                                  ),
                                  const SizedBox(height: 44),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: AppSizes.listTileHorizontalContentPadding,
                                    ),
                                    child: Text(
                                      tr.personalDetail,
                                      style: NeosXTypographyEn.subtitle2.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  BlocProvider<ShareLocationCubit>(
                                    create: (context) => ShareLocationCubit(getIt<LocationService>()),
                                    child: BlocBuilder<ShareLocationCubit, bool>(
                                      builder: (context, state) {
                                        return VisibilityDetector(
                                          key: const ValueKey('share_location'),
                                          onVisibilityChanged: (info) {
                                            if (info.visibleFraction == 1) {
                                              context.read<ShareLocationCubit>().update();
                                            }
                                          },
                                          child: _IosSwitcher(
                                            title: Text(tr.shareLocation),
                                            value: state,
                                            onChanged: (value) {
                                              if (value == true) {
                                                enableShareLocation(context);
                                              } else {
                                                context.read<ShareLocationCubit>().disableSharing();
                                              }
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  const _ShareLocationAlert(),
                                  SizedBox(height: 24.h),
                                  ListTile(
                                    title: Text(
                                      tr.logOut,
                                      style: NeosXTypographyEn.body1.copyWith(color: NeosXColors.redColor),
                                    ),
                                    onTap: () {
                                      NeosXInfoDialog(
                                        title: tr.confirmLogout,
                                        message: tr.areYouSureLogOut,
                                        buttonOne: tr.cancel,
                                        onButtonOnePressed: context.router.pop,
                                        buttonTwo: tr.yesLogOut,
                                        onButtonTwoPressed: () {
                                          context.router.pop();
                                          context.read<AuthCubit>().logOut();
                                        },
                                      ).showPopup<dynamic>(context);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<void> enableShareLocation(BuildContext context) async {
    final cubit = context.read<ShareLocationCubit>();
    final result = await cubit.enableSharing();
    result.map(
      success: (_) {},
      failed: (fail) {
        switch (fail.exception.runtimeType) {
          case NeosXLocationPermissionDeniedForeverException:
            // TODO: show dialog before opening
            Geolocator.openAppSettings();
            break;
          case NeosXLocationServiceDisabledException:
            // TODO: show dialog before opening
            Geolocator.openLocationSettings();
            break;
          case NeosXLocationPermissionDeniedException:
            // TODO: show re-request dialog
            break;
        }
      },
    );
  }

  Future<void> _changePasscode({required BuildContext context}) async {
    final localAuthSettingsCubit = context.read<LocalAuthSettingsCubit>();

    //Lock screen before passcode change
    if (localAuthSettingsCubit.isPasscodeSet()) {
      await context.router.push<bool>(
        PasscodeCheckRoute(
          onCompletion: (isUnlocked) async {
            if (!isUnlocked) {
              return;
            }

            //let the user change the passcode
            final isPasscodeCreated = await context.router.replace<bool>(
                  CreatePasscodeRouter(
                    children: [CreatePasscodeRoute(mode: CreatePasscodeMode.change)],
                  ),
                ) ??
                false;
            //upd fetched settings
            await localAuthSettingsCubit.onPasscodeCreationFinished(
              isChanged: isPasscodeCreated,
            );
          },
        ),
      );
    }
  }

  Future<void> _switchBiometrics({
    required BuildContext context,
    required bool state,
  }) async {
    final localAuthSettingsCubit = context.read<LocalAuthSettingsCubit>();
    //1. The Passcode must be set before any operations with Biometrics.
    if (!localAuthSettingsCubit.isPasscodeSet()) {
      await _changePasscode(context: context);
    }

    //cancel if the user didn't set up the Passcode
    if (!localAuthSettingsCubit.isPasscodeSet()) {
      return;
    }

    //2. At this point the Passcode is set. Ask for it only if we turn Biometrics ON (see req. in Figma)
    if (state) {
      //turn Biometrics ON:
      //check the passcode
      await context.router.push<bool>(
        PasscodeCheckRoute(
          onCompletion: (isUnlocked) async {
            context.router.pop();
            if (isUnlocked) {
              //3. Now the Passcode is checked (or we're turning the Biometrics ON) - try to enable it.
              await localAuthSettingsCubit.enableBiometrics();
            }
          },
        ),
      );
    } else {
      //turn Biometrics OFF:
      await localAuthSettingsCubit.setBiometrics(isEnabled: false);
    }
  }
}

class _ShareLocationAlert extends StatelessWidget {
  const _ShareLocationAlert({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppSizes.listTileHorizontalContentPadding,
      ),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: NeosXColors.secondaryColor050,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Assets.svg.taxi.info.svg(
            height: 12.h,
            width: 12.w,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                tr.shareLocationAlert,
                style: NeosXTypographyEn.allCaps3XSRegular,
                textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _IosSwitcher extends StatelessWidget {
  const _IosSwitcher({
    required this.value,
    required this.title,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final bool value;
  final Widget title;
  final void Function(bool? value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(platform: TargetPlatform.iOS),
      child: SwitchListTile.adaptive(
        title: DefaultTextStyle(
          style: NeosXTypographyEn.body1,
          child: title,
        ),
        value: value,
        controlAffinity: ListTileControlAffinity.trailing,
        onChanged: onChanged,
        activeColor: Colors.black,
      ),
    );
  }
}
