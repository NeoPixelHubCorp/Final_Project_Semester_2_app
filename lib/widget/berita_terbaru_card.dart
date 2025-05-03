import 'package:flutter/material.dart';

class BeritaTerbaruCard extends StatelessWidget {
  const BeritaTerbaruCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset('assets/images/onboardingg.png', width: 60),
          title: Text("Berita Terbaru #$index"),
          subtitle: const Text("Deskripsi singkat berita terbaru"),
        );
      },
    );
  }
}
