import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T, E> with _$Result<T, E> {
  const factory Result.success(T data) = Success;
  const factory Result.error(E error) = Error;
}

/*
- Code Breakdown
1. freezed_annotation is a code generation package that allows defining immutable data classes with union types.
2. part 'result.freezed.dart'; links to the generated code by the build_runner.

- Main class: Result<T, E>
1. A generic union/sealed class.
2. T: Type of data when successful.
3. E: Type of error when failed.
The with _$Result<T, E> mixin comes from the generated code and provides helper methods like when, map, copyWith, etc.


Used For	Safe, expressive error handling in Flutter/Dart

@freezed
class Result<DataType, ErrorType> with _$Result<DataType, ErrorType> {
  const factory Result.success(DataType data) = Success;
  const factory Result.error(ErrorType error) = Error;
}

*/
