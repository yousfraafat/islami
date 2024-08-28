import 'package:flutter/material.dart';

class VerseContent extends StatelessWidget {
  String content;
  int index;

  VerseContent(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content (${index + 1})',
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
