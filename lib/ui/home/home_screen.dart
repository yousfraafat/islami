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
          title: Text('Islami'),
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
            BottomNavItem('assets/images/icon_quran.png', 'quran'),
            BottomNavItem('assets/images/icon_hadeth.png', 'hadeth'),
            BottomNavItem('assets/images/icon_sebha.png', 'tasbeh'),
            BottomNavItem('assets/images/icon_radio.png', 'radio'),
          ],
        ),
      ),
    );
  }

  var taps = [QuranTap(), HadethTap(), TasbehTap(), RadioTap()];
}
