// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomException {

 String get message; StackTrace? get stackTrace;
/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomExceptionCopyWith<CustomException> get copyWith => _$CustomExceptionCopyWithImpl<CustomException>(this as CustomException, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomException&&(identical(other.message, message) || other.message == message)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,message,stackTrace);

@override
String toString() {
  return 'CustomException(message: $message, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $CustomExceptionCopyWith<$Res>  {
  factory $CustomExceptionCopyWith(CustomException value, $Res Function(CustomException) _then) = _$CustomExceptionCopyWithImpl;
@useResult
$Res call({
 String message, StackTrace? stackTrace
});




}
/// @nodoc
class _$CustomExceptionCopyWithImpl<$Res>
    implements $CustomExceptionCopyWith<$Res> {
  _$CustomExceptionCopyWithImpl(this._self, this._then);

  final CustomException _self;
  final $Res Function(CustomException) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? stackTrace = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomException].
extension CustomExceptionPatterns on CustomException {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ParsingException value)?  parsing,TResult Function( ValidationException value)?  validation,TResult Function( IllegalOperationException value)?  illegalOperation,TResult Function( NotFoundException value)?  notFound,TResult Function( UnauthorizedException value)?  unauthorized,TResult Function( UnknownException value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ParsingException() when parsing != null:
return parsing(_that);case ValidationException() when validation != null:
return validation(_that);case IllegalOperationException() when illegalOperation != null:
return illegalOperation(_that);case NotFoundException() when notFound != null:
return notFound(_that);case UnauthorizedException() when unauthorized != null:
return unauthorized(_that);case UnknownException() when unknown != null:
return unknown(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ParsingException value)  parsing,required TResult Function( ValidationException value)  validation,required TResult Function( IllegalOperationException value)  illegalOperation,required TResult Function( NotFoundException value)  notFound,required TResult Function( UnauthorizedException value)  unauthorized,required TResult Function( UnknownException value)  unknown,}){
final _that = this;
switch (_that) {
case ParsingException():
return parsing(_that);case ValidationException():
return validation(_that);case IllegalOperationException():
return illegalOperation(_that);case NotFoundException():
return notFound(_that);case UnauthorizedException():
return unauthorized(_that);case UnknownException():
return unknown(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ParsingException value)?  parsing,TResult? Function( ValidationException value)?  validation,TResult? Function( IllegalOperationException value)?  illegalOperation,TResult? Function( NotFoundException value)?  notFound,TResult? Function( UnauthorizedException value)?  unauthorized,TResult? Function( UnknownException value)?  unknown,}){
final _that = this;
switch (_that) {
case ParsingException() when parsing != null:
return parsing(_that);case ValidationException() when validation != null:
return validation(_that);case IllegalOperationException() when illegalOperation != null:
return illegalOperation(_that);case NotFoundException() when notFound != null:
return notFound(_that);case UnauthorizedException() when unauthorized != null:
return unauthorized(_that);case UnknownException() when unknown != null:
return unknown(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message,  String? field,  Object? originalError,  StackTrace? stackTrace)?  parsing,TResult Function( String message,  String field,  Map<String, dynamic>? errors,  StackTrace? stackTrace)?  validation,TResult Function( String message,  String? operation,  String? reason,  StackTrace? stackTrace)?  illegalOperation,TResult Function( String message,  String? resource,  String? identifier,  StackTrace? stackTrace)?  notFound,TResult Function( String message,  String? requiredPermission,  StackTrace? stackTrace)?  unauthorized,TResult Function( String message,  Object? originalError,  StackTrace? stackTrace)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ParsingException() when parsing != null:
return parsing(_that.message,_that.field,_that.originalError,_that.stackTrace);case ValidationException() when validation != null:
return validation(_that.message,_that.field,_that.errors,_that.stackTrace);case IllegalOperationException() when illegalOperation != null:
return illegalOperation(_that.message,_that.operation,_that.reason,_that.stackTrace);case NotFoundException() when notFound != null:
return notFound(_that.message,_that.resource,_that.identifier,_that.stackTrace);case UnauthorizedException() when unauthorized != null:
return unauthorized(_that.message,_that.requiredPermission,_that.stackTrace);case UnknownException() when unknown != null:
return unknown(_that.message,_that.originalError,_that.stackTrace);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message,  String? field,  Object? originalError,  StackTrace? stackTrace)  parsing,required TResult Function( String message,  String field,  Map<String, dynamic>? errors,  StackTrace? stackTrace)  validation,required TResult Function( String message,  String? operation,  String? reason,  StackTrace? stackTrace)  illegalOperation,required TResult Function( String message,  String? resource,  String? identifier,  StackTrace? stackTrace)  notFound,required TResult Function( String message,  String? requiredPermission,  StackTrace? stackTrace)  unauthorized,required TResult Function( String message,  Object? originalError,  StackTrace? stackTrace)  unknown,}) {final _that = this;
switch (_that) {
case ParsingException():
return parsing(_that.message,_that.field,_that.originalError,_that.stackTrace);case ValidationException():
return validation(_that.message,_that.field,_that.errors,_that.stackTrace);case IllegalOperationException():
return illegalOperation(_that.message,_that.operation,_that.reason,_that.stackTrace);case NotFoundException():
return notFound(_that.message,_that.resource,_that.identifier,_that.stackTrace);case UnauthorizedException():
return unauthorized(_that.message,_that.requiredPermission,_that.stackTrace);case UnknownException():
return unknown(_that.message,_that.originalError,_that.stackTrace);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message,  String? field,  Object? originalError,  StackTrace? stackTrace)?  parsing,TResult? Function( String message,  String field,  Map<String, dynamic>? errors,  StackTrace? stackTrace)?  validation,TResult? Function( String message,  String? operation,  String? reason,  StackTrace? stackTrace)?  illegalOperation,TResult? Function( String message,  String? resource,  String? identifier,  StackTrace? stackTrace)?  notFound,TResult? Function( String message,  String? requiredPermission,  StackTrace? stackTrace)?  unauthorized,TResult? Function( String message,  Object? originalError,  StackTrace? stackTrace)?  unknown,}) {final _that = this;
switch (_that) {
case ParsingException() when parsing != null:
return parsing(_that.message,_that.field,_that.originalError,_that.stackTrace);case ValidationException() when validation != null:
return validation(_that.message,_that.field,_that.errors,_that.stackTrace);case IllegalOperationException() when illegalOperation != null:
return illegalOperation(_that.message,_that.operation,_that.reason,_that.stackTrace);case NotFoundException() when notFound != null:
return notFound(_that.message,_that.resource,_that.identifier,_that.stackTrace);case UnauthorizedException() when unauthorized != null:
return unauthorized(_that.message,_that.requiredPermission,_that.stackTrace);case UnknownException() when unknown != null:
return unknown(_that.message,_that.originalError,_that.stackTrace);case _:
  return null;

}
}

}

