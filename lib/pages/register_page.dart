import 'package:flutter/material.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/constant/color.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final ValueNotifier<bool> obscurePassword = ValueNotifier(true);
  final ValueNotifier<bool> obscureConfirmPassword = ValueNotifier(true);
  final ValueNotifier<bool> isFormValid = ValueNotifier(false);
  final ValueNotifier<bool> isButtonPressed = ValueNotifier(false);

  RegisterPage({super.key}) {
    firstNameController.addListener(_validateForm);
    lastNameController.addListener(_validateForm);
    emailController.addListener(_validateForm);
    passwordController.addListener(_validateForm);
    confirmPasswordController.addListener(_validateForm);
  }

  void _validateForm() {
    isFormValid.value = firstNameController.text.isNotEmpty &&
        lastNameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty;
  }

  OutlineInputBorder _borderStyle({Color color = Colors.black54}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
        leading: BackButton(color: Colors.black),
        centerTitle: false,
        title: const Text(
          'Daftar Akun',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Nama Depan & Belakang
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLabel("Nama depan"),
                      TextField(
                        controller: firstNameController,
                        decoration: InputDecoration(
                          border: _borderStyle(),
                          enabledBorder: _borderStyle(),
                          focusedBorder:
                              _borderStyle(color: AppColor.brightBlue),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLabel("Nama belakang"),
                      TextField(
                        controller: lastNameController,
                        decoration: InputDecoration(
                          border: _borderStyle(),
                          enabledBorder: _borderStyle(),
                          focusedBorder:
                              _borderStyle(color: AppColor.brightBlue),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Email
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildLabel("Alamat e-mail"),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: _borderStyle(),
                    enabledBorder: _borderStyle(),
                    focusedBorder: _borderStyle(color: AppColor.brightBlue),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Kata Sandi
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildLabel("Kata sandi"),
                ValueListenableBuilder<bool>(
                  valueListenable: obscurePassword,
                  builder: (context, isObscured, _) {
                    return TextField(
                      controller: passwordController,
                      obscureText: isObscured,
                      decoration: InputDecoration(
                        border: _borderStyle(),
                        enabledBorder: _borderStyle(),
                        focusedBorder: _borderStyle(color: AppColor.brightBlue),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObscured
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () => obscurePassword.value = !isObscured,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Konfirmasi Sandi
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildLabel("Konfirmasi kata sandi"),
                ValueListenableBuilder<bool>(
                  valueListenable: obscureConfirmPassword,
                  builder: (context, isObscured, _) {
                    return TextField(
                      controller: confirmPasswordController,
                      obscureText: isObscured,
                      decoration: InputDecoration(
                        border: _borderStyle(),
                        enabledBorder: _borderStyle(),
                        focusedBorder: _borderStyle(color: AppColor.brightBlue),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObscured
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () =>
                              obscureConfirmPassword.value = !isObscured,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),

            const Spacer(),

            // Tombol Masuk
            ValueListenableBuilder<bool>(
              valueListenable: isFormValid,
              builder: (context, isValid, _) {
                return ValueListenableBuilder<bool>(
                  valueListenable: isButtonPressed,
                  builder: (context, isPressed, _) {
                    return SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: isValid
                            ? () {
                                isButtonPressed.value = true;
                                print("Register: ${emailController.text}");
                                // reset warna tombol (opsional)
                                Future.delayed(
                                    const Duration(milliseconds: 300), () {
                                  isButtonPressed.value = false;
                                });
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isValid
                              ? (isPressed ? AppColor.brightBlue : Colors.black)
                              : AppColor.gray,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          "Masuk",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                );
              },
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
