import 'package:neosx/common/business_objects/result.dart';
import 'package:neosx/profile/business_objects/user.dart';

abstract class RemoteUserDataSource {
  const RemoteUserDataSource();

  Future<Result<User>> getUser();

  Future<Result<List<int>>> getQrData();
}
