import 'package:flutter/material.dart';

class TentangSigapPages extends StatelessWidget {
  const TentangSigapPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tentang SIGAP',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 24),
            Center(
              child: Image.asset(
                'assets/images/Logo.png',
                height: 80,
                width: 100,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Sebuah sistem berbasis digital yang dirancang untuk mencatat, memantau, dan mengelola gangguan layanan yang terjadi pada suatu organisasi, terutama yang berkaitan dengan layanan publik lebih cepat, mudah, dan transparan.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
