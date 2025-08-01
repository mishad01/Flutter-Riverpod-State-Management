part of '../dependency_injection.dart';

@riverpod
LoginUseCase loginUseCase(Ref ref) {
  return LoginUseCase(ref.read(authenticationRepositoryProvider));
}

@riverpod
CheckRememberMeUseCase checkRememberMeUseCase(Ref ref) {
  return CheckRememberMeUseCase(ref.read(authenticationRepositoryProvider));
}

@riverpod
SaveRememberMeUseCase saveRememberMeUseCase(Ref ref) {
  return SaveRememberMeUseCase(ref.read(authenticationRepositoryProvider));
}

@riverpod
LogoutUseCase logoutUseCase(Ref ref) {
  return LogoutUseCase(ref.read(authenticationRepositoryProvider));
}

@riverpod
FetchProductUseCase fetchProductUseCase(Ref ref) {
  return FetchProductUseCase(ref.read(productRepositoryProvider));
}

@riverpod
AddProductUseCase addProductUseCase(Ref ref) {
  return AddProductUseCase(ref.read(addProductRepositoryProvider));
}
