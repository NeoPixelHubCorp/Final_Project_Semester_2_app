import 'dart:convert';

class LoginRequestModel {
  final String email;
  final String password;

  LoginRequestModel({
    required this.email,
    required this.password,
  });
    // berfungsi untuk membuat dan menerima JSON string dari API dan mengubahnya menjadi objek dart
    factory LoginRequestModel.fromJson(String str) => LoginRequestModel.fromMap(json.decode(str));
    //  ini buat ngubah objek dart ke json string supaya bisa dikirim ke server
    String toJson() => json.encode(toMap());
    // untuk menerima data dalam bentuk map JSON dan ubah jadi objek dart
    factory LoginRequestModel.fromMap(Map<String, dynamic> json) => LoginRequestModel(
        email: json["email"],
        password: json["password"],
    );
    // untuk mengubah objek dart kembali ke Map JSON supaya bisa dikirim lewat API
    Map<String, dynamic> toMap() => {
        "email": email,
        "password": password,
    };
}
