import 'package:dio/dio.dart';
import 'package:neosx/common/datasources/logging_data_source.dart';

class NotificationSettingsInterceptorMock with LoggingMixin implements Interceptor {
  NotificationSettingsInterceptorMock();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.path.contains('/api/v1/notifications/settings')) {
      switch (options.method) {
        case 'GET':
          handler.resolve(
            Response<Map<String, dynamic>>(
              data: <String, dynamic>{
                'enabled': [
                  'IMPORTANT_NOTIFICATION',
                ],
              },
              requestOptions: options,
            ),
          );
          break;
        case 'POST':
          handler.resolve(
            Response<Map<String, dynamic>>(
              data: options.data as Map<String, dynamic>?,
              requestOptions: options,
            ),
          );
          break;
        default:
          break;
      }

      return;
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }
}
