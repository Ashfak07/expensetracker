part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading; // New loading state
  const factory ProfileState.getUserCred(UserModel user) =
      _UserCred; // Ensure UserModel is the expected type
  const factory ProfileState.error(String message) = _Error;
}
