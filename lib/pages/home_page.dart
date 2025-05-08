import 'package:final_project_pengaduan_masyarakat_sem2/pages/notification_page.dart';
import 'package:flutter/material.dart';

/// === MODEL LAPORAN ===
class LaporanModel {
  final String nama;
  final String judul;
  final String deskripsi;
  final DateTime tanggal;
  final String image;

  LaporanModel({
    required this.nama,
    required this.judul,
    required this.deskripsi,
    required this.tanggal,
    required this.image,
  });
}

/// === MODEL ARTIKEL ===
class ArtikelModel {
  final String judul;
  final String deskripsi;
  final DateTime tanggal;
  final String image;

  ArtikelModel({
    required this.judul,
    required this.deskripsi,
    required this.tanggal,
    required this.image,
  });
}

/// === HOMEPAGE ===
class HomePage extends StatefulWidget {
  HomePage({super.key});

  final List<LaporanModel> report = [
    LaporanModel(
      nama: 'Likaaa',
      judul: 'Jalan Rusak',
      deskripsi: 'Jalan berlubang di depan sekolah.',
      tanggal: DateTime(2025, 5, 3),
      image: 'assets/images/onboarding.png',
    ),
  ];

  final List<ArtikelModel> artikel = [
    ArtikelModel(
      judul: 'Tips Menjaga Kebersihan',
      deskripsi: 'Selalu buang sampah pada tempatnya.',
      tanggal: DateTime(2025, 5, 3),
      image: 'assets/images/onboarding.png',
    ),
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class NotifikasiModel {
  final String judul;
  final String isi;

  NotifikasiModel({required this.judul, required this.isi});
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final artikel = widget.artikel.isNotEmpty ? widget.artikel[0] : null;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  'assets/images/Logo.png',
                  height: 60,
                  width: 75,
                ),
              ),
              const Spacer(),
              IconButton(
                padding: const EdgeInsets.only(right: 20),
                icon: const Icon(Icons.notifications),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          // === BANNER SLIDABLE ===
          SizedBox(
            height: 250,
            child: PageView.builder(
              itemCount: 3, // Ganti sesuai jumlah banner
              padEnds: true,
              controller: PageController(viewportFraction: 0.9),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/onboardingg.png'), // Ganti dinamis jika perlu
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 25),

          // === Judul Section ===
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Laporan Terbaru',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 8),

          // === List Laporan ===
          ListView.builder(
            itemCount: widget.report.length,
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final laporan = widget.report[index];
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            laporan.nama,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            laporan.judul,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            laporan.deskripsi,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 12),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            laporan.tanggal.toString(),
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        laporan.image,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
