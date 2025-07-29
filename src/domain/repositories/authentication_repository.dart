import 'package:crud_app_using_riverpod_go_router/src/core/base/failure.dart';
import 'package:crud_app_using_riverpod_go_router/src/core/base/result.dart';

import '../../../features/login/entity_model/login_entity.dart';
import '../../core/base/repository.dart';
import '../entities/sign_up_entity.dart';

abstract base class AuthenticationRepository extends Repository {
  Future<SignUpResponseEntity> register(SignUpRequestEntity data);

  Future<Result<LoginResponseEntity, Failure>> login(LoginRequestEntity data);

  Future<bool> rememberMe({bool? rememberMe});

  Future<String> forgotPassword(Map<String, dynamic> data);

  Future<String> resetPassword(Map<String, dynamic> data);

  Future<String> verifyOTP(Map<String, dynamic> data);

  Future<String> resendOTP(Map<String, dynamic> data);

  Future<void> logout();
}
