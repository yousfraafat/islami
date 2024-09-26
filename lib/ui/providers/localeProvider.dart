import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  String currantLocale = 'en';
  static const String languageKey = 'language';
  final SharedPreferences prefs;

  LocaleProvider(this.prefs) {
    readSavedLocale();
  }

  void readSavedLocale() {
    currantLocale = prefs.getString(languageKey) ?? 'en';
  }

  void saveCurrantLocale() {
    prefs.setString(languageKey, currantLocale);
  }

  void changeLocale(String newLocale) {
    currantLocale = newLocale;
    notifyListeners();
    saveCurrantLocale();
  }

  static LocaleProvider get(BuildContext context) {
    return Provider.of<LocaleProvider>(context);
  }
}
