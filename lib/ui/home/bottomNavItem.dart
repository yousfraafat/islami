import 'package:flutter/material.dart';
import 'package:islami2/ui/theme/mytheme.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem(String iconPath, String title)
      : super(
            icon: ImageIcon(AssetImage(iconPath)),
            label: title,
            backgroundColor: MytThemeData.lightPrimary);
}
