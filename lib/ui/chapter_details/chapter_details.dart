import 'package:flutter/material.dart';
import 'package:islami2/ui/default_screen.dart';

class ChapterDetails extends StatelessWidget {
  static const String routeName = 'ChapterDetails';

  const ChapterDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    return DefaultScreen(
        body: Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 25,
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 65),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Text('details');
          },
          itemCount: 100,
        ),
      ),
    ));
  }
}

class ChapterDetailsArgs {
  String title;
  int index;

  ChapterDetailsArgs(this.title, this.index);
}
