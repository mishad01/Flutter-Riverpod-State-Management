import '../../../../../core/base/failure.dart';
import '../../../../../core/base/result.dart';
import '../../../../../domain/entities/login_entity.dart';
import '../../../../../domain/repositories/authentication_repository.dart';

final class LoginUseCase {
  LoginUseCase(this.repository);

  final AuthenticationRepository repository;

  Future<Result<LoginResponseEntity, Failure>> call(
    LoginRequestEntity request,
  ) async {
    return repository.login(request);
  }
}
