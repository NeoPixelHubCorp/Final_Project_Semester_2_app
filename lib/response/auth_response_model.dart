import 'dart:convert';

class AuthResponseModel {
    final User? user;
    final String? token;

    AuthResponseModel({
        this.user,
        this.token,
    });

    factory AuthResponseModel.fromJson(String str) => AuthResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AuthResponseModel.fromMap(Map<String, dynamic> json) => AuthResponseModel(
        user: json["user"] == null ? null : User.fromMap(json["user"]),
        token: json["token"],
    );

    Map<String, dynamic> toMap() => {
        "user": user?.toMap(),
        "token": token,
    };
}

class User {
    final int? id;
    final String? name;
    final dynamic username;
    final String? email;
    final dynamic emailVerifiedAt;
    final dynamic phoneNumber;
    final String? role;
    final dynamic createdAt;
    final dynamic updatedAt;

    User({
        this.id,
        this.name,
        this.username,
        this.email,
        this.emailVerifiedAt,
        this.phoneNumber,
        this.role,
        this.createdAt,
        this.updatedAt,
    });

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        phoneNumber: json["phone_number"],
        role: json["role"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "phone_number": phoneNumber,
        "role": role,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
