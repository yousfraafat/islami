import 'package:flutter/material.dart';
import 'package:islami2/ui/default_screen.dart';
import 'package:islami2/ui/home/bottomNavItem.dart';
import 'package:islami2/ui/home/hadeth/Hadeth_tap.dart';
import 'package:islami2/ui/home/quran/Quran_tap.dart';
import 'package:islami2/ui/home/radio/Radio_tap.dart';
import 'package:islami2/ui/home/tasbeh/tasbeh_tap.dart';

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
          title: Text('Islami', style: Theme.of(context).textTheme.titleMedium),
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
            BottomNavItem('assets/images/icon_quran.png', 'quran',
                Theme.of(context).colorScheme.primary),
            BottomNavItem('assets/images/icon_hadeth.png', 'hadeth',
                Theme.of(context).colorScheme.primary),
            BottomNavItem('assets/images/icon_sebha.png', 'tasbeh',
                Theme.of(context).colorScheme.primary),
            BottomNavItem('assets/images/icon_radio.png', 'radio',
                Theme.of(context).colorScheme.primary),
          ],
        ),
      ),
    );
  }

  var taps = [QuranTap(), HadethTap(), TasbehTap(), RadioTap()];
}
