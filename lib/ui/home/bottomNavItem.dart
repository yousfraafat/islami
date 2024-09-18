import 'package:flutter/material.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem(String title, Color backgroundColor,
      {Icon? mainIcon = null, String? iconPath})
      : super(
            icon:
                mainIcon != null ? mainIcon : ImageIcon(AssetImage(iconPath!)),
            label: title,
            backgroundColor: backgroundColor);
}
