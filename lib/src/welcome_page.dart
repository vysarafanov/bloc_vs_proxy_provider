import 'package:flutter/material.dart';

import 'authentication/auth_bloc.dart';
import 'authentication/auth_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '~auth/auth_bloc.dart' as auth;

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('Welcome. Please log in'),
      FlatButton(
        onPressed: () =>
            context.bloc<AuthenticationBloc>().add(AuthEvent.login()),
        child: Text('log in'),
      )
    ]);
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('Welcome. Please log in'),
      FlatButton(
        onPressed: () =>
            context.bloc<auth.AuthBloc>().add(const auth.AuthEvent.login()),
        child: Text('log in'),
      )
    ]);
  }
}
