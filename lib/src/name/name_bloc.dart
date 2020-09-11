import 'package:bloc_vs_proxy_provider/src/name/name_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sealed_flutter_bloc/sealed_flutter_bloc.dart';

class NameBloc extends Bloc<NameEvent, NameState> {
  final NameService service;

  NameBloc(this.service) : super(NameState.loading()) {
    print('Create NameBloc with service: $service');
  }

  @override
  Stream<NameState> mapEventToState(NameEvent event) =>
      event.join((load) => mapLoadToState(state, load, service));
}

Stream<NameState> mapLoadToState(
        NameState state, LoadEvent event, NameService service) =>
    state.join(
      (initial) async* {
        await Future.delayed(Duration(seconds: 2));
        final name = service.getName();
        yield NameState.data(name);
      },
      (data) async* {},
    );

class NameState extends Union2Impl<LoadingState, DataState> {
  static const unions = const Doublet<LoadingState, DataState>();

  NameState._(Union2<LoadingState, DataState> union) : super(union);

  factory NameState.loading() =>
      NameState._(unions.first(const LoadingState()));

  factory NameState.data(String name) =>
      NameState._(unions.second(DataState(name)));
}

class LoadingState {
  const LoadingState();
}

class DataState {
  final String name;
  DataState(this.name);
}

class NameEvent extends Union0Impl<LoadEvent> {
  static const unions = const Nullet<LoadEvent>();

  NameEvent._(Union0<LoadEvent> union) : super(union);

  factory NameEvent.load() => NameEvent._(unions.first(const LoadEvent()));
}

class LoadEvent {
  const LoadEvent();
}
