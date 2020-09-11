import 'package:bloc_vs_proxy_provider/src/auth_bloc_solution.dart';
import 'package:bloc_vs_proxy_provider/src/authentication/auth_bloc.dart';
import 'package:bloc_vs_proxy_provider/src/authentication/auth_repo.dart';
import 'package:bloc_vs_proxy_provider/src/stream_provider_solution.dart';
import 'package:bloc_vs_proxy_provider/src/~auth/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'src/flutter_bloc_freezed_solution.dart';
import 'src/~auth/auth_bloc.dart';
import 'src/~name/name_service.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  Bloc.observer = AppObserver();
  runApp(
    MultiProvider(
      providers: [
        RepositoryProvider<AuthRepository>(create: (_) => AuthRepository()),
        RepositoryProvider<NameService>(
          create: (context) =>
              NameService(context.repository<AuthRepository>()),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(context.repository<AuthRepository>()),
        ),
      ],
      child: App(AuthenticationRepository()),
    ),
  );
}

class App extends StatelessWidget {
  final AuthenticationRepository repo;

  App(this.repo);

  @override
  Widget build(BuildContext context) => RepositoryProvider.value(
        value: repo,
        child: BlocProvider<AuthenticationBloc>(
          create: (_) => AuthenticationBloc(repo),
          child: AppView(),
        ),
      );
}

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('AuthBloc solution'),
              AuthBlocSolution(),
              Text('StreamProvider solution'),
              StreamProviderSolution(),
              Text('Flutter Bloc + Freezed solution'),
              FlutterBlocFreezedSolution(),
            ],
          ),
        ),
      ),
    );
  }
}

class AppObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('$bloc - $transition');
  }

  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print('$bloc - $event');
  }
}
