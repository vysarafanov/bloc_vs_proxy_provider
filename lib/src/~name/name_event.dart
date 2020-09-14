part of 'name_bloc.dart';

@freezed
abstract class NameEvent with _$NameEvent {
  const factory NameEvent.load() = _LoadNameEvent;
}
