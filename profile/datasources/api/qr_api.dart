import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'qr_api.g.dart';

/// QR API
@RestApi()
abstract class QrApi {
  factory QrApi(Dio client) = _QrApi;

  @GET('/neomid/api/um/v1/users/qr-code')
  Future<List<int>> getQrCodeData();
}
