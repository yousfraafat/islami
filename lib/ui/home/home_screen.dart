import 'package:flutter/material.dart';
import 'package:islami2/ui/default_screen.dart';
import 'package:islami2/ui/home/bottomNavItem.dart';
import 'package:islami2/ui/home/hadeth/Hadeth_tap.dart';
import 'package:islami2/ui/home/quran/Quran_tap.dart';
import 'package:islami2/ui/home/radio/Radio_tap.dart';
import 'package:islami2/ui/home/tasbeh/tasbeh_tap.dart';
import 'package:islami2/ui/ui_utills.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text(AppTranslations(context).appTitle),
        ),
        body: taps[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavItem('assets/images/icon_quran.png',
                AppTranslations(context).quranTap),
            BottomNavItem('assets/images/icon_hadeth.png',
                AppTranslations(context).hadethTap),
            BottomNavItem('assets/images/icon_sebha.png',
                AppTranslations(context).tasbehTap),
            BottomNavItem('assets/images/icon_radio.png',
                AppTranslations(context).radioTap),
          ],
        ),
      ),
    );
  }

  var taps = [QuranTap(), HadethTap(), TasbehTap(), RadioTap()];
}
