import 'package:crud_app_using_riverpod_go_router/src/core/base/result.dart';
import 'package:crud_app_using_riverpod_go_router/src/core/di/dependency_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../features/login/entity_model/login_entity.dart';
import '../../../features/login/riverpod/login_state.dart';
import '../entities/sign_up_entity.dart';
import '../repositories/authentication_repository.dart';

part 'login_provider.g.dart';

@riverpod
class Login extends _$Login {
  late LoginUseCase _useCase;

  @override
  LoginState build() {
    _useCase = ref.read(loginUseCaseProvider);
    return const LoginStateInitial();
  }

  void login({
    required String email,
    required String password,
    String? businessId,
  }) async {
    state = const LoginStateLoading();

    final response = await _useCase.call(
      LoginRequestEntity(
        email: email,
        password: password,
        businessId: businessId,
      ),
    );

    state = switch (response) {
      Success(:final data) => switch (data) {
        LoginResponseEntity(:final businesses) =>
          businesses.isNotEmpty
              ? LoginStateSuccess(businesses: businesses)
              : const LoginStateSuccess(businesses: []),
      },
      Error(:final failure) => LoginStateError(failure.message),
    };
  }
}
