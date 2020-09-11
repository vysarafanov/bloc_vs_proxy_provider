import 'dart:math';
import 'package:bloc_vs_proxy_provider/src/authentication/auth_bloc.dart';
import 'package:bloc_vs_proxy_provider/src/authentication/auth_event.dart';
import 'package:bloc_vs_proxy_provider/src/authentication/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

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
                  ? context.bloc<AuthBloc>().add(AuthEvent.login())
                  : context.bloc<AuthBloc>().add(AuthEvent.logout()),
              child: Text(user.isAnon ? 'login' : 'logout'),
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
