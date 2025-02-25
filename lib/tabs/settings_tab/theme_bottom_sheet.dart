import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        selectedItem(context),
        Divider(
          color: Theme.of(context).colorScheme.secondary,
          height: 25,
          thickness: 2,
        ),
        unselectedItem(context),
      ],
    );
  }

  Widget selectedItem(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 10, right: 10),
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppLocalizations.of(context)!.lightTheme,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          Icon(Icons.check, color: Theme.of(context).colorScheme.secondary),
        ],
      ),
    );
  }

  Widget unselectedItem(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.all(5),
      child: Text(
        AppLocalizations.of(context)!.darkTheme,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
