import 'package:flutter/material.dart';

class KebijakanPrivasiPages extends StatelessWidget {
  const KebijakanPrivasiPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kebijakan Privasi',
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
              'Kami sangat menghargai privasi pengguna aplikasi SIGAP. Kebijakan privasi ini menjelaskan bagaimana kami mengumpulkan, menggunakan, melindungi, dan mengungkapkan informasi pribadi pengguna. Dengan menggunakan aplikasi ini, Anda setuju untuk terikat dengan kebijakan ini.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Informasi yang Kami Kumpulkan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'Kami mengumpulkan dua jenis informasi terkait penggunaan aplikasi:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Informasi Pribadi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 4.0, bottom: 8.0),
              child: Text(
                '• Nama, alamat email, nomor telepon, dan data lain yang diberikan saat melaporkan gangguan.',
              ),
            ),
            Text(
              '2. Informasi Non-Pribadi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 4.0, bottom: 16.0),
              child: Text(
                '• Data teknis yang dikumpulkan secara otomatis seperti alamat IP, jenis perangkat, sistem operasi, serta aktivitas penggunaan aplikasi untuk keperluan analisis kinerja dan peningkatan layanan.',
              ),
            ),
            Text(
              'Penggunaan Informasi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '• Memproses laporan gangguan dan memberikan respons atau solusi terkait masalah yang dihadapi.'),
                  SizedBox(height: 4),
                  Text(
                      '• Meningkatkan kualitas layanan aplikasi dan melakukan perbaikan berdasarkan analisis data penggunaan.'),
                  SizedBox(height: 4),
                  Text(
                      '• Menghubungi pengguna untuk memberikan informasi atau klarifikasi mengenai status gangguan.'),
                  SizedBox(height: 4),
                  Text(
                      '• Keperluan administratif, termasuk pengelolaan akun pengguna dan pemeliharaan sistem.'),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Keamanan Data',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 4.0),
              child: Text(
                'Kami berkomitmen untuk melindungi informasi pribadi Anda dengan menggunakan teknologi enkripsi dan prosedur keamanan yang memadai. Namun, meskipun kami berusaha melindungi data dengan sebaik-baiknya, kami tidak dapat menjamin keamanan data yang dikirimkan melalui internet atau sistem online lainnya.',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Pembagian Informasi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Kami tidak akan menjual, menyewakan, atau membagikan informasi pribadi pengguna kepada pihak ketiga, kecuali dalam kondisi berikut:'),
                  SizedBox(height: 4),
                  Text(
                      '• Jika diwajibkan oleh hukum atau proses hukum yang berlaku (misalnya, permintaan dari pemerintah atau lembaga yang berwenang).'),
                  SizedBox(height: 4),
                  Text(
                      '• Untuk tujuan analisis dan perbaikan layanan, yang dilakukan oleh pihak ketiga yang telah kami pilih dan yang mematuhi standar perlindungan data yang ketat.'),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Pengelolaan Data Pengguna',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 4.0),
              child: Text(
                'Pengguna dapat mengakses, mengubah, atau menghapus informasi pribadi yang telah diberikan melalui aplikasi. Jika Anda ingin melakukan perubahan atau penghapusan data pribadi, Anda dapat menghubungi kami melalui informasi kontak yang disediakan.',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Cookies dan Teknologi Pelacakan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 4.0),
              child: Text(
                'Aplikasi ini menggunakan cookies dan teknologi pelacakan lain untuk mengumpulkan informasi tentang penggunaan aplikasi. Anda dapat mengatur browser Anda untuk menolak cookies, namun ini dapat memengaruhi fungsionalitas aplikasi.',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Perubahan Kebijakan Privasi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 4.0, bottom: 16.0),
              child: Text(
                'Kami dapat memperbarui kebijakan privasi ini dari waktu ke waktu. Perubahan akan diinformasikan melalui aplikasi atau media komunikasi lainnya.',
              ),
            ),
            Divider(),
            Center(
              child: Text(
                'Dengan menggunakan aplikasi ini, Anda setuju untuk terikat dengan kebijakan privasi ini.',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
