import 'package:flutter/material.dart';
import 'package:islami2/ui/providers/localeProvider.dart';

class languageBottomSheet extends StatefulWidget {
  const languageBottomSheet({super.key});

  @override
  State<languageBottomSheet> createState() => _languageBottomSheetState();
}

class _languageBottomSheetState extends State<languageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    LocaleProvider localeProvider = LocaleProvider.get(context);
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                setState(() {
                  localeProvider.changeLocale('en');
                });
              },
              child: localeProvider.currantLocale == 'en'
                  ? getSelectedItem(context, 'english')
                  : getUnselectedItem(context, 'english')),
          Divider(height: 25),
          InkWell(
              onTap: () {
                setState(() {
                  localeProvider.changeLocale('ar');
                });
              },
              child: localeProvider.currantLocale == 'ar'
                  ? getSelectedItem(context, 'العربية')
                  : getUnselectedItem(context, 'العربية'))
        ],
      ),
    );
  }

  Widget getSelectedItem(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.secondary)),
          Icon(Icons.check, color: Theme.of(context).colorScheme.secondary),
        ],
      ),
    );
  }

  Widget getUnselectedItem(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
