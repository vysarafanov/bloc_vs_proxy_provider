part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login() = _LoginEvent;
  const factory AuthEvent.logout() = _LogoutEvent;
  const factory AuthEvent.userChanged(UserModel user) = _UserChangedEvent;
}
