import 'package:flutter/material.dart';

typedef OnDrawerTap = void Function(BuildContext);

class SettingDrawer extends StatelessWidget {
  Text text;

  SettingDrawer(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: text,
    );
  }
}
