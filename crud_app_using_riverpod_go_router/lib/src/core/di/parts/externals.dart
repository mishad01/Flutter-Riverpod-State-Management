part of '../dependency_injection.dart';

@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPreferences(Ref ref) =>
    SharedPreferences.getInstance();

@riverpod
Dio dio(Ref ref) {
  final dio = Dio();

  dio.interceptors.addAll(
    [
      TokenManager(
        refreshTokenEndpoint: 'refreshToken',
        accessTokenKey: 'accessToken',
      ),
      if (kDebugMode)
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
        ),
    ],
  );

  dio.options.headers['Content-Type'] = 'application/json';

  return dio;
}
