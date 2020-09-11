import 'package:bloc_vs_proxy_provider/src/authentication/user.dart';
import 'package:bloc_vs_proxy_provider/src/home_page.dart';
import 'package:bloc_vs_proxy_provider/src/name/name_service.dart';
import 'package:bloc_vs_proxy_provider/src/name/name_widget.dart';
import 'package:bloc_vs_proxy_provider/src/welcome_page.dart';
import 'package:bloc_vs_proxy_provider/src/authentication/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StreamProviderSolution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<User>(
          create: (context) => context.read<AuthBloc>().map(
                (state) => state.join(
                  (unAuth) => null,
                  (auth) => auth.user,
                ),
              ),
        ),
        ProxyProvider<User, NameService>(
          update: (_, user, __) => NameService(user),
        ),
      ],
      child: Consumer<User>(
        builder: (context, user, child) => user == null ? WelcomePage() : child,
        child: HomePage(
          nameWidget: NameWidgetProxyProvider(),
        ),
      ),
    );
  }
}
