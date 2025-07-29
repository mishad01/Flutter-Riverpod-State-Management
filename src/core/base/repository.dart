import '../../data/services/network/interceptor/failures.dart' as deprecated;
import '../logger/log.dart';
import 'failure.dart';
import 'response_modal.dart';
import 'result.dart';

abstract base class Repository<T> {
  Future<T> request(
    Future<dynamic> Function() request, {
    Function(String?, {String? code}) onError = _defaultErrorHandler,
  }) async {
    try {
      return await request();
    } on deprecated.Failure catch (e, stackTrace) {
      Log.error(e.toString());
      Log.error(stackTrace.toString());
      ErrorModel? error = ErrorModel.fromJson(e.error);
      return onError.call(error.message, code: error.code);
    } catch (e, stackTrace) {
      Log.error(e.toString());
      Log.error(stackTrace.toString());
      return onError.call('Something went wrong!');
    }
  }

  static Future _defaultErrorHandler(String? message, {String? code}) {
    return Future.error(message as Object);
  }

  /// Executes an asynchronous operation and wraps the result in a [Result]
  /// type.
  ///
  /// This method provides a safe way to handle asynchronous operations by
  /// catching any exceptions that occur during execution and converting them to
  /// [Failure] objects wrapped in an [Error] result.
  ///
  /// Parameters:
  /// - [operation]: A function that returns a [Future<T>] to be executed
  ///
  /// Returns:
  /// - [Success<T>] if the operation completes successfully
  /// - [Error<Failure>] if an exception occurs during execution
  ///
  /// Example:
  /// ```dart
  /// final result = await asyncGuard(() async {
  ///   return await apiService.fetchData();
  /// });
  ///
  /// result.when(
  ///   success: (data) => print('Data: $data'),
  ///   error: (failure) => print('Error: ${failure.message}'),
  /// );
  /// ```
  // ignore: avoid_shadowing_type_parameters
  Future<Result<T, Failure>> asyncGuard<T>(
    Future<T> Function() operation,
  ) async {
    try {
      final result = await operation();
      return Success(result);
    } on Exception catch (e) {
      return Error(Failure.mapExceptionToFailure(e));
    }
  }

  /// Executes a synchronous operation and wraps the result in a [Result] type.
  ///
  /// This method provides a safe way to handle synchronous operations by
  /// catching any exceptions that occur during execution and converting them to
  /// [Failure] objects wrapped in an [Error] result.
  ///
  /// Parameters:
  /// - [operation]: A function that returns a value of type [T] to be executed
  ///
  /// Returns:
  /// - [Success<T>] if the operation completes successfully
  /// - [Error<Failure>] if an exception occurs during execution
  ///
  /// Example:
  /// ```dart
  /// final result = guard(() {
  ///   return jsonDecode(jsonString);
  /// });
  ///
  /// result.when(
  ///   success: (data) => print('Parsed data: $data'),
  ///   error: (failure) => print('Parsing error: ${failure.message}'),
  /// );
  /// ```
  Result<T, Failure> guard<T>(T Function() operation) {
    try {
      final result = operation();
      return Success(result);
    } on Exception catch (e) {
      return Error(Failure.mapExceptionToFailure(e));
    }
  }
}
