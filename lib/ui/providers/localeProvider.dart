import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LocaleProvider extends ChangeNotifier {
  Locale currantLocale = Locale('en');

  void changeLocale(Locale newLocale) {
    currantLocale = newLocale;
    notifyListeners();
  }

  static LocaleProvider get(BuildContext context) {
    return Provider.of<LocaleProvider>(context);
  }
}
