import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  String currentLocale = 'en';
  static const String localeKey = 'locale';
  SharedPreferences prefs;

  LocaleProvider(this.prefs) {
    loadLocale();
  }

  void changeLocale(String newLocale) {
    currentLocale = newLocale;
    notifyListeners();
    saveLocale();
  }

  void saveLocale() {
    prefs.setString(localeKey, currentLocale);
  }

  void loadLocale() {
    currentLocale = prefs.getString(localeKey) ?? 'en';
  }
}
