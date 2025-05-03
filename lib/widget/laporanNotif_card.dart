import 'package:flutter/material.dart';

class LaporanCard extends StatelessWidget {
  final String judul;
  final String isi;
  final String image;
  final bool status;

  const LaporanCard({
    super.key,
    required this.judul,
    required this.isi,
    required this.image, // tambahkan ini
    required this.status, // tambahkan ini
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Gambar di kiri
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: image.isNotEmpty
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(image, fit: BoxFit.cover),
                    )
                  : const Icon(Icons.image_not_supported),
            ),
            const SizedBox(width: 12),
            // Konten teks di kanan
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    judul,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    isi,
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    status ? 'Selesai' : 'Menunggu',
                    style: TextStyle(
                      color: status ? Colors.green : Colors.orange,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
