// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _NotificationSettingsApi implements NotificationSettingsApi {
  _NotificationSettingsApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UserSettingsDto> getNotificationSettings(deviceId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserSettingsDto>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(
                _dio.options, '/nms/api/v1/notifications/settings/${deviceId}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserSettingsDto.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserSettingsDto> setNotificationSettings(deviceId, model) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(model.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserSettingsDto>(Options(
                method: 'POST', headers: _headers, extra: _extra)
            .compose(
                _dio.options, '/nms/api/v1/notifications/settings/${deviceId}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserSettingsDto.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
