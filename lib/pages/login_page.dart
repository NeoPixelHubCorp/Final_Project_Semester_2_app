import 'package:final_project_pengaduan_masyarakat_sem2/auth/bloc/login/login_bloc.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/components/buttons.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_local_datasource.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/extentions/build_context_ext.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  success: (data) async {
                    await AuthLocalDatasource().saveAuthData(data);
                    context.pushReplacement(const MainPage());
                  },
                  error: (error) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(error),
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                );
              },
              child: TextField(
                controller: passwordController,
                obscureText: obscurePassword,
                onChanged: (_) => setState(() {}),
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  border: customBorder(Colors.grey),
                  focusedBorder:
                      customBorder(Colors.blue), // warna biru saat diklik
                  enabledBorder: customBorder(Colors.grey),
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
            ),
            const Spacer(),
            SizedBox(
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return Button.filled(
                        onPressed: () {
                          context.read<LoginBloc>().add(
                                LoginEvent.login(
                                  email: emailController.text,
                                  password: passwordController.text,
                                ),
                              );

                          // context.pushReplacement(const MainPage());
                        },
                        label: 'Login',
                      );
                    },
                    loading: () {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  );
                },
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
