class LoginResponseModel {
  //final String token;
  //final String error;
  final String accessJWT;
  final String message;

  LoginResponseModel({required this.accessJWT,required this.message});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      accessJWT: json["accessJWT"] ?? "",
      message: json["message"] ?? "",

    );
  }
}

class LoginRequestModel {
  String email;
  String password;

  LoginRequestModel({
    required this.email,
    required this.password,
  });
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
    };

    return map;
  }
}
