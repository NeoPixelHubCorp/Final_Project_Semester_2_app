import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  spreadRadius: 0,
                  blurRadius: 30.0,
                  blurStyle: BlurStyle.outer,
                  offset: const Offset(0, -2),
                ),
              ],
            )));
    //   floatingActionButton: GestureDetector(
    //     onTap: () => context.push()),
    //     child: Container(
    //       padding: EdgeInsets.all(12.0),
    //       decoration: const BoxDecoration(
    //         shape: BoxShape.circle,
    //         color: AppColor.brightBlue,
    //       ),
    //       child: Assets.icons.nav.scan.svg(),
    //     ),
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    // );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
