import 'package:flutter/material.dart';
import 'chapter_details.dart';

class ChapterTitle extends StatelessWidget {
  final int chapterIndex;
  final String chapterName;
  final int versesNumber;

  const ChapterTitle({
    super.key,
    required this.chapterName,
    required this.versesNumber,
    required this.chapterIndex,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          ChapterDetails.routeName,
          arguments: ChapterArgs(
            chapterName: chapterName,
            chapterIndex: chapterIndex,
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            chapterName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            versesNumber.toString(),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
