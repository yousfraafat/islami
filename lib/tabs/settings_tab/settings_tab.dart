import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/tabs/settings_tab/language_bottom_sheet.dart';
import 'package:islami/tabs/settings_tab/setting_drawer.dart';
import 'package:islami/tabs/settings_tab/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../../providers/locale_provider.dart';
import '../../providers/theme_provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    LocaleProvider localeProvider = Provider.of<LocaleProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.themeSetting,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: SettingDrawer(
              Text(
                themeProvider.isDark()
                    ? AppLocalizations.of(context)!.darkTheme
                    : AppLocalizations.of(context)!.lightTheme,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
          Text(
            AppLocalizations.of(context)!.languageSetting,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: SettingDrawer(
              Text(
                localeProvider.currentLocale == 'en' ? 'english' : 'العربية',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemeBottomSheet();
      },
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return LanguageBottomSheet();
      },
    );
  }
}
