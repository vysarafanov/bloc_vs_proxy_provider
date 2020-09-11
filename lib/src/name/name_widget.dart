import 'package:bloc_vs_proxy_provider/src/name/name_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sealed_flutter_bloc/sealed_flutter_bloc.dart';

import '../name/name_service.dart';
import 'package:provider/provider.dart';

class NameWidgetBlocProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final service = Provider.of<NameService>(context);
    return BlocProvider<NameBloc>(
      create: (context) => NameBloc(service)
        ..add(
          NameEvent.load(),
        ),
      child: NameView(),
    );
  }
}

class NameView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SealedBlocBuilder2<NameBloc, NameState, LoadingState, DataState>(
      cubit: Provider.of<NameBloc>(context),
      builder: (context, states) => states(
        (initial) => Text('Loading'),
        (data) => Text(data.name),
      ),
    );
  }
}

class NameWidgetProxyProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProxyProvider<NameService, NameBloc>(
      update: (_, service, __) => NameBloc(service)
        ..add(
          NameEvent.load(),
        ),
      child: NameView(),
    );
  }
}
