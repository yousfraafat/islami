import 'package:flutter/material.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;

  DefaultScreen({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [Image.asset('assets/images/default_bg.png'), body]);
  }
}
