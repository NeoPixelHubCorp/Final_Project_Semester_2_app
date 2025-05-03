import 'package:flutter/material.dart';

class DetailLaporanPage extends StatelessWidget {
  const DetailLaporanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Laporan',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Placeholder Gambar
            Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(height: 16),

            // Judul
            const Text(
              'Jalan rusak - Dayeuh',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),

            // Kategori
            const Row(
              children: [
                Text(
                  'Kategori: Infrastruktur   ',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  'Kategori: Infrastruktur',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Lokasi
            const Text(
              'Jl. Raya Jonggol-Dayeuh, Sukanegara, Kec. Jonggol, Kabupaten Bogor, Jawa Barat',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 16),

            // Label Detail Laporan
            const Text(
              'Detail Laporan',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(height: 8),

            // Konten Detail Laporan (dalam box)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Jalan di dayeuh banyak yang berlubang, kalau hujan jadi becek',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 24),

            // Status Laporan (belum diisi)
            const Text(
              'Status Laporan',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            // Tambahan konten status bisa dimasukkan di sini
          ],
        ),
      ),
    );
  }
}
