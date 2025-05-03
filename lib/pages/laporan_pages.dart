import 'package:final_project_pengaduan_masyarakat_sem2/pages/detail_laporan_pages.dart';
import 'package:flutter/material.dart';

class LaporanPage extends StatefulWidget {
  const LaporanPage({super.key});

  @override
  State<LaporanPage> createState() => _LaporanPageState();
}

class _LaporanPageState extends State<LaporanPage> {
  int _selecIndex = 1;
  String selectedFilter = 'Pending';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Laporan Saya'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          // Filter Button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: ['Pending', 'Diverifikasi', 'Diteruskan']
                .map(
                  (status) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: ChoiceChip(
                      label: Text(status),
                      selected: selectedFilter == status,
                      onSelected: (_) {
                        setState(() {
                          selectedFilter = status;
                        });
                      },
                      selectedColor: Colors.blue,
                      backgroundColor: Colors.white,
                      labelStyle: TextStyle(
                        color: selectedFilter == status
                            ? Colors.white
                            : Colors.black,
                      ),
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: selectedFilter == status
                              ? Colors.blue
                              : Colors.grey,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 16),

          // Card Laporan
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailLaporanPage(),
                  ),
                );
              },
              child: Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Keterangan Laporan
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Jalan rusak - Dayeuh',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'SGP1234567890',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Jalan di dayeuh banyak yang berlubang, kalau hujan jadi becek',
                              style: TextStyle(fontSize: 14),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              '17 April 2025, 09:30 WIB',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFEA9A),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                'Pending',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      // Gambar
                      Container(
                        width: 94,
                        height: 94,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/Logo.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
