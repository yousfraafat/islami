import 'package:flutter/material.dart';

class MytThemeData {
  static final Color lightPrimary = Color(0xffB7935F);
  static final Color darkPrimary = Color(0xff141A2E);
  static final Color darkSecondary = Color(0xffFACC1D);

  static final ThemeData lightTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'messiri'),
          titleSmall: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
              fontFamily: 'messiri'),
          bodyMedium: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w400,
              fontFamily: 'inter'),
          bodySmall: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontFamily: 'inter')),
      cardTheme: CardTheme(
        color: Colors.white,
      ),
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
          seedColor: lightPrimary,
          primary: lightPrimary,
          onPrimary: Colors.black,
          secondary: lightPrimary,
          onSecondary: Colors.black),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ));

  static final ThemeData darkTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkPrimary),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'messiri'),
          titleSmall: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
              fontFamily: 'messiri'),
          bodyMedium: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w400,
              fontFamily: 'inter'),
          bodySmall: TextStyle(
              color: darkSecondary,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontFamily: 'inter')),
      cardTheme: CardTheme(
        color: darkPrimary,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: darkPrimary,
          primary: darkPrimary,
          onPrimary: Colors.white,
          secondary: darkSecondary,
          onSecondary: Colors.black),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkPrimary,
        selectedItemColor: darkSecondary,
        unselectedItemColor: Colors.white,
      ));
}
