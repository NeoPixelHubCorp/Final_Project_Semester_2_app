import 'package:final_project_pengaduan_masyarakat_sem2/intro/login_page.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/intro/onboarding2.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({Key? key}) : super(key: key);

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
              'assets/images/onboarding.png', // ganti dengan path asset kamu
              width: 242,
              height: 176,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 30),

            // Judul
            const Text(
              'Selamat Datang',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),

            // Deskripsi
            const Text(
              'Kami hadir untuk memudahkan kamu menyampaikan keluhan, laporan, atau aspirasi dengan cepat dan aman.\nSemua suara kamu berarti.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 32),

            // Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIndicator(true),
                const SizedBox(width: 8),
                _buildIndicator(false),
                const SizedBox(width: 8),
                _buildIndicator(false),
              ],
            ),

            const SizedBox(height: 100),

            // Tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tombol Lewati
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginPage()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 12),
                    side: const BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Lewati',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),

                // Tombol Lanjut
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const Onboarding2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Lanjut',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

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
}
