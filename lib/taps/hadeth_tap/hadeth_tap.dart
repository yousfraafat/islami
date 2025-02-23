import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/taps/hadeth_tap/hadeth_details.dart';

class HadethTap extends StatefulWidget {
  const HadethTap({super.key});

  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> ahadeth = [];

  @override
  void initState() {
    super.initState();
    readHadethFile();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadeth_logo.png')),
        Divider(color: Color(0xffB7935F), thickness: 3),
        Text(
          'Hadeth Number',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Divider(color: Color(0xffB7935F), thickness: 3),
        Expanded(
          child:
              ahadeth.isNotEmpty
                  ? ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap:
                            () => Navigator.pushNamed(
                              context,
                              HadethDetails.routeName,
                              arguments: ahadeth[index],
                            ),
                        child: Text(
                          textAlign: TextAlign.center,
                          ahadeth[index].hadethTitle,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                    separatorBuilder:
                        (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Divider(
                            color: Color(0xffB7935F),
                            thickness: 2,
                          ),
                        ),
                    itemCount: ahadeth.length,
                  )
                  : Center(child: CircularProgressIndicator()),
        ),
      ],
    );
  }

  Future<void> readHadethFile() async {
    String ahadethFile = await rootBundle.loadString(
      'assets/txt_files/ahadeth.txt',
    );
    List<String> allAhadeth = ahadethFile.trim().split('#');
    for (int i = 0; i < allAhadeth.length; i++) {
      List<String> lines = allAhadeth[i].trim().split('\n');
      String hadethTitle = lines[0];
      lines.removeAt(0);
      String hadethContent = lines.join('\n');
      ahadeth.add(
        Hadeth(hadethTitle: hadethTitle, hadethContent: hadethContent),
      );
    }
    setState(() {});
  }
}

class Hadeth {
  String hadethTitle;
  String hadethContent;

  Hadeth({required this.hadethTitle, required this.hadethContent});
}
