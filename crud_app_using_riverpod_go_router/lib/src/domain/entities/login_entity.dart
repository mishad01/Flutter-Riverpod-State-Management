interface class LoginEntity {}

class LoginRequestEntity extends LoginEntity {
  LoginRequestEntity({
    //required this.username,
    required this.email,
    required this.password,
    this.shouldRemeber = false,
    this.businessId,
  });

  //final String username;
  final String email;
  final String password;
  final bool? shouldRemeber;
  final bool? businessId;
}

class LoginResponseEntity extends LoginEntity {
  LoginResponseEntity({required this.accessToken});

  final String accessToken;
}
