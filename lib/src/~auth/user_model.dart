import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final int id;
  final bool isAnon;

  const UserModel(
    this.id, {
    this.isAnon: false,
  });

  @override
  String toString() => 'User(id: $id, isAnon: $isAnon)';

  @override
  List<Object> get props => [id, isAnon];
}
