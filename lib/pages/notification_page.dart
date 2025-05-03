import 'package:flutter/material.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/widget/laporanNotif_card.dart';

class NotifikasiModel {
  final String judul;
  final String isi;
  final String image;
  final bool status;

  NotifikasiModel({
    required this.judul,
    required this.isi,
    this.image = '',
    this.status = false,
  });
}

/// Dummy data notifikasi
final List<NotifikasiModel> notif = [
  NotifikasiModel(
    judul: 'Laporan Pending',
    isi:
        'Laporan dalam tahap pemeriksaan.\nPeriksa status laporan SGP1234567890 secara berkala pada halaman “Laporan”.',
    image: 'assets/images/onboarding.png',
    status: false,
  ),
];

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool hasNotif = notif.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Notifikasi'),
      ),
      body: hasNotif
          ? ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 12),
              itemCount: notif.length,
              itemBuilder: (context, index) {
                final notifikasi = notif[index];
                return LaporanCard(
                  judul: notifikasi.judul,
                  isi: notifikasi.isi,
                  image: notifikasi.image,
                  status: notifikasi.status,
                );
              },
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/notNotification.png',
                    width: 192,
                    height: 162,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Belum ada notifikasi baru',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
    );
  }
}
