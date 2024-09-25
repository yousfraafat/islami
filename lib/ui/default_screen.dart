import 'package:flutter/material.dart';
import 'package:islami2/ui/providers/themeProvider.dart';
import 'package:provider/provider.dart';

class DefaultScreen extends StatefulWidget {
  Widget body;

  DefaultScreen({required this.body, super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    bool isDark = themeProvider.isDarkEnabled();
    return Stack(children: [
      Image.asset(
          isDark ? 'assets/images/dark_bg.png' : 'assets/images/default_bg.png',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity),
      widget.body
    ]);
  }
}
