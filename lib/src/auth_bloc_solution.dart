import 'package:bloc_vs_proxy_provider/src/authentication/auth_bloc.dart';
import 'package:bloc_vs_proxy_provider/src/authentication/auth_state.dart';
import 'package:bloc_vs_proxy_provider/src/authentication/user.dart';
import 'package:bloc_vs_proxy_provider/src/home_page.dart';
import 'package:bloc_vs_proxy_provider/src/name/name_service.dart';
import 'package:bloc_vs_proxy_provider/src/name/name_widget.dart';
import 'package:bloc_vs_proxy_provider/src/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sealed_flutter_bloc/sealed_flutter_bloc.dart';

class AuthBlocSolution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SealedBlocBuilder2<AuthBloc, AuthState, UnauthenticatedState,
        AuthenticatedState>(
      builder: (context, states) => states(
        (unauth) => WelcomePage(),
        (auth) => MultiProvider(
          providers: [
            Provider.value(
              key: ValueKey(auth.user.id),
              value: auth.user,
            ),
            ProxyProvider<User, NameService>(
              update: (_, user, __) => NameService(user),
            )
          ],
          child: HomePage(
            nameWidget: NameWidgetBlocProvider(),
          ),
        ),
      ),
    );
  }
}
