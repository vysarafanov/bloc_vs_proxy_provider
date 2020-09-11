import 'dart:math';
import 'package:bloc_vs_proxy_provider/src/authentication/auth_bloc.dart';
import 'package:bloc_vs_proxy_provider/src/authentication/auth_event.dart';
import 'package:bloc_vs_proxy_provider/src/authentication/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '~auth/auth_bloc.dart' as auth;

class HomePage extends StatelessWidget {
  final Widget nameWidget;

  HomePage({Key key, @required this.nameWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        nameWidget,
        RandomString(),
        Consumer<User>(
          builder: (context, user, _) {
            return FlatButton(
              onPressed: () => user.isAnon
                  ? context.bloc<AuthenticationBloc>().add(AuthEvent.login())
                  : context.bloc<AuthenticationBloc>().add(AuthEvent.logout()),
              child: Text(user.isAnon ? 'login' : 'logout'),
            );
          },
        ),
      ],
    );
  }
}

class HomeScreen extends StatelessWidget {
  final Widget nameWidget;

  HomeScreen({Key key, @required this.nameWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        nameWidget,
        RandomString(),
        BlocBuilder<auth.AuthBloc, auth.AuthState>(
          builder: (context, state) {
            return state.maybeWhen(
              authenticated: (user) => FlatButton(
                onPressed: () => user.isAnon
                    ? context
                        .bloc<auth.AuthBloc>()
                        .add(const auth.AuthEvent.login())
                    : context
                        .bloc<auth.AuthBloc>()
                        .add(const auth.AuthEvent.logout()),
                child: Text(user.isAnon ? 'login' : 'logout'),
              ),
              orElse: () => const Empty(),
            );
          },
        ),
      ],
    );
  }
}

class RandomString extends StatelessWidget {
  final int value = Random().nextInt(100);

  @override
  Widget build(BuildContext context) {
    return Text('Random value is $value');
  }
}

class Empty extends StatelessWidget {
  const Empty({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0,
      height: 0,
    );
  }
}
