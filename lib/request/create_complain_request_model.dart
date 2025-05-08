import 'dart:convert';

class CreateComplainRequestModel {
    final int? userId;
    final int? categoryId;
    final String? noAduan;
    final String? title;
    final String? description;
    final String? image;
    final double? latitude;
    final double? longitude;
    final String? address;
    final String? city;
    final String? district;
    final String? status;

    CreateComplainRequestModel({
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
    });

    factory CreateComplainRequestModel.fromJson(String str) => CreateComplainRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CreateComplainRequestModel.fromMap(Map<String, dynamic> json) => CreateComplainRequestModel(
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
    );

    Map<String, dynamic> toMap() => {
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
    };
}
