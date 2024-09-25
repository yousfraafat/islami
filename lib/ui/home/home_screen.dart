import 'package:flutter/material.dart';
import 'package:islami2/ui/default_screen.dart';
import 'package:islami2/ui/home/bottomNavItem.dart';
import 'package:islami2/ui/home/hadeth/Hadeth_tab.dart';
import 'package:islami2/ui/home/quran/Quran_tab.dart';
import 'package:islami2/ui/home/radio/Radio_tab.dart';
import 'package:islami2/ui/home/settings/settingsTab.dart';
import 'package:islami2/ui/home/tasbeh/tasbeh_tab.dart';
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
          title: Text(getTranslations(context).appTitle,
              style: Theme.of(context).textTheme.titleMedium),
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
            BottomNavItem(
              getTranslations(context).quranTap,
              Theme.of(context).colorScheme.primary,
              iconPath: 'assets/images/icon_quran.png',
            ),
            BottomNavItem(
              getTranslations(context).hadethTap,
              Theme.of(context).colorScheme.primary,
              iconPath: 'assets/images/icon_hadeth.png',
            ),
            BottomNavItem(
              getTranslations(context).tasbehTap,
              Theme.of(context).colorScheme.primary,
              iconPath: 'assets/images/icon_sebha.png',
            ),
            BottomNavItem(
              getTranslations(context).radioTap,
              Theme.of(context).colorScheme.primary,
              iconPath: 'assets/images/icon_radio.png',
            ),
            BottomNavItem(getTranslations(context).settings,
                Theme.of(context).colorScheme.primary,
                mainIcon: Icon(Icons.settings))
          ],
        ),
      ),
    );
  }

  var taps = [QuranTab(), HadethTab(), TasbehTab(), RadioTab(), SettingsTab()];
}
