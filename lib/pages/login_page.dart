import 'package:final_project_pengaduan_masyarakat_sem2/constant/color.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final isFormFilled =
        emailController.text.isNotEmpty && passwordController.text.isNotEmpty;

    OutlineInputBorder customBorder(Color color) {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color, width: 2),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        centerTitle: false,
        title: const Text(
          'Masuk Akun',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 80),

            // Email Input
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Alamat E-mail',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: emailController,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                border: customBorder(Colors.grey),
                focusedBorder:
                    customBorder(Colors.blue), // warna biru saat diklik
                enabledBorder: customBorder(Colors.grey),
              ),
            ),

            const SizedBox(height: 20),

            // Password Input
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Kata sandi',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: passwordController,
              obscureText: obscurePassword,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                border: customBorder(Colors.grey),
                focusedBorder:
                    customBorder(Colors.blue), // warna biru saat diklik
                enabledBorder: customBorder(Colors.grey.shade400),
                suffixIcon: IconButton(
                  icon: Icon(
                    obscurePassword ? Icons.visibility_off : Icons.visibility,
                    size: 20,
                  ),
                  onPressed: () {
                    setState(() {
                      obscurePassword = !obscurePassword;
                    });
                  },
                ),
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: isFormFilled
                    ? () {
                        print(
                            "Login with ${emailController.text} and ${passwordController.text}");
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.gray,
                  disabledBackgroundColor: AppColor.brightBlue, // Tambahkan ini!
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Masuk',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold, // Biar bold
                    fontSize: 16, // Boleh disesuaikan
                  ),
                ),
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
