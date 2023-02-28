import 'package:dio/dio.dart';
import 'package:neosx/profile/dtos/user_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_api.g.dart';

/// Profile API
@RestApi()
abstract class ProfileApi {
  factory ProfileApi(Dio client) = _ProfileApi;

  @GET('/neomid/api/um/v1/users/profile')
  Future<UserDto> getProfile();
}
