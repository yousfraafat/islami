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
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.skip_previous, size: 50, color: Color(0xffB7935F),),
            SizedBox(width: 50,),
            Icon(Icons.play_arrow_rounded, size: 80, color: Color(0xffB7935F),),
            SizedBox(width: 50,),
            Icon(Icons.skip_next, size: 50, color: Color(0xffB7935F),)
          ],
        )
      ],
    );
  }
}
