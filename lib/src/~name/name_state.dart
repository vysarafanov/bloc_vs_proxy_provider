part of 'name_bloc.dart';

@freezed
abstract class NameState with _$NameState {
  const factory NameState.initial() = _Initial;
  const factory NameState.data(String name) = _Data;
}
