import 'package:flutter/material.dart';

import '../../providers/themeProvider.dart';
import '../../ui_utills.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);

    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                setState(() {
                  themeProvider.changeTheme(ThemeMode.light);
                });
              },
              child: themeProvider.isDarkEnabled()
                  ? getUnselectedItem(context, getTranslations(context).light)
                  : getSelectedItem(context, getTranslations(context).light)),
          Divider(height: 25),
          InkWell(
              onTap: () {
                setState(() {
                  themeProvider.changeTheme(ThemeMode.dark);
                });
              },
              child: themeProvider.isDarkEnabled()
                  ? getSelectedItem(context, getTranslations(context).dark)
                  : getUnselectedItem(context, getTranslations(context).dark))
        ],
      ),
    );
  }

  Widget getSelectedItem(BuildContext context, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.secondary)),
        Icon(Icons.check, color: Theme.of(context).colorScheme.secondary),
      ],
    );
  }

  Widget getUnselectedItem(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
    );
  }
}
