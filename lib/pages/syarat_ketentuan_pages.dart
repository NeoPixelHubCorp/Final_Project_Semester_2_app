import 'package:flutter/material.dart';

class SyaratKetentuanPages extends StatelessWidget {
  const SyaratKetentuanPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Syarat dan Ketentuan',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Datang di SIGAP!',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'Dengan mengakses dan menggunakan aplikasi ini, pengguna dianggap telah membaca, memahami, dan menyetujui semua syarat dan ketentuan yang berlaku. Jika Anda tidak menyetujui syarat ini, harap tidak menggunakan aplikasi.',
            ),
            SizedBox(height: 16),
            Text(
              'Definisi:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            BulletList(items: [
              'Aplikasi: Sistem informasi gangguan pelayanan yang digunakan untuk melaporkan, memantau, dan menangani gangguan layanan.',
              'Pengguna: Setiap individu atau organisasi yang mengakses dan menggunakan aplikasi ini.',
              'Administrator: Pihak yang berwenang mengelola data dan sistem aplikasi.',
            ]),
            SizedBox(height: 16),
            Text(
              'Hak dan Kewajiban Pengguna',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            BulletList(items: [
              'Pengguna wajib memberikan data yang benar dan akurat saat melaporkan gangguan.',
              'Pengguna tidak diperbolehkan menyalahgunakan aplikasi untuk melaporkan informasi palsu atau menyesatkan.',
              'Pengguna berhak mendapatkan informasi mengenai status penanganan gangguan yang dilaporkan.',
            ]),
            SizedBox(height: 16),
            Text(
              'Hak dan Kewajiban Administrator',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            BulletList(items: [
              'Administrator berhak untuk menyunting atau menghapus laporan yang tidak sesuai dengan ketentuan.',
              'Administrator akan berupaya menjaga kerahasiaan data pribadi pengguna.',
              'Administrator tidak bertanggung jawab atas gangguan layanan yang disebabkan oleh force majeure atau kendala di luar kendali sistem.',
            ]),
            SizedBox(height: 16),
            Text(
              'Perlindungan Data',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            BulletList(items: [
              'Semua data yang masuk ke dalam sistem akan digunakan hanya untuk keperluan operasional dan peningkatan layanan.',
              'Aplikasi ini mematuhi kebijakan privasi dan perlindungan data sesuai dengan peraturan yang berlaku.',
            ]),
            SizedBox(height: 16),
            Text(
              'Batasan Tanggung Jawab',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            BulletList(items: [
              'Aplikasi ini disediakan sebagaimana adanya (as-is), tanpa jaminan tersurat maupun tersirat.',
              'Pengelola tidak bertanggung jawab atas kerugian yang timbul akibat penggunaan aplikasi, keterlambatan penanganan gangguan, atau kesalahan input data oleh pengguna.',
            ]),
            SizedBox(height: 16),
            Text(
              'Perubahan Ketentuan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Syarat dan Ketentuan ini dapat diperbarui sewaktu-waktu. Perubahan akan diumumkan melalui aplikasi atau media resmi lainnya.',
            ),
          ],
        ),
      ),
    );
  }
}

class BulletList extends StatelessWidget {
  final List<String> items;

  const BulletList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('• ',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Expanded(child: Text(item)),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
