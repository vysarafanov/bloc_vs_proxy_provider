import 'package:bloc_vs_proxy_provider/src/auth_bloc_solution.dart';
import 'package:bloc_vs_proxy_provider/src/authentication/auth_bloc.dart';
import 'package:bloc_vs_proxy_provider/src/authentication/auth_repo.dart';
import 'package:bloc_vs_proxy_provider/src/stream_provider_solution.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(App(AuthenticationRepository()));
}

class App extends StatelessWidget {
  final AuthenticationRepository repo;

  App(this.repo);

  @override
  Widget build(BuildContext context) => RepositoryProvider.value(
        value: repo,
        child: BlocProvider(
          create: (_) => AuthBloc(repo),
          child: AppView(),
        ),
      );
}

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text('AuthBloc solution'),
            AuthBlocSolution(),
            Text('StreamProvider solution'),
            StreamProviderSolution(),
          ],
        ),
      ),
    );
  }
}
