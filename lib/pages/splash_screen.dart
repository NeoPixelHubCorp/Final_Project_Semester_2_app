import 'dart:async';
import 'package:flutter/material.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/constant/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _showFirstLogo = true;
  bool _fadeOut = false;
  Color _backgroundColor = AppColor.dodgerBlue;

  @override
  void initState() {
    super.initState();

    // Step 1: Ganti logo setelah 1.2 detik
    Future.delayed(const Duration(milliseconds: 1200), () {
      setState(() {
        _fadeOut = true; // mulai fade out
      });

      // Setelah fade out selesai, ganti logo dan mulai fade in
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          _showFirstLogo = false;
          _backgroundColor = Colors.white;
          _fadeOut = false;
        });
      });
    });

    // Step 2: Navigasi ke halaman utama setelah 3 detik total
    Future.delayed(const Duration(seconds: 1), () {
      // Ganti dengan navigasi halaman berikutnya
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
        color: _backgroundColor,
        child: Center(
          child: AnimatedOpacity(
            opacity: _fadeOut ? 1.0 : 1.0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            child: Image.asset(
              _showFirstLogo ? 'assets/Logoo.png' : 'assets/Logo.png',
              width: 189,
            ),
          ),
        ),
      ),
    );
  }
}
