import 'dart:async';

import 'package:bloc_vs_proxy_provider/src/authentication/auth_event.dart';
import 'package:bloc_vs_proxy_provider/src/authentication/auth_repo.dart';
import 'package:bloc_vs_proxy_provider/src/authentication/auth_state.dart';
import 'package:bloc_vs_proxy_provider/src/authentication/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthenticationRepository _authRepo;

  StreamSubscription<User> _userSubscription;

  AuthBloc(this._authRepo) : super(AuthState.unauth()) {
    _userSubscription = _authRepo.user.listen(
      (user) => add(AuthEvent.userChanged(user)),
    );
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) => event.join(
        (userChanged) => mapUserChangedEventToState(userChanged, state),
        (login) => mapLoginEventToState(login, state, _authRepo),
        (logout) => mapLogoutEventToState(logout, state, _authRepo),
      );
}

Stream<AuthState> mapUserChangedEventToState(
  UserChangedEvent event,
  AuthState state,
) async* {
  yield event.user == null ? AuthState.unauth() : AuthState.auth(event.user);
}

Stream<AuthState> mapLoginEventToState(
    LoginEvent event, AuthState state, AuthenticationRepository repo) async* {
  repo.logIn();
}

Stream<AuthState> mapLogoutEventToState(
    LogoutEvent event, AuthState state, AuthenticationRepository repo) async* {
  repo.logout();
}
