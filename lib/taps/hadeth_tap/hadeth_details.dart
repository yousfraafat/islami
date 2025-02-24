import 'package:flutter/material.dart';
import 'package:islami/taps/hadeth_tap/hadeth_tap.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadeth details';

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
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
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      args.hadethContent,
                      style: TextStyle(fontSize: 25),
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
