import 'dart:math';
import 'package:flutter/material.dart';



void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  final myController = TextEditingController();

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int number=1,number2=1;
  int c1=0,c2=0;
  int score=0,score2=0;
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child:
              GestureDetector(
                child: Image.asset('images/dice$number.png'),
                onTap: () {
                  setState(() {
                    number = Random().nextInt(6) + 1;
                    c1=c1+1;
                    score=score+number;
                  }
                  );
                },
              ),
            ),

            SizedBox(
              width: 20.0,

            ),

            Expanded(
              child:
              GestureDetector(
                child: Image.asset('images/dice$number2.png'),
                onTap: () {
                  setState(() {
                    number2 = Random().nextInt(6) + 1;
                    c2=c2+1;
                    score2=score2+number2;
                  }
                  );
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            Text('Total Score:${score}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
            SizedBox(
              width: 190.0,
            ),
            Text('Total Score:${score2}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top:90 ,right:150),
          child: Text('Winner: ',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:12 ,right:150),
          child: Text('Winner_Score: ${score}',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
            ),
          ),
        ),


      ],
    ),

    );

  }
}
