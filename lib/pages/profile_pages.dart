import 'package:flutter/material.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_local_datasource.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/intro/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 32),
            // Foto Profil
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 16),
            // Nama User
            const Text(
              'Alaiya Mint',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            // List Menu
            Expanded(
              child: ListView(
                children: [
                  _buildMenuItem(
                    title: 'Edit Profil',
                    onTap: () {
                      // TODO: Navigasi ke Edit Profil
                    },
                  ),
                  const Divider(height: 1),
                  _buildMenuItem(
                    title: 'Tentang SIGAP',
                    onTap: () {
                      // TODO: Navigasi ke Tentang SIGAP
                    },
                  ),
                  const Divider(height: 1),
                  _buildMenuItem(
                    title: 'Syarat dan Ketentuan',
                    onTap: () {
                      // TODO: Navigasi ke Syarat dan Ketentuan
                    },
                  ),
                  const Divider(height: 1),
                  _buildMenuItem(
                    title: 'Kebijakan Privasi',
                    onTap: () {
                      // TODO: Navigasi ke Kebijakan Privasi
                    },
                  ),
                ],
              ),
            ),
            // Tombol Logout
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.red),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () async {
                    await AuthLocalDatasource().removeAuthData();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                      (route) => false,
                    );
                  },
                  child: const Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({required String title, required VoidCallback onTap}) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
