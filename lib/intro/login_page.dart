import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/auth/bloc/login/login_bloc.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/intro/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIGAP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  bool _isPasswordWrong = false;
  bool _isPasswordCorrect = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _validatePassword() {
    const correctPassword = '123456'; // Ganti sesuai kebutuhan
    if (_passwordController.text == correctPassword) {
      setState(() {
        _isPasswordWrong = false;
        _isPasswordCorrect = true;
      });
    } else {
      setState(() {
        _isPasswordWrong = true;
        _isPasswordCorrect = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header Biru melengkung kanan bawah
        Container(
          width: double.infinity,
          height: 150,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(390),
            ),
          ),
          padding: const EdgeInsets.only(top: 60, left: 20),
          alignment: Alignment.topLeft,
          child: Image.asset(
            'assets/Logoo.png', // Gambar logo SIGAP
            width: 111,
            height: 50,
          ),
        ),
        const SizedBox(height: 65),

        // Form
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Alamat E-mail', style: TextStyle(fontSize: 14)),
              const SizedBox(height: 8),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              const Text('Kata sandi', style: TextStyle(fontSize: 14)),
              const SizedBox(height: 8),
              TextField(
                controller: _passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: _isPasswordWrong ? Colors.red : Colors.blue,
                      width: 2,
                    ),
                  ),
                  suffixIcon: _isPasswordCorrect
                      ? const Icon(Icons.check_circle, color: Colors.green)
                      : IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                ),
              ),

              if (_isPasswordWrong)
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    'Lupa kata sandi? Ganti kata sandi',
                    style: TextStyle(color: Colors.red),
                  ),
                ),

              const SizedBox(height: 44),

              // Tombol Masuk
              SizedBox(
                width: double.infinity,
                height: 50,
                child: BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        _validatePassword();

                        context.read<LoginBloc>().add(
                              LoginEvent.login(
                                email: _emailController.text,
                                password: _passwordController.text,
                              ),
                            );
                      },
                      child: const Text(
                        "Masuk",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 24),

              // Link ke halaman Daftar
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Belum punya akun? ',
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Daftar',
                        style: const TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterPage()),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
