import 'dart:async';
import 'dart:math';

import 'package:rxdart/subjects.dart';

import 'user_model.dart';

class AuthRepository {
  final BehaviorSubject<UserModel> _controller = BehaviorSubject();

  static final Random random = Random();
  static int _getNextId() => random.nextInt(100);

  Stream<UserModel> get user$ => _controller.stream;
  UserModel get user => _controller.value;

  void logIn() {
    _controller.add(UserModel(_getNextId()));
  }

  void anonymousLogIn() {
    _controller.add(UserModel(_getNextId(), isAnon: true));
  }

  void logout() {
    anonymousLogIn();
  }
}
