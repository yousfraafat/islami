import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami2/ui/chapter_details/chapter_details.dart';
import 'package:islami2/ui/hadeth_details/hadeth_details.dart';
import 'package:islami2/ui/home/home_screen.dart';
import 'package:islami2/ui/splash/splash_screen.dart';
import 'package:islami2/ui/theme/mytheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetails.routeName: (_) => ChapterDetails(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
      },
      theme: MytThemeData.lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('ar'),
    );
  }
}
