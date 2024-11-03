part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.addUser(UserModel user) = AddUser;
  const factory AuthEvent.loadUsers() = LoadUsers;
  const factory AuthEvent.register(UserModel user) = _Register;
  const factory AuthEvent.login(UserModel user) = _Login;
  const factory AuthEvent.logOut() = _LogOut;
}
