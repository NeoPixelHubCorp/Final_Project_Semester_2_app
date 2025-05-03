import 'package:final_project_pengaduan_masyarakat_sem2/widget/berita_terbaru_card.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/widget/berita_trending_card.dart';
import 'package:flutter/material.dart';

class BeritaPages extends StatefulWidget {
  const BeritaPages({super.key});

  @override
  State<BeritaPages> createState() => _BeritaPagesState();
}

class _BeritaPagesState extends State<BeritaPages> {
  bool isTerbaruSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text.rich(
                TextSpan(
                  text: 'Stay ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: 'Connected',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(text: ' With The\nWorld’s '),
                    TextSpan(
                      text: 'Top Stories',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(text: ' at Your\n'),
                    TextSpan(
                      text: 'Fingertips',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  // Tombol Terbaru
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isTerbaruSelected = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isTerbaruSelected ? Colors.blue : Colors.grey[300],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.center,
                        child: Text(
                          'Terbaru',
                          style: TextStyle(
                            color: isTerbaruSelected ? Colors.white : Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // Tombol Trending
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isTerbaruSelected = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isTerbaruSelected ? Colors.grey[300] : Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.center,
                        child: Text(
                          'Trending',
                          style: TextStyle(
                            color: isTerbaruSelected ? Colors.grey : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Konten berdasarkan pilihan
              Expanded(
                child: isTerbaruSelected
                    ? const BeritaTerbaruCard() // widget dari file berita_terbaru_card.dart
                    : const BeritaTrendingCard(), // widget dari file berita_trending_card.dart
              ),
            ],
          ),
        ),
      ),
    );
  }
}
