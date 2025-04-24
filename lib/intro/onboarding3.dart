import 'package:final_project_pengaduan_masyarakat_sem2/intro/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Onboarding3());
}

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LaporanScreen(),
    );
  }
}

class LaporanScreen extends StatefulWidget {
  const LaporanScreen({super.key});

  @override
  State<LaporanScreen> createState() => _LaporanScreenState();
}

class _LaporanScreenState extends State<LaporanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Ilustrasi (gunakan asset/image network di sini)
              Center(
                child: Image.asset(
                  'assets/onboardinggg.png', // placeholder
                  height: 200,
                ),
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
                    // Aksi saat diklik
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginPage()));
                    // aksi saat tombol ditekan
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Mulai sekarang diklik!'),
                      ),
                    );
                  },
                  child: const Text(
                    'Mulai Sekarang',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
