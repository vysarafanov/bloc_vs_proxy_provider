import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_repo.dart';
import 'user_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  StreamSubscription<UserModel> _userSubscription;

  AuthBloc(this._authRepository) : super(AuthState.unauthenticated()) {
    _userSubscription = _authRepository.user$.listen(
      (user) {
        add(AuthEvent.userChanged(user));
      },
    );
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.when(
      userChanged: (user) => mapUserChangedEventToState(user),
      login: () => mapLoginEventToState(),
      logout: () => mapLogoutEventToState(),
    );
  }

  Stream<AuthState> mapUserChangedEventToState(UserModel user) async* {
    yield user == null
        ? const AuthState.unauthenticated()
        : AuthState.authenticated(user);
  }

  Stream<AuthState> mapLoginEventToState() async* {
    _authRepository.logIn();
  }

  Stream<AuthState> mapLogoutEventToState() async* {
    _authRepository.logout();
  }
}
