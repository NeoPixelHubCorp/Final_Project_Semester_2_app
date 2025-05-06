import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  // tulisan label di atas textfield
  final TextEditingController controller;
  // untuk ngisi textfield, (mengambil dan merubah nilai input)
  final bool obscureText;
  // untuk menyembunyikan password
  final bool isPasswordCorrect;
  // untuk tahu apakah password input sudah benar (muncul icon centang)
  final bool isPasswordWrong;
  // untuk merubah border menjadi merah
  final VoidCallback? toggleObscureText;
  // untuk show/ hide

  const CustomTextField({
    Key? key,
    required this.label,
    required this.controller,
    this.obscureText = false,
    this.isPasswordCorrect = false,
    this.isPasswordWrong = false,
    this.toggleObscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 14)),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: isPasswordWrong ? Colors.red : Colors.blue,
                width: 2,
              ),
            ),
            suffixIcon: (toggleObscureText != null)
                ? isPasswordCorrect
                    ? const Icon(Icons.check_circle, color: Colors.green)
                    : IconButton(
                        icon: Icon(
                          obscureText ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: toggleObscureText,
                      )
                : null,
          ),
        ),
      ],
    );
  }
}
