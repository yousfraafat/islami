import 'package:flutter/material.dart';

import '../../my_theme_data.dart';

class TasbehTap extends StatefulWidget {
  const TasbehTap({super.key});

  @override
  State<TasbehTap> createState() => _TasbehTapState();
}

class _TasbehTapState extends State<TasbehTap> {
  double sebhaRotation = 0;

  int tasbehCount = 0;

  int index = 0;

  List<String> tasbeh = ['سبحان الله', 'الحمد لله', 'الله اكبر'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  MyThemeData.isDark == true
                      ? 'assets/images/head_sebha_dark.png'
                      : 'assets/images/head_sebha_logo.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .07,
                ),
                child: GestureDetector(
                  onTap: onSebhaTap,
                  child: AnimatedRotation(
                    turns: sebhaRotation,
                    duration: Duration(milliseconds: 100),
                    child: Image.asset(
                      MyThemeData.isDark == true
                          ? 'assets/images/body_sebha_dark.png'
                          : 'assets/images/body_sebha_logo.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'tasbeh count',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Theme.of(context).colorScheme.primary,
          child: Container(
            margin: EdgeInsets.all(35),
            child: Text(
              '$tasbehCount',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: InkWell(
            onTap: onSebhaTap,
            child: Text(
              tasbeh[index],
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: resetSebha,
          icon: Icon(Icons.refresh_sharp),
          style: IconButton.styleFrom(iconSize: 50),
          color: Theme.of(context).colorScheme.secondary,
        ),
      ],
    );
  }

  void onSebhaTap() {
    sebhaRotation += 0.05;
    tasbehCount++;
    changeTasbeh();
    setState(() {});
  }

  void changeTasbeh() {
    if (tasbehCount > 32) {
      tasbehCount = 0;
      index++;
    }
    if (index == tasbeh.length) {
      resetSebha();
    }
  }

  void resetSebha() {
    sebhaRotation = 0;
    tasbehCount = 0;
    index = 0;
    setState(() {});
  }
}
