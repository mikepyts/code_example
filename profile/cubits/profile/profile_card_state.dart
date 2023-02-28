import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neosx/profile/business_objects/user.dart';

part 'profile_card_state.freezed.dart';

/// ProfileCardCubit
@freezed
class ProfileCardState with _$ProfileCardState {
  const ProfileCardState._();

  /// Loading State
  const factory ProfileCardState.loading() = _Loading;

  /// Fatched State
  const factory ProfileCardState.fetched({required User user}) = _Fetched;

  const factory ProfileCardState.failed({required String message}) = _Failure;

  @override
  String toString() {
    return map(
      loading: (_) => 'Loading',
      fetched: (_) => 'Fetched',
      failed: (_) => 'Failed',
    );
  }
}
