import 'package:flutter/material.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem(
    String iconPath,
    String title,
    Color backgroundColor,
  ) : super(
            icon: ImageIcon(AssetImage(iconPath)),
            label: title,
            backgroundColor: backgroundColor);
}
