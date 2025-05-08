import 'package:final_project_pengaduan_masyarakat_sem2/auth/bloc/profile/profile_bloc.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/request/profile_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/response/profile_response_model.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();

  bool isButtonEnabled = false;
  User? currentUser;

  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
    nameController.addListener(_validateForm);
    emailController.addListener(_validateForm);
    passwordController.addListener(_validateForm);
    phoneController.addListener(_validateForm);
  }

  void _validateForm() {
    final isValid = nameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        phoneController.text.isNotEmpty;

    if (isValid != isButtonEnabled) {
      setState(() {
        isButtonEnabled = isValid;
      });
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Edit profil',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
      ),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (users) {
              if (users.isNotEmpty) {
                currentUser = users.first;
                nameController.text = currentUser?.name ?? '';
                emailController.text = currentUser?.email ?? '';
                phoneController.text = currentUser?.phoneNumber ?? '';
              }
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () {
              return SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.camera_alt,
                          color: Colors.white, size: 32),
                    ),
                    const SizedBox(height: 32),
                    _buildInputField("Nama Lengkap", nameController),
                    _buildInputField("E-mail", emailController),
                    _buildInputField("Kata Sandi", passwordController,
                        obscureText: true),
                    _buildInputField("Nomor HP", phoneController),
                    const SizedBox(height: 32),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: isButtonEnabled ? _saveChanges : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              isButtonEnabled ? Colors.blue : Colors.grey[300],
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('Simpan Perubahan'),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _saveChanges() {
    if (currentUser != null) {
      final updatedUser = ProfileRequestModel(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        passwordConfirmation: passwordController.text,
      );
      context.read<ProfileBloc>().add(ProfileEvent.updateProfile(updatedUser));

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Perubahan disimpan')),
      );
    }
  }

  Widget _buildInputField(String label, TextEditingController controller,
      {bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            )),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 14,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
