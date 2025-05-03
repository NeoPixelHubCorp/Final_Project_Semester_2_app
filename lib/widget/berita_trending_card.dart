import 'package:flutter/material.dart';

class BeritaTrendingCard extends StatelessWidget {
  const BeritaTrendingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset('assets/images/onboardingg.png', width: 60),
          title: Text("Trending News #$index"),
          subtitle: const Text("Deskripsi singkat berita trending"),
        );
      },
    );
  }
}
