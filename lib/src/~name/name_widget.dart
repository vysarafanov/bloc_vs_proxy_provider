import 'package:bloc_vs_proxy_provider/src/~auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'name_bloc.dart';
import 'name_service.dart';

class NameWidgetFlutterBlocFreezed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final service = context.repository<NameService>();
    return BlocProvider<NameBloc>(
      create: (context) => NameBloc(service)..add(NameEvent.load()),
      child: NameView(),
    );
  }
}

class NameView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (_, state) => context.bloc<NameBloc>().add(NameEvent.load()),
      child: BlocBuilder<NameBloc, NameState>(
        builder: (context, state) => state.when(
          initial: () => Text('Loading'),
          data: (name) => Text(name),
        ),
      ),
    );
  }
}
