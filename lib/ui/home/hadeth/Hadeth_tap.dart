import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2/ui/home/hadeth/hadeth_title.dart';

import '../../theme/mytheme.dart';
import '../../ui_utills.dart';

class HadethTap extends StatefulWidget {
  HadethTap({super.key});

  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> AllHadeth = [];

  @override
  void initState() {
    super.initState();
    readHadethFile();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(child: Image.asset('assets/images/hadeth_logo.png')),
        Container(
          width: double.infinity,
          height: 2,
          color: MytThemeData.lightPrimary,
        ),
        Text(AppTranslations(context).hadethNum, style: Theme.of(context).textTheme.titleSmall),
        Container(
          width: double.infinity,
          height: 2,
          color: MytThemeData.lightPrimary,
        ),
        Expanded(
          child: AllHadeth.isNotEmpty
              ? ListView.separated(
                  itemBuilder: (context, index) {
                    return HadethTitle(AllHadeth[index]);
                  },
                  itemCount: AllHadeth.length,
                  separatorBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      height: 2,
                      margin: EdgeInsets.symmetric(horizontal: 65),
                      color: MytThemeData.lightPrimary,
                    );
                  },
                )
              : Center(child: CircularProgressIndicator()),
        )
      ],
    );
  }

  void readHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> separatedHadeth = fileContent.split('#');

    for (int i = 0; i < separatedHadeth.length; i++) {
      String singleHadeth = separatedHadeth[i];
      List<String> lines = singleHadeth.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadeth h = Hadeth(title, content);
      AllHadeth.add(h);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.title, this.content);
}
