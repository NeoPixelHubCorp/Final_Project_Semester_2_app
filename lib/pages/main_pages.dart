import 'package:final_project_pengaduan_masyarakat_sem2/pages/addLaporan_baru_pages.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/berita_pages.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/home_page.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/laporan_pages.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/profile_pages.dart';
import 'package:flutter/material.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/constants/color.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    LaporanPage(),
    LaporanBaruPage(),
    BeritaPages(),
    ProfilePages()
  ];

  void _onItemTapped(int index) {
    if (index != 2) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void _onFabPressed() {
    setState(() {
      _selectedIndex = 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      floatingActionButton: SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          onPressed: _onFabPressed,
          backgroundColor: AppColor.primary,
          shape: const CircleBorder(),
          elevation: 4,
          child: Icon(
            _selectedIndex == 2 ? Icons.note_add : Icons.note_add_outlined,
            size: 32,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10.0,
        color: AppColor.primary,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildNavItem(
                activeIcon: Icons.home,
                inactiveIcon: Icons.home_outlined,
                label: "Beranda",
                index: 0,
              ),
              _buildNavItem(
                activeIcon: Icons.report,
                inactiveIcon: Icons.report_outlined,
                label: "Laporan",
                index: 1,
              ),
              const SizedBox(width: 40),
              _buildNavItem(
                activeIcon: Icons.article,
                inactiveIcon: Icons.article_outlined,
                label: "Berita",
                index: 3,
              ),
              _buildNavItem(
                activeIcon: Icons.person,
                inactiveIcon: Icons.person_outline,
                label: "Profil",
                index: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData activeIcon,
    required IconData inactiveIcon,
    required String label,
    required int index,
  }) {
    final bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: SizedBox(
        width: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isSelected ? activeIcon : inactiveIcon,
              color: Colors.white,
              size: 30, // <<< Perbesar icon di sini
            ),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}



// import 'package:final_project_pengaduan_masyarakat_sem2/assets/assets.gen.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/constants/color.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/pages/addLaporan_baru_pages.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/pages/berita_pages.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/pages/home_page.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/pages/laporan_pages.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/pages/profile_pages.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/widget/nav_item.dart';
// import 'package:flutter/material.dart';

// class MainPages extends StatefulWidget {
//   const MainPages({super.key});

//   @override
//   State<MainPages> createState() => _MainPagesState();
// }

// class _MainPagesState extends State<MainPages> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     HomePage(),
//     LaporanPage(),
//     BeritaPages(),
//     ProfilePages()
//   ];
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) { 
//     return Scaffold(
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomAppBar(
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 10.0,
//         color: AppColor.primary,
//         child: SafeArea(
//           // ✅ Lindungi dari overflow di area bawah
//           child: Padding(
//             padding: const EdgeInsets.symmetric(
//                 horizontal: 20.0, vertical: 12.0), // ⬅ tambah vertical
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // KIRI FAB
//                 Row(
//                   children: [
//                     NavItem(
//                       iconPath: Assets.icons.nav.home.path,
//                       label: 'Beranda',
//                       isActive: _selectedIndex == 0,
//                       onTap: () => _onItemTapped(0),
//                     ),
//                     const SizedBox(width: 20),
//                     NavItem(
//                       iconPath: Assets.icons.nav.report.path,
//                       label: 'Laporan',
//                       isActive: _selectedIndex == 1,
//                       onTap: () => _onItemTapped(1),
//                     ),
//                   ],
//                 ),
//                 // KANAN FAB
//                 Row(
//                   children: [
//                     NavItem(
//                       iconPath: Assets.icons.nav.news.path,
//                       label: 'Berita',
//                       isActive: _selectedIndex == 2,
//                       onTap: () => _onItemTapped(2),
//                     ),
//                     const SizedBox(width: 20),
//                     NavItem(
//                       iconPath: Assets.icons.nav.profil.path,
//                       label: 'Profil',
//                       isActive: _selectedIndex == 3,
//                       onTap: () => _onItemTapped(3),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: GestureDetector(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => const LaporanBaruPage(),
//             ),
//           );
//         },
//         child: Container(
//           padding: const EdgeInsets.all(12.0),
//           decoration: const BoxDecoration(
//             shape: BoxShape.circle,
//             color: AppColor.primary,
//           ),
//           child: Image.asset(
//             'assets/icons/nav/plus (2).png',
//             width: 40,
//             height: 50,
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }
