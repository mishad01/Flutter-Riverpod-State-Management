import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/base/result.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../domain/use_cases/authentication_use_cases.dart';
import '../../../../core/base/status.dart';
import 'login_state.dart';

part 'login_provider.g.dart';

@riverpod
class Login extends _$Login {
  late LoginUseCase _loginUseCase; //Auth use case has been used here
  late CheckRememberMeUseCase _checkRememberMeUseCase;
  late SaveRememberMeUseCase _saveRememberMeUseCase;

  @override
  LoginState build() {
    //login state has been used here
    _loginUseCase = ref.read(
      loginUseCaseProvider,
    ); //Di has been used here //from where did di generated
    _checkRememberMeUseCase = ref.read(checkRememberMeUseCaseProvider);
    _saveRememberMeUseCase = ref.read(saveRememberMeUseCaseProvider);

    return const LoginState();
  }

  Future<void> checkRememberMe() async {
    final rememberMe = await _checkRememberMeUseCase.call();
    state = state.copyWith(rememberMe: rememberMe);
  }

  void updateRememberMe(bool rememberMe) {
    state = state.copyWith(rememberMe: rememberMe);
  }

  Future<void> saveRememberMe(bool rememberMe) async {
    await _saveRememberMeUseCase.call(rememberMe);
  }

  void login({
    required String email,
    required String password,
    bool? shouldRemember,
  }) async {
    state = state.copyWith(type: Status.loading); //status has been used here

    final result = await _loginUseCase.call(
      email: email,
      password: password,
      shouldRemember: shouldRemember,
    );

    state = switch (result) {
      //Result package has been used here
      Success() => state.copyWith(type: Status.success),
      Error(:final error) => state.copyWith(type: Status.error, error: error),
      _ => state.copyWith(type: Status.error),
    };
  }
}
