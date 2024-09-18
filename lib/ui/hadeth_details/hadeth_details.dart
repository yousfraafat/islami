import 'package:flutter/material.dart';
import 'package:islami2/ui/home/hadeth/Hadeth_tab.dart';

import '../default_screen.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text(hadeth.title,
              style: Theme.of(context).textTheme.titleMedium),
        ),
        body: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          elevation: 25,
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 65),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Text(
                      hadeth.content,
                      textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall),
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
