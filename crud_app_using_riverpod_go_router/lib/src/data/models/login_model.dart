import 'package:dart_mappable/dart_mappable.dart';

import '../../domain/entities/login_entity.dart';

part 'login_model.mapper.dart';

@MappableClass(generateMethods: GenerateMethods.decode)
class LoginResponseModel extends LoginResponseEntity
    with LoginResponseModelMappable {
  LoginResponseModel({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.image,
    required super.accessToken,
    required this.gender,
    required this.refreshToken,
  });

  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;
  final String refreshToken;
}

/*
We do this to separate layers of responsibility in clean architecture.

You have:
1. Entity ➜ used in business logic (clean, reusable, testable).
2. Model ➜ used in data/network layer (handles JSON, APIs, serialization).
So, .fromEntity() is the bridge from logic to API.
*/

@MappableClass(generateMethods: GenerateMethods.copy | GenerateMethods.encode)
class LoginRequestModel extends LoginRequestEntity
    with LoginRequestModelMappable {
  LoginRequestModel({required super.email, required super.password});

  factory LoginRequestModel.fromEntity(LoginRequestEntity entity) {
    return LoginRequestModel(email: entity.email, password: entity.password);
  }
}
