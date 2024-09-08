import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2/ui/chapter_details/verse_content.dart';
import 'package:islami2/ui/default_screen.dart';
import 'package:islami2/ui/theme/mytheme.dart';

class ChapterDetails extends StatefulWidget {
  static const String routeName = 'ChapterDetails';

  const ChapterDetails({super.key});

  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) {
      ReadFileData(args.index);
    }
    return DefaultScreen(
        body: Scaffold(
      appBar: AppBar(
        title: Text(args.title, style: Theme.of(context).textTheme.titleMedium),
      ),
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 25,
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 65),
        child: verses.isNotEmpty
            ? ListView.separated(
                itemBuilder: (context, index) {
                  return VerseContent(verses[index], index);
                },
                itemCount: verses.length,
                separatorBuilder: (context, index) => Container(
                    color: MytThemeData.lightPrimary,
                    height: 1,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 65)),
              )
            : Center(child: CircularProgressIndicator()),
      ),
    ));
  }

  ReadFileData(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString("assets/files/${fileIndex + 1}.txt");
    List<String> lines = fileContent.trim().split('\n');
    setState(() {
      verses = lines;
    });
  }
}

class ChapterDetailsArgs {
  String title;
  int index;

  ChapterDetailsArgs(this.title, this.index);
}
