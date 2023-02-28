import 'package:neosx/common/business_objects/result.dart';
import 'package:neosx/common/helpers/extensions.dart';
import 'package:neosx/profile/business_objects/user.dart';
import 'package:neosx/profile/datasources/api/profile_api.dart';
import 'package:neosx/profile/datasources/api/qr_api.dart';
import 'package:neosx/profile/datasources/remote_user_data_source/remote_user_data_source.dart';
import 'package:neosx/profile/dtos/user_dto.dart';

/// MockRemoteUserDataSource
class DefaultRemoteUserDataSource extends RemoteUserDataSource {
  DefaultRemoteUserDataSource({
    required this.qrApi,
    required this.profileApi,
  });

  final QrApi qrApi;
  final ProfileApi profileApi;

  @override
  Future<Result<User>> getUser() async {
    return profileApi.getProfile().toResult<User>(mapper: (UserDto userDto) => userDto.toBo());
  }

  @override
  Future<Result<List<int>>> getQrData() async {
    return qrApi.getQrCodeData().toResult<List<int>>(mapper: (List<int> qrData) => List<int>.from(qrData));
  }
}
