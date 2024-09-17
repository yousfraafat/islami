import 'package:flutter/material.dart';
import 'package:islami2/ui/theme/mytheme.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;

  DefaultScreen({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = MytThemeData.isDark;
    return Stack(children: [
      Image.asset(
          isDark ? 'assets/images/dark_bg.png' : 'assets/images/default_bg.png',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity),
      body
    ]);
  }
}
