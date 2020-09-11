import 'dart:async';
import 'dart:math';

import 'package:bloc_vs_proxy_provider/src/authentication/user.dart';

class AuthenticationRepository {
  final StreamController<User> _controller = StreamController.broadcast();
  final Random random = Random();

  AuthenticationRepository() {
    _controller.add(User(
      _getNextId(),
      isAnon: true,
    ));
  }
  int _getNextId() => random.nextInt(100);

  Stream<User> get user => _controller.stream;

  void logIn() {
    _controller.add(User(_getNextId()));
  }

  void anonymousLogIn() {
    _controller.add(User(_getNextId(), isAnon: true));
  }

  void logout() {
    anonymousLogIn();
    // _controller.add(null);
  }
}
