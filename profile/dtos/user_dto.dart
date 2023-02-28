import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neosx/common/dtos/localized_name_res_dto.dart';
import 'package:neosx/profile/business_objects/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

/// UserDto
@freezed
class UserDto with _$UserDto {
  /// UserDto
  const factory UserDto({
    @Default('') String accountType,
    @Default('') String personalCode,
    @Default(<int>[]) List<int> qrImageData,
    @LocalizedNameResDtoConverter() LocalizedNameResDto? name,
  }) = _UserDto;

  const UserDto._();

  /// Converts [User] into [UserDto]
  factory UserDto.fromBo(User bo) => UserDto(
        personalCode: bo.personalCode,
        name: LocalizedNameResDto.fromBo(bo.name),
        accountType: bo.accountType,
      );

  /// Converts [UserDto] into [User]
  User toBo() => User(
        name: name!.toBo(),
        qrImageData: qrImageData,
        personalCode: personalCode,
        accountType: accountType,
      );

  /// From Json
  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}
