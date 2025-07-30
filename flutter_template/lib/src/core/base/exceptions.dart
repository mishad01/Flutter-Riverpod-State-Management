import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
sealed class CustomException with _$CustomException {
  const factory CustomException.parsing({
    required String message,
    String? field,
    Object? originalError,
    StackTrace? stackTrace,
  }) = ParsingException;

  const factory CustomException.validation({
    required String message,
    required String field,
    Map<String, dynamic>? errors,
    StackTrace? stackTrace,
  }) = ValidationException;

  const factory CustomException.illegalOperation({
    required String message,
    String? operation,
    String? reason,
    StackTrace? stackTrace,
  }) = IllegalOperationException;

  const factory CustomException.notFound({
    required String message,
    String? resource,
    String? identifier,
    StackTrace? stackTrace,
  }) = NotFoundException;

  const factory CustomException.unauthorized({
    required String message,
    String? requiredPermission,
    StackTrace? stackTrace,
  }) = UnauthorizedException;

  const factory CustomException.unknown({
    required String message,
    Object? originalError,
    StackTrace? stackTrace,
  }) = UnknownException;
}
