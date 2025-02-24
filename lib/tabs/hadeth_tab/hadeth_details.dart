import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth_tab/hadeth_tab.dart';

import '../../my_theme_data.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadeth details';

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            MyThemeData.isDark == true
                ? 'assets/images/dark_bg.png'
                : 'assets/images/default_bg.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(args.hadethTitle), centerTitle: true),
        body: Card(
          margin: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          elevation: 30,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Theme.of(context).cardColor,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      args.hadethContent,
                      style: Theme.of(context).textTheme.bodyLarge,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
