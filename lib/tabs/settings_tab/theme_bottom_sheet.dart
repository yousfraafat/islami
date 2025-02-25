import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
            onTap: () => themeProvider.changeTheme(ThemeMode.light),
            child: themeProvider.isDark()
                ? unselectedItem(
                context, AppLocalizations.of(context)!.lightTheme)
                : selectedItem(
                context, AppLocalizations.of(context)!.lightTheme)
        ),
        Divider(
          color: Theme.of(context).colorScheme.secondary,
          height: 25,
          thickness: 2,
        ),
        InkWell(
          onTap: () => themeProvider.changeTheme(ThemeMode.dark),
          child: themeProvider.isDark()
              ? selectedItem(context, AppLocalizations.of(context)!.darkTheme)
              : unselectedItem(
              context, AppLocalizations.of(context)!.darkTheme),
        ),
      ],
    );
  }

  Widget selectedItem(BuildContext context, String text) {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 10, right: 10),
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          Icon(Icons.check, color: Theme.of(context).colorScheme.secondary),
        ],
      ),
    );
  }

  Widget unselectedItem(BuildContext context, String text) {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 10, right: 10),
      margin: EdgeInsets.all(5),
      child: Text(text, style: Theme
          .of(context)
          .textTheme
          .titleMedium),
    );
  }
}
