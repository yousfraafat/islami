import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currantTheme = ThemeMode.light;
  static const String isDarkTheme = 'theme';
  final SharedPreferences prefs;

  ThemeProvider(this.prefs) {
    readSavedTheme();
  }

  void readSavedTheme() {
    bool isDark = prefs.getBool(isDarkTheme) ?? false;
    currantTheme = isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void saveCurrantTheme() {
    prefs.setBool(isDarkTheme, isDarkEnabled());
  }

  void changeTheme(ThemeMode newTheme) {
    currantTheme = newTheme;
    notifyListeners();
    saveCurrantTheme();
  }

  bool isDarkEnabled() {
    return currantTheme == ThemeMode.dark;
  }

  static ThemeProvider get(BuildContext context) {
    return Provider.of<ThemeProvider>(context);
  }
}
