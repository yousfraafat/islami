import 'package:flutter/material.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        Text('quran radio channel',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.skip_previous,
              size: 50,
              color: Theme.of(context).colorScheme.secondary,
            ),
            SizedBox(width: 50,),con(
              Icons.play_arrow_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.secondary,
            ),
            SSizedBox(width: 50,),on(
              Icons.skip_next,
              size: 50,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ]],
        )
      ],
    );
  }
}
