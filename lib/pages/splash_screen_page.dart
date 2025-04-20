import 'dart:async';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/constant/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Langsung pindah ke LoginPage setelah 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.dodgerBlue, // langsung biru
      body: Center(
        child: Image.asset(
          'assets/Logoo.png',
          width: 189,
        ),
      ),
    );
  }
}