/// @nodoc


class ParsingException implements CustomException {
  const ParsingException({required this.message, this.field, this.originalError, this.stackTrace});
  

@override final  String message;
 final  String? field;
 final  Object? originalError;
@override final  StackTrace? stackTrace;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsingExceptionCopyWith<ParsingException> get copyWith => _$ParsingExceptionCopyWithImpl<ParsingException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsingException&&(identical(other.message, message) || other.message == message)&&(identical(other.field, field) || other.field == field)&&const DeepCollectionEquality().equals(other.originalError, originalError)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,message,field,const DeepCollectionEquality().hash(originalError),stackTrace);

@override
String toString() {
  return 'CustomException.parsing(message: $message, field: $field, originalError: $originalError, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $ParsingExceptionCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $ParsingExceptionCopyWith(ParsingException value, $Res Function(ParsingException) _then) = _$ParsingExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message, String? field, Object? originalError, StackTrace? stackTrace
});




}
/// @nodoc
class _$ParsingExceptionCopyWithImpl<$Res>
    implements $ParsingExceptionCopyWith<$Res> {
  _$ParsingExceptionCopyWithImpl(this._self, this._then);

  final ParsingException _self;
  final $Res Function(ParsingException) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? field = freezed,Object? originalError = freezed,Object? stackTrace = freezed,}) {
  return _then(ParsingException(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,originalError: freezed == originalError ? _self.originalError : originalError ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class ValidationException implements CustomException {
  const ValidationException({required this.message, required this.field, final  Map<String, dynamic>? errors, this.stackTrace}): _errors = errors;
  

@override final  String message;
 final  String field;
 final  Map<String, dynamic>? _errors;
 Map<String, dynamic>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  StackTrace? stackTrace;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationExceptionCopyWith<ValidationException> get copyWith => _$ValidationExceptionCopyWithImpl<ValidationException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationException&&(identical(other.message, message) || other.message == message)&&(identical(other.field, field) || other.field == field)&&const DeepCollectionEquality().equals(other._errors, _errors)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,message,field,const DeepCollectionEquality().hash(_errors),stackTrace);

@override
String toString() {
  return 'CustomException.validation(message: $message, field: $field, errors: $errors, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $ValidationExceptionCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $ValidationExceptionCopyWith(ValidationException value, $Res Function(ValidationException) _then) = _$ValidationExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message, String field, Map<String, dynamic>? errors, StackTrace? stackTrace
});




}
/// @nodoc
class _$ValidationExceptionCopyWithImpl<$Res>
    implements $ValidationExceptionCopyWith<$Res> {
  _$ValidationExceptionCopyWithImpl(this._self, this._then);

  final ValidationException _self;
  final $Res Function(ValidationException) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? field = null,Object? errors = freezed,Object? stackTrace = freezed,}) {
  return _then(ValidationException(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class IllegalOperationException implements CustomException {
  const IllegalOperationException({required this.message, this.operation, this.reason, this.stackTrace});
  

@override final  String message;
 final  String? operation;
 final  String? reason;
@override final  StackTrace? stackTrace;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IllegalOperationExceptionCopyWith<IllegalOperationException> get copyWith => _$IllegalOperationExceptionCopyWithImpl<IllegalOperationException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IllegalOperationException&&(identical(other.message, message) || other.message == message)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,message,operation,reason,stackTrace);

@override
String toString() {
  return 'CustomException.illegalOperation(message: $message, operation: $operation, reason: $reason, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $IllegalOperationExceptionCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $IllegalOperationExceptionCopyWith(IllegalOperationException value, $Res Function(IllegalOperationException) _then) = _$IllegalOperationExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message, String? operation, String? reason, StackTrace? stackTrace
});




}
/// @nodoc
class _$IllegalOperationExceptionCopyWithImpl<$Res>
    implements $IllegalOperationExceptionCopyWith<$Res> {
  _$IllegalOperationExceptionCopyWithImpl(this._self, this._then);

  final IllegalOperationException _self;
  final $Res Function(IllegalOperationException) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? operation = freezed,Object? reason = freezed,Object? stackTrace = freezed,}) {
  return _then(IllegalOperationException(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,operation: freezed == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class NotFoundException implements CustomException {
  const NotFoundException({required this.message, this.resource, this.identifier, this.stackTrace});
  

@override final  String message;
 final  String? resource;
 final  String? identifier;
@override final  StackTrace? stackTrace;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotFoundExceptionCopyWith<NotFoundException> get copyWith => _$NotFoundExceptionCopyWithImpl<NotFoundException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFoundException&&(identical(other.message, message) || other.message == message)&&(identical(other.resource, resource) || other.resource == resource)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,message,resource,identifier,stackTrace);

@override
String toString() {
  return 'CustomException.notFound(message: $message, resource: $resource, identifier: $identifier, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $NotFoundExceptionCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $NotFoundExceptionCopyWith(NotFoundException value, $Res Function(NotFoundException) _then) = _$NotFoundExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message, String? resource, String? identifier, StackTrace? stackTrace
});




}
/// @nodoc
class _$NotFoundExceptionCopyWithImpl<$Res>
    implements $NotFoundExceptionCopyWith<$Res> {
  _$NotFoundExceptionCopyWithImpl(this._self, this._then);

  final NotFoundException _self;
  final $Res Function(NotFoundException) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? resource = freezed,Object? identifier = freezed,Object? stackTrace = freezed,}) {
  return _then(NotFoundException(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,resource: freezed == resource ? _self.resource : resource // ignore: cast_nullable_to_non_nullable
as String?,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class UnauthorizedException implements CustomException {
  const UnauthorizedException({required this.message, this.requiredPermission, this.stackTrace});
  

@override final  String message;
 final  String? requiredPermission;
@override final  StackTrace? stackTrace;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnauthorizedExceptionCopyWith<UnauthorizedException> get copyWith => _$UnauthorizedExceptionCopyWithImpl<UnauthorizedException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthorizedException&&(identical(other.message, message) || other.message == message)&&(identical(other.requiredPermission, requiredPermission) || other.requiredPermission == requiredPermission)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,message,requiredPermission,stackTrace);

@override
String toString() {
  return 'CustomException.unauthorized(message: $message, requiredPermission: $requiredPermission, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $UnauthorizedExceptionCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $UnauthorizedExceptionCopyWith(UnauthorizedException value, $Res Function(UnauthorizedException) _then) = _$UnauthorizedExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message, String? requiredPermission, StackTrace? stackTrace
});




}
/// @nodoc
class _$UnauthorizedExceptionCopyWithImpl<$Res>
    implements $UnauthorizedExceptionCopyWith<$Res> {
  _$UnauthorizedExceptionCopyWithImpl(this._self, this._then);

  final UnauthorizedException _self;
  final $Res Function(UnauthorizedException) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? requiredPermission = freezed,Object? stackTrace = freezed,}) {
  return _then(UnauthorizedException(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,requiredPermission: freezed == requiredPermission ? _self.requiredPermission : requiredPermission // ignore: cast_nullable_to_non_nullable
as String?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class UnknownException implements CustomException {
  const UnknownException({required this.message, this.originalError, this.stackTrace});
  

@override final  String message;
 final  Object? originalError;
@override final  StackTrace? stackTrace;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownExceptionCopyWith<UnknownException> get copyWith => _$UnknownExceptionCopyWithImpl<UnknownException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownException&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.originalError, originalError)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(originalError),stackTrace);

@override
String toString() {
  return 'CustomException.unknown(message: $message, originalError: $originalError, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $UnknownExceptionCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $UnknownExceptionCopyWith(UnknownException value, $Res Function(UnknownException) _then) = _$UnknownExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? originalError, StackTrace? stackTrace
});




}
/// @nodoc
class _$UnknownExceptionCopyWithImpl<$Res>
    implements $UnknownExceptionCopyWith<$Res> {
  _$UnknownExceptionCopyWithImpl(this._self, this._then);

  final UnknownException _self;
  final $Res Function(UnknownException) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? originalError = freezed,Object? stackTrace = freezed,}) {
  return _then(UnknownException(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,originalError: freezed == originalError ? _self.originalError : originalError ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
