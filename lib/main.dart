import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami2/ui/chapter_details/chapter_details.dart';
import 'package:islami2/ui/hadeth_details/hadeth_details.dart';
import 'package:islami2/ui/home/home_screen.dart';
import 'package:islami2/ui/providers/localeProvider.dart';
import 'package:islami2/ui/providers/themeProvider.dart';
import 'package:islami2/ui/splash/splash_screen.dart';
import 'package:islami2/ui/theme/mytheme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider(prefs)),
    ChangeNotifierProvider<LocaleProvider>(create: (_) => LocaleProvider(prefs))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);
    LocaleProvider localeProvider = LocaleProvider.get(context);
    return MaterialApp(
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (_) => SplashScreen(),
          HomeScreen.routeName: (_) => HomeScreen(),
          ChapterDetails.routeName: (_) => ChapterDetails(),
          HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
        },
      theme: MytThemeData.lightTheme,
      darkTheme: MytThemeData.darkTheme,
      themeMode: themeProvider.currantTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(localeProvider.currantLocale),
    );
  }
}
