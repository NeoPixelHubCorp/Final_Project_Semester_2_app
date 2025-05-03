import 'package:final_project_pengaduan_masyarakat_sem2/intro/login_page.dart';
import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({Key? key}) : super(key: key);

  Widget _buildIndicator(bool isActive) {
    return Container(
      width: isActive ? 24 : 12,
      height: 6,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gambar ilustrasi
            Image.asset(
              'assets/images/onboardinggg.png',
              width: 242,
              height: 176,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 40),

            // Judul
            const Text(
              'Lihat Perkembangan Laporanmu',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),

            // Deskripsi
            const Text(
              'SIGAP memungkinkan kamu memantau status laporan secara real-time.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 32),

            // Indicator halaman
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIndicator(false),
                const SizedBox(width: 8),
                _buildIndicator(false),
                const SizedBox(width: 8),
                _buildIndicator(true), // Aktif di halaman ke-3
              ],
            ),
            const SizedBox(height: 40),

            // Tombol Mulai Sekarang
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginPage()),
                  );
                },
                child: const Text(
                  'Mulai Sekarang',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
