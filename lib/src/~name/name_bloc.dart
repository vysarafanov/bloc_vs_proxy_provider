import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'name_service.dart';

part 'name_event.dart';
part 'name_state.dart';
part 'name_bloc.freezed.dart';

class NameBloc extends Bloc<NameEvent, NameState> {
  final NameService service;

  NameBloc(this.service) : super(const NameState.initial());

  @override
  Stream<NameState> mapEventToState(NameEvent event) =>
      event.when(load: () => mapLoadToState());

  Stream<NameState> mapLoadToState() => state.when(
        initial: () async* {
          await Future.delayed(Duration(seconds: 2));
          yield NameState.data(service.getName());
        },
        data: (_) async* {
          yield NameState.data(service.getName());
        },
      );
}
