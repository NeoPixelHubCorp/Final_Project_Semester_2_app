import 'package:final_project_pengaduan_masyarakat_sem2/pages/beranda_pages.dart';
import 'package:flutter/material.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/berita_pages.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/laporan_pages.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/profile_pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // List page yang ditampilkan sesuai index
  final List<Widget> _pages = [
    const BerandaPages(), // Home (Beranda)
    const LaporanPages(),    // Laporan
    const BeritaPages(),     // Berita
    const ProfilePage(),    // Profil
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // body berubah sesuai tab aktif
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped, // handle tap
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            label: 'Laporan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_outlined),
            label: 'Berita',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profil',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          // Kalau mau buat tambah laporan misal
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
