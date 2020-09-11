import '../authentication/user.dart';

class NameService {
  final User user;

  NameService(this.user) {
    print('Create $this');
  }

  String getName() => user.toString();

  @override
  String toString() => 'NameService(user: $user)';
}
