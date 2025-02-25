import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../providers/theme_provider.dart';

class ChapterDetails extends StatefulWidget {
  static const String routeName = 'chapter details';

  const ChapterDetails({super.key});

  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    ChapterArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterArgs;
    if (verses.isEmpty) {
      readFileData(args.chapterIndex);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            themeProvider.isDark()
                ? 'assets/images/dark_bg.png'
                : 'assets/images/default_bg.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(args.chapterName), centerTitle: true),
        body: Card(
          margin: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          elevation: 30,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Theme.of(context).cardColor,
          child:
              verses.isNotEmpty
                  ? ListView.separated(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${verses[index]} {${index + 1}}',
                          style: Theme.of(context).textTheme.bodyLarge,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                    itemCount: verses.length,
                    separatorBuilder:
                        (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Divider(
                            color: Theme.of(context).colorScheme.secondary,
                            thickness: 2,
                          ),
                        ),
                  )
                  : Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  void readFileData(int index) async {
    String chapterContent = await rootBundle.loadString(
      'assets/txt_files/${index + 1}.txt',
    );
    List<String> lines = chapterContent.trim().split('\n');
    setState(() {
      verses = lines;
    });
  }
}

class ChapterArgs {
  String chapterName;
  int chapterIndex;

  ChapterArgs({required this.chapterName, required this.chapterIndex});
}
