import 'dart:convert';

class ComplainResponseModel {
  final String? message;
  final Complain? complain;

  ComplainResponseModel({
    this.message,
    this.complain,
  });

  factory ComplainResponseModel.fromJson(String str) =>
      ComplainResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ComplainResponseModel.fromMap(Map<String, dynamic> json) =>
      ComplainResponseModel(
        message: json["message"],
        complain:
            json["complain"] == null ? null : Complain.fromMap(json["complain"]),
      );

  Map<String, dynamic> toMap() => {
        "message": message,
        "complain": complain?.toMap(),
      };
}

class Complain {
  final int? id;
  final int? userId;
  final int? categoryId;
  final String? noAduan;
  final String? title;
  final String? description;
  final dynamic image;
  final double? latitude;
  final double? longitude;
  final String? address;
  final String? city;
  final String? district;
  final String? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Complain({
    this.id,
    this.userId,
    this.categoryId,
    this.noAduan,
    this.title,
    this.description,
    this.image,
    this.latitude,
    this.longitude,
    this.address,
    this.city,
    this.district,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory Complain.fromJson(String str) =>
      Complain.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Complain.fromMap(Map<String, dynamic> json) => Complain(
        id: json["id"],
        userId: json["user_id"],
        categoryId: json["category_id"],
        noAduan: json["no_aduan"],
        title: json["title"],
        description: json["description"],
        image: json["image"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        address: json["address"],
        city: json["city"],
        district: json["district"],
        status: json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "category_id": categoryId,
        "no_aduan": noAduan,
        "title": title,
        "description": description,
        "image": image,
        "latitude": latitude,
        "longitude": longitude,
        "address": address,
        "city": city,
        "district": district,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };

  /// Untuk mapping dari database lokal (SQLite)
  factory Complain.fromLocalMap(Map<String, dynamic> map) => Complain(
        id: map['id'],
        userId: map['user_id'],
        categoryId: map['category_id'],
        noAduan: map['no_aduan'],
        title: map['title'],
        description: map['description'],
        image: map['image'],
        latitude: map['latitude']?.toDouble(),
        longitude: map['longitude']?.toDouble(),
        address: map['address'],
        city: map['city'],
        district: map['district'],
        status: map['status'],
        createdAt: map['created_at'] != null
            ? DateTime.tryParse(map['created_at'])
            : null,
        updatedAt: map['updated_at'] != null
            ? DateTime.tryParse(map['updated_at'])
            : null,
      );

  Map<String, dynamic> toLocalMap() => {
        'id': id,
        'user_id': userId,
        'category_id': categoryId,
        'no_aduan': noAduan,
        'title': title,
        'description': description,
        'image': image,
        'latitude': latitude,
        'longitude': longitude,
        'address': address,
        'city': city,
        'district': district,
        'status': status,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };
}
