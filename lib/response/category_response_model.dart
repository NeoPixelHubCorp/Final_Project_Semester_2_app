import 'dart:convert';

class CategoryResponseModel {
    final String? message;
    final Category? category;

    CategoryResponseModel({
        this.message,
        this.category,
    });

    factory CategoryResponseModel.fromJson(String str) => CategoryResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CategoryResponseModel.fromMap(Map<String, dynamic> json) => CategoryResponseModel(
        message: json["message"],
        category: json["category"] == null ? null : Category.fromMap(json["category"]),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "category": category?.toMap(),
    };
}

class Category {
    final String? name;
    final DateTime? updatedAt;
    final DateTime? createdAt;
    final int? id;

    Category({
        this.name,
        this.updatedAt,
        this.createdAt,
        this.id,
    });

    factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Category.fromMap(Map<String, dynamic> json) => Category(
        name: json["name"],
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        id: json["id"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "updated_at": updatedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "id": id,
    };
}
