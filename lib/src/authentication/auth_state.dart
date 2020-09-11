import 'package:bloc_vs_proxy_provider/src/authentication/user.dart';
import 'package:sealed_flutter_bloc/sealed_flutter_bloc.dart';

class AuthState extends Union2Impl<UnauthenticatedState, AuthenticatedState> {
  static const union =
      const Doublet<UnauthenticatedState, AuthenticatedState>();

  AuthState._(Union2<UnauthenticatedState, AuthenticatedState> union)
      : super(union);

  factory AuthState.unauth() =>
      AuthState._(union.first(const UnauthenticatedState()));

  factory AuthState.auth(User user) =>
      AuthState._(union.second(AuthenticatedState(user)));
}

class UnauthenticatedState {
  const UnauthenticatedState();
}

class AuthenticatedState {
  final User user;
  AuthenticatedState(this.user);
}
