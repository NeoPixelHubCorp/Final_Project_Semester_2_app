import 'dart:convert';

class RegisterRequestModel {
    final String? name;
    final String? email;
    final String? password;
    final String? phoneNumber;
    final String? passwordConfirmation;

    RegisterRequestModel({
        this.name,
        this.email,
        this.password,
        this.phoneNumber,
        this.passwordConfirmation,
    });

    factory RegisterRequestModel.fromJson(String str) => RegisterRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory RegisterRequestModel.fromMap(Map<String, dynamic> json) => RegisterRequestModel(
        name: json["name"],
        email: json["email"],
        password: json["password"],
        phoneNumber: json["phone_number"],
        passwordConfirmation: json["password_confirmation"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "password": password,
        "phone_number": phoneNumber,
        "password_confirmation": passwordConfirmation,
    };
}
