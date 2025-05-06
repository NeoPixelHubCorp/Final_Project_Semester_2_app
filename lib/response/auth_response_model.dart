import 'dart:convert';
// ini objek dart = bukan murni map.. tapi bisa diubah jadi map atau dibuat dari map -> contoh objek = nama, ubahNama(),
class AuthResponseModel {
  final User? user;
  final String? token;

  AuthResponseModel({
    this.user,
    this.token,
  });

  // untuk menerima string JSON langsung dan ngubahnya ke object dart
  factory AuthResponseModel.fromJson(String str) => AuthResponseModel.fromMap(json.decode(str));
  // untuk mengubah objek dart ke bentuk JSON string lagi
  String toJson() => json.encode(toMap());

  // untuk menerima map JSON (bentuk key-value) dan convert ke dart objek contoh Map -> "nama": "Faizah"
  factory AuthResponseModel.fromMap(Map<String, dynamic> json) => AuthResponseModel(
        user: json["user"] == null ? null : User.fromMap(json["user"]),
        token: json["token"],
      );
  // ini untuk ngubah objek dart ke bentuk Map JSON
  Map<String, dynamic> toMap() => {
        "user": user?.toMap(),
        "token": token,
      };

    // soalnya kadang API ngasih data udah dalam bentuk map bukan string, makanya converter nya dua duanya disiapin
}

class User {
  final int id;
  final String name;
  final String email;
  final String? phoneNumber;
  final String role;
  final String? profilePhoto;
  final String? emailVerifiedAt;
  final String? rememberToken;
  final String? createdAt;
  final String? updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    this.phoneNumber,
    required this.role,
    this.profilePhoto,
    this.emailVerifiedAt,
    this.rememberToken,
    this.createdAt,
    this.updatedAt,
  });
  //  buat ngubah JSON string ke Dart Objek
  factory User.fromJson(String str) => User.fromMap(json.decode(str));
  //  buat ubah Dart Objek ke JSON String
  String toJson() => json.encode(toMap());
  //  dari Map JSON ke Dart Objek
  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        role: json["role"],
        profilePhoto: json["profile_photo"],
        emailVerifiedAt: json["email_verified_at"],
        rememberToken: json["remember_token"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );
  // buat ngubah dari Dart Objek ke Map JSON
  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "phone_number": phoneNumber,
        "role": role,
        "profile_photo": profilePhoto,
        "email_verified_at": emailVerifiedAt,
        "remember_token": rememberToken,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
      // intinya fleksibel mau dapet data dari server atau mau kirim data ke server
}
