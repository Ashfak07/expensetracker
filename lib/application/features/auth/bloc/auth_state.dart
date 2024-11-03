part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.userAdded() = UserAdded;
  const factory AuthState.usersLoaded(List<UserModel> users) = UsersLoaded;
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.error(String message) = Error;
  const factory AuthState.idle() = idle;
}
