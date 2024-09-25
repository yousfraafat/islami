import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currantTheme = ThemeMode.light;

  void changeTheme(ThemeMode newTheme) {
    currantTheme = newTheme;
    notifyListeners();
  }

  bool isDarkEnabled() {
    return currantTheme == ThemeMode.dark;
  }

  static ThemeProvider get(BuildContext context) {
    return Provider.of<ThemeProvider>(context);
  }
}
