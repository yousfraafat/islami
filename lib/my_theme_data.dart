import 'package:flutter/material.dart';

class MyThemeData {
  MyThemeData();

  static final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 35),
      selectedLabelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      unselectedIconTheme: IconThemeData(size: 40),
      unselectedLabelStyle: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
