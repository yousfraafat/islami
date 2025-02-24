import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/tabs/hadeth_tab/hadeth_details.dart';
import 'package:islami/tabs/quran_tab/chapter_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'islami app',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ChapterDetails.routeName: (context) => ChapterDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('en'),
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
