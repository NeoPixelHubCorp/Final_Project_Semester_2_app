import 'package:flutter/material.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/response/artikel_response_model.dart';

class BeritaTerbaruCard extends StatelessWidget {
  final Future<List<Article>> futureArticles;

  const BeritaTerbaruCard({super.key, required this.futureArticles});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
      future: futureArticles,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('Tidak ada berita terbaru.'));
        }

        final articles = snapshot.data!;
        return ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return ListTile(
              leading: Image.network(
                article.urlToImage ?? '',
                width: 90,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image),
              ),
              title: Text(article.title ?? ''),
              subtitle: Text(article.description ?? ''),
            );
          },
        );
      },
    );
  }
}
