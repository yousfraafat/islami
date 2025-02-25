import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/locale_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleProvider localeProvider = Provider.of<LocaleProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => localeProvider.changeLocale('en'),
          child:
              localeProvider.currentLocale == 'en'
                  ? selectedItem(context, 'english')
                  : unselectedItem(context, 'english'),
        ),
        Divider(
          color: Theme.of(context).colorScheme.secondary,
          height: 25,
          thickness: 2,
        ),
        InkWell(
          onTap: () => localeProvider.changeLocale('ar'),
          child:
              localeProvider.currentLocale == 'ar'
                  ? selectedItem(context, 'العربية')
                  : unselectedItem(context, 'العربية'),
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
      child: Text(text, style: Theme.of(context).textTheme.titleMedium),
    );
  }
}
