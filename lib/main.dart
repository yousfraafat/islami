import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/providers/locale_provider.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:islami/tabs/hadeth_tab/hadeth_details.dart';
import 'package:islami/tabs/quran_tab/chapter_details.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider(prefs)),
        ChangeNotifierProvider(create: (context) => LocaleProvider(prefs)),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    LocaleProvider localeProvider = Provider.of<LocaleProvider>(context);
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
      locale: Locale(localeProvider.currentLocale),
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: themeProvider.currentTheme,
    );
  }
}
