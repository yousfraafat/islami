import 'package:flutter/material.dart';

class MytThemeData {
  static final Color lightPrimary = Color(0xffB7935F);
  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xffB7935F),
          primary: Color(0xffB7935F),
          onPrimary: Colors.white,
          secondary: Color(0xffB7935F),
          onSecondary: Colors.black),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ));
}
