import 'dart:async';

import 'package:neosx/auth/helpers/jwt_util.dart';
import 'package:neosx/auth/services/authorization_service.dart';
import 'package:neosx/common/business_objects/localized_name_res.dart';
import 'package:neosx/common/business_objects/result.dart';
import 'package:neosx/common/exceptions/neosx_exceptions.dart';
import 'package:neosx/profile/business_objects/user.dart';
import 'package:neosx/profile/datasources/local_user_data_source/local_user_data_source.dart';
import 'package:neosx/profile/datasources/remote_user_data_source/remote_user_data_source.dart';

abstract class UserRepository {
  static const String noLocalUserFoundErrorMessage = 'No local user found';
  static const String failedToFetchLocalUserErrorMessage = 'Can not fetch local user';

  Future<Result<User>> getUser({bool isForceRemote = false});

  Future<Result<User>> getFreshQRCode();
}

class DefaultUserRepository extends UserRepository {
  DefaultUserRepository({
    required LocalUserDataSource localDataSource,
    required RemoteUserDataSource remoteDataSource,
    required AuthorizationService authorizationService,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _authorizationService = authorizationService;

  final AuthorizationService _authorizationService;

  final LocalUserDataSource _localDataSource;

  final RemoteUserDataSource _remoteDataSource;

  ///Returns the User from remote, then the local copy will be updated
  Future<Result<User>> _getUserFromRemoteAndUpdateLocallyOrFromLocal() async {
    final Result<User> remoteProfileResult = await _remoteDataSource.getUser();

    return remoteProfileResult.when(
      success: (User userWithoutQr) async {
        //try to fetch and add a fresh QR image
        User user = await _tryToUpdateQRCode(userWithoutQr);

        //try to extract and update a user name from the access token
        final userNameFromAccessToken = await _tryGetUserNameFromAccessToken();
        if (userNameFromAccessToken != null) {
          user = user.copyWith(name: userNameFromAccessToken);
        }

        await _localDataSource.saveUser(user);
        return Result.success(data: user);
      },
      failed: (_, __, ___) async {
        final Result<User> localResult = await _localDataSource.getUser();
        return localResult.when(
          success: (User localUser) => Result.success(data: localUser),
          failed: (_, __, ___) => Result.failed(
            message: UserRepository.failedToFetchLocalUserErrorMessage,
            exception: NeosXUnknownException(UserRepository.failedToFetchLocalUserErrorMessage),
          ),
        );
      },
    );
  }

  ///Returns a local copy of the User, if empty - fetches from remote and then updates the local copy
  Future<Result<User>> _getUserFromLocalOrFromRemote() async {
    final Result<User> localResult = await _localDataSource.getUser();
    return localResult.when(
      success: (User localUser) => Result.success(data: localUser),
      failed: (message, __, ___) {
        if (message == UserRepository.noLocalUserFoundErrorMessage) {
          return _getUserFromRemoteAndUpdateLocallyOrFromLocal();
        } else {
          return Result.failed(
            message: UserRepository.failedToFetchLocalUserErrorMessage,
            exception: NeosXUnknownException(UserRepository.failedToFetchLocalUserErrorMessage),
          );
        }
      },
    );
  }

  Future<LocalizedNameRes?> _tryGetUserNameFromAccessToken() async {
    LocalizedNameRes? userNameFromAccessToken;
    final String? accessToken = await _authorizationService.getAccessToken();

    if (accessToken != null) {
      try {
        final Map<String, dynamic> payload = JwtUtil.parseJwt(accessToken);
        final keycloakUserName = payload['name'] as String?;

        if (keycloakUserName != null) {
          userNameFromAccessToken = LocalizedNameRes(
            nameAr: keycloakUserName,
            nameEn: keycloakUserName,
            currentCultureName: keycloakUserName,
          );
        }
      } catch (e) {
        // do nothing as we can use mono user profile name
      }
    }

    return userNameFromAccessToken;
  }

  Future<User> _tryToUpdateQRCode(User user) async {
    User updatedUser = user.copyWith();
    final Result<List<int>> remoteQrResult = await _remoteDataSource.getQrData();
    remoteQrResult.whenOrNull(
      success: (List<int> qrData) {
        updatedUser = updatedUser.copyWith(qrImageData: qrData);
      },
    );
    return updatedUser;
  }

  @override
  Future<Result<User>> getUser({bool isForceRemote = false}) async {
    //Get remote User, then the local copy will be updated. If failed to get from remote - fetch locally.
    if (isForceRemote) {
      return _getUserFromRemoteAndUpdateLocallyOrFromLocal();
    } else {
      //Get local copy of the User, if empty - fetch from remote and then update the local copy
      return _getUserFromLocalOrFromRemote();
    }
  }

  @override
  Future<Result<User>> getFreshQRCode() async {
    final localUserResult = await _getUserFromLocalOrFromRemote();

    return localUserResult.when(
      success: (userWithoutQr) async {
        //try to fetch and add a fresh QR image
        final user = await _tryToUpdateQRCode(userWithoutQr);
        return Result.success(data: user);
      },
      failed: (message, __, ___) async {
        return Result.failed(
          message: UserRepository.failedToFetchLocalUserErrorMessage,
          exception: NeosXUnknownException(UserRepository.failedToFetchLocalUserErrorMessage),
        );
      },
    );
  }
}
