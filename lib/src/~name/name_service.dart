import 'package:bloc_vs_proxy_provider/src/~auth/auth_repo.dart';

class NameService {
  final AuthRepository authRepository;

  NameService(this.authRepository);

  String getName() => authRepository.user.toString();

  @override
  String toString() => 'NameService(user: ${getName()})';
}
