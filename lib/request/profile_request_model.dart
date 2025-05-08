import 'dart:convert';

class ProfileRequestModel {
  final int? id;
  final String? name;
  final String? email;
  final String? password;
  final String? passwordConfirmation;

  ProfileRequestModel({
    this.id,
    this.name,
    this.email,
    this.password,
    this.passwordConfirmation,
  });

  factory ProfileRequestModel.fromJson(String str) =>
      ProfileRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProfileRequestModel.fromMap(Map<String, dynamic> json) =>
      ProfileRequestModel(
        name: json["name"],
        email: json["email"],
        password: json["password"],
        passwordConfirmation: json["password_confirmation"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "password": password,
        "password_confirmation": passwordConfirmation,
      };
}
