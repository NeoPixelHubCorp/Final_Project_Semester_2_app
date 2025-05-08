import 'dart:convert';

class RegisterResponseModel {
    final String? message;
    final String? accessToken;
    final String? tokenType;

    RegisterResponseModel({
        this.message,
        this.accessToken,
        this.tokenType,
    });

    factory RegisterResponseModel.fromJson(String str) => RegisterResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory RegisterResponseModel.fromMap(Map<String, dynamic> json) => RegisterResponseModel(
        message: json["message"],
        accessToken: json["access_token"],
        tokenType: json["token_type"],
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "access_token": accessToken,
        "token_type": tokenType,
    };
}
