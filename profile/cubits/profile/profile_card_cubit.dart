import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neosx/common/business_objects/result.dart';
import 'package:neosx/profile/business_objects/user.dart';
import 'package:neosx/profile/cubits/profile/profile_card_state.dart';
import 'package:neosx/profile/repositories/user_repository.dart';

/// ProfileCardCubit
class ProfileCardCubit extends Cubit<ProfileCardState> {
  final UserRepository _userRepository;

  ///prevents piling up QR code requests during entering the Profile tab and potentially calling pull-to-refresh
  bool isFetchingRemoteNow = false;

  ProfileCardCubit({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const ProfileCardState.loading()) {
    fetch(isForceRemote: true);
  }

  ///Returns the User. If [isForceRemote] is `true` it fetches the latest User instance from remote, after that saves it
  ///locally. If [isForceRemote] is `false` it provides a locally saved User instance, if nothing found - it tries to
  ///fetch it from remote.
  Future<void> fetch({bool isForceRemote = false}) async {
    emit(const ProfileCardState.loading());

    if (isForceRemote) {
      isFetchingRemoteNow = true;
    }
    final Result<User> userResult = await _userRepository.getUser(isForceRemote: isForceRemote);
    isFetchingRemoteNow = false;

    emit(
      userResult.when(
        success: (User user) => ProfileCardState.fetched(user: user),
        failed: (String message, __, ___) => ProfileCardState.failed(message: message),
      ),
    );
  }

  Future<void> retry() async => fetch();

  ///Returns a local User copy with the latest QR code fetched from remote. Can be called multiple times without piling
  ///up requests.
  Future<void> fetchQRCodeOnly() async {
    if (isFetchingRemoteNow) {
      return;
    }

    isFetchingRemoteNow = true;
    final Result<User> userResult = await _userRepository.getFreshQRCode();
    isFetchingRemoteNow = false;
    emit(
      userResult.when(
        success: (User user) => ProfileCardState.fetched(user: user),
        failed: (String message, __, ___) => ProfileCardState.failed(message: message),
      ),
    );
  }
}
