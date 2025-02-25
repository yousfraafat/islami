import 'package:flutter/material.dart';

class MyThemeData {
  MyThemeData();

  static final Color lightPrimary = Color(0xffB7935F);
  static final Color lightSecondary = Color(0xffC9B496);
  static final Color darkPrimary = Color(0xff141A2E);
  static final Color darkSecondary = Color(0xffFACC1D);
  static final ThemeData lightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white),
    cardColor: Colors.white,
    textTheme: TextTheme(
      titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: 'El_Messiri'),
      titleMedium: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontFamily: 'El_Messiri'),
      bodyLarge: TextStyle(color: Colors.black, fontSize: 30),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
          fontFamily: 'El_Messiri'
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(size: 35),
      selectedLabelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      unselectedIconTheme: IconThemeData(size: 40, color: Colors.white),
      unselectedLabelStyle: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightPrimary,
      primary: lightPrimary,
      onPrimary: Colors.white,
      secondary: lightPrimary,
      onSecondary: Colors.white,
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkPrimary),
    cardColor: darkPrimary,
    textTheme: TextTheme(
      titleLarge: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(color: darkSecondary, fontSize: 30,),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: darkSecondary,
      selectedIconTheme: IconThemeData(size: 35),
      selectedLabelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      unselectedIconTheme: IconThemeData(size: 40, color: Colors.white),
      unselectedLabelStyle: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkPrimary,
      primary: darkPrimary,
      onPrimary: Colors.white,
      secondary: darkSecondary,
      onSecondary: Colors.black,
    ),
  );
}
