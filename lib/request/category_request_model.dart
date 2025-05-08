import 'dart:convert';

class CategoryRequestModel {
    final String? name;

    CategoryRequestModel({
        this.name,
    });

    factory CategoryRequestModel.fromJson(String str) => CategoryRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CategoryRequestModel.fromMap(Map<String, dynamic> json) => CategoryRequestModel(
        name: json["name"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
    };
}
