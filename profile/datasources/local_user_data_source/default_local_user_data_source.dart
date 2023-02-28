import 'dart:convert';

import 'package:neosx/auth/datasources/local/local_secure_datasource.dart';
import 'package:neosx/common/business_objects/result.dart';
import 'package:neosx/common/exceptions/neosx_exceptions.dart';
import 'package:neosx/profile/business_objects/user.dart';
import 'package:neosx/profile/datasources/local_user_data_source/local_user_data_source.dart';
import 'package:neosx/profile/dtos/user_dto.dart';
import 'package:neosx/profile/repositories/user_repository.dart';

/// MockLocalUserDataSource
class DefaultLocalUserDataSource extends LocalUserDataSource {
  DefaultLocalUserDataSource({
    required LocalSecureDatasource localSecureDatasource,
  }) : _localSecureDatasource = localSecureDatasource;

  final LocalSecureDatasource _localSecureDatasource;

  @override
  Future<Result<User>> getUser() async {
    final strJson = await _localSecureDatasource.getFromStorage(
      LocalAuthStorageConstants.profile,
    );

    if (strJson != null) {
      return Result.success(
        data: UserDto.fromJson(json.decode(strJson) as Map<String, dynamic>).toBo(),
      );
    } else {
      return Result.failed(
        message: UserRepository.noLocalUserFoundErrorMessage,
        exception: NeosXUnknownException(UserRepository.noLocalUserFoundErrorMessage),
      );
    }
  }

  @override
  Future<Result<bool>> saveUser(User user) async {
    await _localSecureDatasource.addToStorage(
      LocalAuthStorageConstants.profile,
      jsonEncode(UserDto.fromBo(user).toJson()),
    );
    return const Result.success(data: true);
  }
}
