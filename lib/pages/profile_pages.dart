import 'package:final_project_pengaduan_masyarakat_sem2/components/buttons.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/constants/color.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_local_datasource.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/extentions/build_context_ext.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/intro/splash_screen_page.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/kebijakan_privasi_pages.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/syarat_ketentuan_pages.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/tentang_sigap_pages.dart';
import 'package:flutter/material.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/edit_profile_pages.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/assets/assets.gen.dart';

class ProfilePages extends StatelessWidget {
  ProfilePages({super.key});

  void _showLogoutDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(13)),
      ),
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Keluar Akun',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Apakah Kamu yakin untuk keluar dari akun ini?'),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.blue, // Warna border biru
                          width: 1.0, // Ketebalan border
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Sudut membulat
                        ),
                        backgroundColor: Colors.white, // Latar putih
                      ),
                      child: const Text(
                        'Tidak',
                        style: TextStyle(
                          color: Colors.blue, // Warna teks senada border
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.of(context).pop(); // Tutup modal

                        // Hapus data autentikasi
                        await AuthLocalDatasource().removeAuthData();

                        // Tampilkan snackbar
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Berhasil keluar dari akun'),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );

                        // Navigasi ke SplashScreen
                        context.pushReplacement(const SplashScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        side: const BorderSide(color: Colors.red, width: 1.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Ya, keluar',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Profile
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Info Akun
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Alaiya Mint',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text('alaiyamint@gmail.com'),
                        Text('0821976345'),
                      ],
                    ),
                  ),
                  // Foto Profil
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child:
                        const Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Menu List
              const Divider(height: 24),
              ProfileMenuItem(
                iconPath: Assets.icons.profile.edit.path,
                text: 'Edit profil',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditProfilePage(),
                    ),
                  );
                },
              ),
              const Divider(height: 24),
              ProfileMenuItem(
                iconPath: Assets.icons.profile.tentangsigap.path,
                text: 'Tentang SIGAP',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TentangSigapPages(),
                    ),
                  );
                },
              ),
              const Divider(height: 24),
              ProfileMenuItem(
                iconPath: Assets.icons.profile.syaratketentuan.path,
                text: 'Syarat dan Ketentuan',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SyaratKetentuanPages(),
                    ),
                  );
                },
              ),
              const Divider(height: 24),
              ProfileMenuItem(
                iconPath: Assets.icons.profile.kebijakanprivacy.path,
                text: 'Kebijakan Privasi',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const KebijakanPrivasiPages(),
                    ),
                  );
                },
              ),
              const Divider(height: 24),
              ProfileMenuItem(
                iconPath: Assets.icons.profile.logout.path,
                text: 'Keluar',
                textColor: Colors.red,
                iconColor: Colors.red,
                onTap: () => _showLogoutDialog(context),
              ),
              const Divider(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final String iconPath;
  final String text;
  final VoidCallback onTap;
  final Color? textColor;
  final Color? iconColor;

  const ProfileMenuItem({
    super.key,
    required this.iconPath,
    required this.text,
    required this.onTap,
    this.textColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Image.asset(
        iconPath,
        width: 24,
        height: 24,
        color: iconColor,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: textColor ?? Colors.black,
          fontSize: 16,
        ),
      ),
      trailing:
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      contentPadding: EdgeInsets.zero,
    );
  }
}
