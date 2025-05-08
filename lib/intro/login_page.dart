import 'package:final_project_pengaduan_masyarakat_sem2/constants/color.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_local_datasource.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/extentions/build_context_ext.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/main_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/auth/bloc/login/login_bloc.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/intro/register_page.dart';
import 'ganti_password_page.dart';

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
  bool _isPasswordValid = true;
  bool _isPasswordSuccess = false;
  bool _isLoading = false;
  bool _isButtonActive = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer();
    _emailController.addListener(_validateForm);
    _passwordController.addListener(_validateForm);
  }

  void _validateForm() {
    final isActive =
        _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;
    if (isActive != _isButtonActive) {
      setState(() {
        _isButtonActive = isActive;
      });
    }
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          loading: () {
            setState(() {
              _isLoading = true;
            });
          },
          success: (data) async {
            setState(() {
              _isPasswordValid = true;
              _isPasswordSuccess = true;
              _isLoading = false;
            });

            await AuthLocalDatasource().saveAuthData(data);

            // Tampilkan dialog notifikasi login berhasil
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => AlertDialog(
                title: const Text("Login Berhasil"),
                content: const Text("Selamat datang di aplikasi!"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      context.pushReplacement(MainPage());
                    },
                    child: const Text("OK"),),
                ],
              ),
            );
          },
          error: (error) {
            setState(() {
              _isPasswordValid = false;
              _isPasswordSuccess = false;
              _isLoading = false;
            });

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error),
                backgroundColor: Colors.red,
              ),
            );
          },
          orElse: () {
            setState(() {
              _isLoading = false;
            });
          },
        );
      },
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(390),
                    ),
                  ),
                  padding: const EdgeInsets.only(top: 60, left: 20),
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/images/Logoo.png',
                    width: 111,
                    height: 50,
                  ),
                ),
                const SizedBox(height: 65),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Alamat E-mail',
                          style: TextStyle(fontSize: 14)),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                                const BorderSide(color: Colors.blue, width: 2),
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
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color:
                                  _isPasswordValid ? Colors.grey : Colors.red,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color:
                                  _isPasswordValid ? Colors.blue : Colors.red,
                              width: 2,
                            ),
                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (_isPasswordSuccess)
                                const Icon(Icons.check_circle,
                                    color: Colors.green),
                              IconButton(
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
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      if (!_isPasswordValid)
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const GantiPasswordPage()),
                            );
                          },
                          child: const Text.rich(
                            TextSpan(
                              text: 'Lupa kata sandi? ',
                              style: TextStyle(color: Colors.red),
                              children: [
                                TextSpan(
                                  text: 'Ubah kata sandi',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      const SizedBox(height: 44),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: _isButtonActive
                              ? () {
                                  context.read<LoginBloc>().add(
                                        LoginEvent.login(
                                          email: _emailController.text,
                                          password: _passwordController.text,
                                        ),
                                      );
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                _isButtonActive ? Colors.blue : Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "Masuk",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 380),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'Belum punya akun? ',
                            style: const TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'Daftar',
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterPage()),
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
            ),
          ),
          if (_isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: const Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                        strokeWidth: 6,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
