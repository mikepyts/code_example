import 'package:neosx/common/business_objects/result.dart';
import 'package:neosx/profile/business_objects/user.dart';

/// LocaUserDataSource
abstract class LocalUserDataSource {
  const LocalUserDataSource();

  Future<Result<User>> getUser();

  Future<Result<bool>> saveUser(User user);
}
