import 'package:bloc_vs_proxy_provider/src/authentication/user.dart';
import 'package:sealed_flutter_bloc/sealed_flutter_bloc.dart';

class AuthEvent extends Union3Impl<UserChangedEvent, LoginEvent, LogoutEvent> {
  static const union =
      const Triplet<UserChangedEvent, LoginEvent, LogoutEvent>();

  AuthEvent._(Union3<UserChangedEvent, LoginEvent, LogoutEvent> union)
      : super(union);

  factory AuthEvent.userChanged(User user) =>
      AuthEvent._(union.first(UserChangedEvent(user)));
  factory AuthEvent.login() => AuthEvent._(union.second(const LoginEvent()));
  factory AuthEvent.logout() => AuthEvent._(union.third(const LogoutEvent()));
}

class LoginEvent {
  const LoginEvent();
}

class LogoutEvent {
  const LogoutEvent();
}

class UserChangedEvent {
  final User user;
  UserChangedEvent(this.user);
}
