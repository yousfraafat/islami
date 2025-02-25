import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  static const String themeKey = 'theme';
  SharedPreferences prefs;

  ThemeProvider(this.prefs) {
    loadTheme();
  }

  void changeTheme(ThemeMode newTheme) {
    currentTheme = newTheme;
    notifyListeners();
    saveTheme();
  }

  Future<void> saveTheme() async {
    prefs.setBool(themeKey, isDark());
  }

  Future<void> loadTheme() async {
    bool isdark = prefs.getBool(themeKey) ?? false;
    currentTheme = isdark ? ThemeMode.dark : ThemeMode.light;
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }
}
