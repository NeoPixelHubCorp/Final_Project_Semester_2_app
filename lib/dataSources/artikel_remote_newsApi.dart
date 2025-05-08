import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:final_project_pengaduan_masyarakat_sem2/response/artikel_response_model.dart';

class ArtikelRemoteNewsapi {
  Future<List<Article>> article() async {
    const url =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=2dda7d1ceffa4778afdc6b7d168d2e2d";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      final result = responseBody["articles"] as List;
      final listArtikel = result.map((e) => Article.fromJson(e)).toList();
      return listArtikel;
    } else {
      throw Exception("failed to load data");
    }
  }

  Future<List<Article>> articleByKeyword(String keyword) async {
  final url =
      "https://newsapi.org/v2/everything?q=$keyword&sortBy=publishedAt&language=en&apiKey=2dda7d1ceffa4778afdc6b7d168d2e2d";
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    final body = jsonDecode(response.body);
    final articles = (body["articles"] as List).map((e) => Article.fromMap(e)).toList();
    return articles;
  } else {
    throw Exception("Gagal memuat berita dengan keyword: $keyword");
  }
}

}
