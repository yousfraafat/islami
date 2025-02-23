import 'package:flutter/material.dart';

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
                child: Image.asset('assets/images/head_sebha_logo.png'),
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
                    child: Image.asset('assets/images/body_sebha_logo.png'),
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
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Color(0xffC9B496),
          child: Container(
            margin: EdgeInsets.all(35),
            child: Text(
              '$tasbehCount',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xffB7935F),
            borderRadius: BorderRadius.circular(30),
          ),
          child: InkWell(
            onTap: onSebhaTap,
            child: Text(
              tasbeh[index],
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: resetSebha,
          child: Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(horizontal: 10),
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.black),
            //   borderRadius: BorderRadius.circular(40),
            // ),
            child:
            // Icon(Icons.refresh_sharp,size: 30,)
            Text('reset', style: TextStyle(color: Colors.black, fontSize: 30)),
          ),
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
