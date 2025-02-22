import 'package:flutter/material.dart';
import 'package:islami/taps/hadeth_tap/hadeth_tap.dart';
import 'package:islami/taps/quran_tap/quran_tap.dart';
import 'package:islami/taps/radio_tap/radio_tap.dart';
import 'package:islami/taps/tasbeh_tap/tasbeh_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> taps = [QuranTap(), HadethTap(), TasbehTap(), RadioTap()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text('islami'), centerTitle: true),
        body: taps[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
              label: 'quran',
              backgroundColor: Color(0xffB7935F),
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
              label: 'hadeth',
              backgroundColor: Color(0xffB7935F),
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
              label: 'tasbeh',
              backgroundColor: Color(0xffB7935F),
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
              label: 'radio',
              backgroundColor: Color(0xffB7935F),
            ),
          ],
        ),
      ),
    );
  }
}
