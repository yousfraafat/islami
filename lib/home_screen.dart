import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:islami/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:islami/tabs/quran_tab/quran_tab.dart';
import 'package:islami/tabs/radio_tab/radio_tab.dart';
import 'package:islami/tabs/settings_tab/settings_tab.dart';
import 'package:islami/tabs/tasbeh_tab/tasbeh_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> taps = [
    QuranTab(),
    HadethTab(),
    TasbehTap(),
    RadioTap(),
    SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            themeProvider.isDark()
                ? 'assets/images/dark_bg.png'
                : 'assets/images/default_bg.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.appTitle),
            centerTitle: true),
        body: taps[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
              label: AppLocalizations.of(context)!.quranTab,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
              label: AppLocalizations.of(context)!.hadethTab,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
              label: AppLocalizations.of(context)!.tasbehTab,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
              label: AppLocalizations.of(context)!.radioTab,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: AppLocalizations.of(context)!.settingsTab,
              backgroundColor: Theme
                  .of(context)
                  .colorScheme
                  .primary,
            ),
          ],
        ),
      ),
    );
  }
}
