import 'package:flutter/material.dart';
import 'package:islami2/ui/home/settings/languageBottomSheet.dart';
import 'package:islami2/ui/home/settings/themeBottomSheet.dart';
import 'package:islami2/ui/ui_utills.dart';

import '../../providers/localeProvider.dart';
import '../../providers/themeProvider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);
    LocaleProvider localeProvider = LocaleProvider.get(context);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 36, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(getTranslations(context).theme,
              style: Theme.of(context).textTheme.bodySmall),
          Divider(
            height: 12,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Theme.of(context).colorScheme.secondary, width: 2),
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).cardColor,
              ),
              width: double.infinity,
              child: Text(
                  themeProvider.isDarkEnabled()
                      ? getTranslations(context).dark
                      : getTranslations(context).light,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.secondary)),
            ),
          ),
          Divider(
            height: 25,
          ),
          Text(getTranslations(context).language,
              style: Theme.of(context).textTheme.bodySmall),
          Divider(
            height: 12,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Theme.of(context).colorScheme.secondary, width: 2),
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).cardColor,
              ),
              width: double.infinity,
              child: Text(
                  localeProvider.currantLocale == Locale('en')
                      ? 'english'
                      : 'العربية',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.secondary)),
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
        return languageBottomSheet();
      },
    );
  }
}
