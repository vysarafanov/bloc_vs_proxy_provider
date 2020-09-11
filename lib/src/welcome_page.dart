import 'package:flutter/material.dart';

import 'authentication/auth_bloc.dart';
import 'authentication/auth_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('Welcome. Please log in'),
      FlatButton(
        onPressed: () => context.bloc<AuthBloc>().add(AuthEvent.login()),
        child: Text('log in'),
      )
    ]);
  }
}
