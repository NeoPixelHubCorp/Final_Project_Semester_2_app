import 'package:final_project_pengaduan_masyarakat_sem2/components/spaces.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/constants/color.dart';
import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 25.0,
            height: 25.0,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                isActive ? Colors.white : AppColor.navInActive,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                iconPath,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SpaceHeight(4.0),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isActive ? Colors.white : AppColor.navInActive,
            ),
          ),
        ],
      ),
    );
  }
}
