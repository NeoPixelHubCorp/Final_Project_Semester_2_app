import 'dart:convert';

class ProfileResponseModel {
    final String? message;
    final User? user;
    final dynamic photoUrl;

    ProfileResponseModel({
        this.message,
        this.user,
        this.photoUrl,
    });

    factory ProfileResponseModel.fromJson(String str) => ProfileResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ProfileResponseModel.fromMap(Map<String, dynamic> json) => ProfileResponseModel(
        message: json["message"],
        user: json["user"] == null ? null : User.fromMap(json["user"]),
        photoUrl: json["photo_url"],
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "user": user?.toMap(),
        "photo_url": photoUrl,
    };
}

class User {
  final int? id;
  final String? name;
  final String? email;
  final dynamic phoneNumber;
  final String? password; // Tambahkan ini
  final String? role;
  final dynamic profilePhoto;
  final dynamic emailVerifiedAt;
  final dynamic createdAt;
  final DateTime? updatedAt;

  User({
    this.id,
    this.name,
    this.email,
    this.phoneNumber,
    this.password, // Tambahkan ini
    this.role,
    this.profilePhoto,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
  });

  User copyWith({
    int? id,
    String? name,
    String? email,
    dynamic phoneNumber,
    String? password, // Tambahkan ini
    String? role,
    dynamic profilePhoto,
    dynamic emailVerifiedAt,
    dynamic createdAt,
    DateTime? updatedAt,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password ?? this.password, // Tambahkan ini
      role: role ?? this.role,
      profilePhoto: profilePhoto ?? this.profilePhoto,
      emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        role: json["role"],
        profilePhoto: json["profile_photo"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "phone_number": phoneNumber,
        "role": role,
        "profile_photo": profilePhoto,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt,
        "updated_at": updatedAt?.toIso8601String(),
    };
}
