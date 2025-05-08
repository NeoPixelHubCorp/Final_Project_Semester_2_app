import 'dart:convert';

class CreateComplainResponseModel {
    final String? message;
    final Data? data;

    CreateComplainResponseModel({
        this.message,
        this.data,
    });

    factory CreateComplainResponseModel.fromJson(String str) => CreateComplainResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CreateComplainResponseModel.fromMap(Map<String, dynamic> json) => CreateComplainResponseModel(
        message: json["message"],
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "data": data?.toMap(),
    };
}

class Data {
    final String? title;
    final String? description;
    final dynamic image;
    final double? latitude;
    final double? longitude;
    final String? address;
    final String? city;
    final String? district;
    final int? categoryId;
    final String? noAduan;
    final int? userId;
    final DateTime? updatedAt;
    final DateTime? createdAt;
    final int? id;

    Data({
        this.title,
        this.description,
        this.image,
        this.latitude,
        this.longitude,
        this.address,
        this.city,
        this.district,
        this.categoryId,
        this.noAduan,
        this.userId,
        this.updatedAt,
        this.createdAt,
        this.id,
    });

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        title: json["title"],
        description: json["description"],
        image: json["image"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        address: json["address"],
        city: json["city"],
        district: json["district"],
        categoryId: json["category_id"],
        noAduan: json["no_aduan"],
        userId: json["user_id"],
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        id: json["id"],
    );

    Map<String, dynamic> toMap() => {
        "title": title,
        "description": description,
        "image": image,
        "latitude": latitude,
        "longitude": longitude,
        "address": address,
        "city": city,
        "district": district,
        "category_id": categoryId,
        "no_aduan": noAduan,
        "user_id": userId,
        "updated_at": updatedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "id": id,
    };
}
