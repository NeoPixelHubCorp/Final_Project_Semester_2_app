import 'dart:async';
import 'package:flutter/material.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_local_datasource.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/intro/login_page.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/main_pages.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/constants/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _imageScaleController;
  late Animation<double> _imageScaleAnimation;
  bool _startCircularReveal = false;
  bool _checkLoginFinished = false;
  Widget _nextPage = const LoginPage();

  @override
  void initState() {
    super.initState();
    _imageScaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _imageScaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _imageScaleController, curve: Curves.easeOutBack),
    );
    _startAnimationAndLoginCheck();
  }

  Future<void> _startAnimationAndLoginCheck() async {
    await Future.delayed(const Duration(milliseconds: 300));
    _imageScaleController.forward();
    await Future.delayed(const Duration(milliseconds: 1500));
    setState(() {
      _startCircularReveal = true;
    });

    final isLoggedIn = await AuthLocalDatasource().isLogin();
    if (isLoggedIn) {
      _nextPage = const MainPage();
    } else {
      _nextPage = const LoginPage();
    }

    await Future.delayed(const Duration(milliseconds: 1800));
    setState(() {
      _checkLoginFinished = true;
    });
  }

  @override
  void dispose() {
    _imageScaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (_checkLoginFinished) {
      return _nextPage;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          if (_startCircularReveal)
            Positioned.fill(
              child: TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0.0, end: size.longestSide * 1.5),
                duration: const Duration(milliseconds: 1000),
                builder: (context, radius, child) {
                  return ClipPath(
                    clipper: CircleRevealClipper(radius),
                    child: Container(color: AppColor.primary),
                  );
                },
              ),
            ),
          Center(
            child: ScaleTransition(
              scale: _imageScaleAnimation,
              child: Image.asset(
                'assets/images/Logo.png',
                color: _startCircularReveal ? Colors.white : AppColor.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleRevealClipper extends CustomClipper<Path> {
  final double radius;
  CircleRevealClipper(this.radius);

  @override
  Path getClip(Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    return Path()..addOval(Rect.fromCircle(center: center, radius: radius));
  }

  @override
  bool shouldReclip(CircleRevealClipper oldClipper) {
    return radius != oldClipper.radius;
  }
}
