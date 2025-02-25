import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        Text(AppLocalizations.of(context)!.quranRadio,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.skip_previous,
              size: 50,
              color: Theme.of(context).colorScheme.secondary,
            ),
            SizedBox(width: 50,), Icon(
              Icons.play_arrow_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.secondary,
            ),
            SizedBox(width: 50,), Icon(
              Icons.skip_next,
              size: 50,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ],
        )
      ],
    );
  }
}
