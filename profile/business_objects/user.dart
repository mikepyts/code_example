import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neosx/common/business_objects/localized_name_res.dart';

part 'user.freezed.dart';

/// User profile business object
@freezed
class User with _$User {
  /// Constant instance of [User]
  const factory User({
    required String accountType,
    required String personalCode,
    required List<int> qrImageData,
    required LocalizedNameRes name,
  }) = _User;
}
