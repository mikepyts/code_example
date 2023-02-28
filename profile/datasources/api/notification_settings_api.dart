import 'package:dio/dio.dart';
import 'package:neosx/profile/dtos/user_settings_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'notification_settings_api.g.dart';

/// NotificationSettingsApi
@RestApi()
abstract class NotificationSettingsApi {
  factory NotificationSettingsApi(Dio client) = _NotificationSettingsApi;

  @GET('/nms/api/v1/notifications/settings/{deviceId}')
  Future<UserSettingsDto> getNotificationSettings(
    @Path() String deviceId,
  );

  @POST('/nms/api/v1/notifications/settings/{deviceId}')
  Future<UserSettingsDto> setNotificationSettings(
    @Path() String deviceId,
    @Body() UserSettingsDto model,
  );
}
