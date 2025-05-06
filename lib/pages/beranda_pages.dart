// import 'package:flutter/material.dart';

// class BerandaPages extends StatefulWidget {
//   const BerandaPages({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: Container(
//             padding: const EdgeInsets.all(20.0),
//             decoration: BoxDecoration(
//               borderRadius:
//                   const BorderRadius.vertical(top: Radius.circular(30)),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.08),
//                   spreadRadius: 0,
//                   blurRadius: 30.0,
//                   blurStyle: BlurStyle.outer,
//                   offset: const Offset(0, -2),
//                 ),
//               ],
//             )));
//     //   floatingActionButton: GestureDetector(
//     //     onTap: () => context.push()),
//     //     child: Container(
//     //       padding: EdgeInsets.all(12.0),
//     //       decoration: const BoxDecoration(
//     //         shape: BoxShape.circle,
//     //         color: AppColor.brightBlue,
//     //       ),
//     //       child: Assets.icons.nav.scan.svg(),
//     //     ),
//     //   ),
//     //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     // );
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
// }
// import 'package:final_project_pengaduan_masyarakat_sem2/pages/berita_pages.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/pages/laporan_pages.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/pages/profile_pages.dart';
import 'package:flutter/material.dart';

class BerandaPages extends StatefulWidget {
  const BerandaPages({super.key});

  @override
  State<BerandaPages> createState() => _BerandaPagesState();
}

class _BerandaPagesState extends State<BerandaPages> {
  // int _selectedIndex = 0;
  // final _pages = [
  //   const BerandaPages(),
  //   const LaporanPages(),
  //   const BeritaPages(),
  //   const ProfilePages(),
  // ];
  // kenapa pakai final, karena dengan final variabel _pages hanya bisa di set sekali saja abs itu ga bs diubah setelahnya
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SIGAP',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {
              // TODO: Navigasi ke halaman notifikasi
            },
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Banner
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Colors.amber[300],
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          const SizedBox(height: 24),

          // Section title
          const Text(
            'Laporan Terbaru',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // List laporan terbaru
          ...List.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Isi laporan
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'ayudhia anandita',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Lampu jalan mati - Dayeuh',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'sudah 3 hari ini lampu jalan mati, kalau malam gelap banget bahaya...',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 13),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '17 April 2025, 09:30 WIB',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),

                  // Thumbnail kotak
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
      // bottomNavigationBar: 
      // BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor: Colors.blue,
      //   unselectedItemColor: Colors.grey,
      //   showSelectedLabels: true,
      //   showUnselectedLabels: true,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Beranda',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.assignment_outlined),
      //       label: 'Laporan',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.newspaper_outlined),
      //       label: 'Berita',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outline),
      //       label: 'Profil',
      //     ),
      //   ],
      //   currentIndex: 0, // posisi tab yang aktif
      //   onTap: (index) {
      //     // TODO: Navigasi antar tab
      //   },
      // ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.blue,
      //   onPressed: () {
      //     // TODO: Aksi ketika tombol tambah ditekan
      //   },
      //   child: const Icon(Icons.assignment_outlined),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
