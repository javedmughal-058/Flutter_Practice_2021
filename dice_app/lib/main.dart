import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child:
              Text('Dice Rolling App')
          ),

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

  int number=1,number2=1,number3=1,number4=1;
  int c1=0,c2=0,c3=0,c4=0;
  int score=0,score2=0,score3=0,score4=0;
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
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child:
              GestureDetector(
                child: Image.asset('images/dice$number3.png'),
                onTap: () {
                  setState(() {
                    number3 = Random().nextInt(6) + 1;
                    c3=c3+1;
                    score3=score3+number3;
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
                child: Image.asset('images/dice$number4.png'),
                onTap: () {
                  setState(() {
                    number4 = Random().nextInt(6) + 1;
                    c4=c4+1;
                    score4=score4+number4;
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
            Text('Score:${score}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
            SizedBox(
              width: 90.0,
            ),
            Text('Score:${score2}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 90.0,
            ),
            Text('Score:${score3}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 90.0,
            ),
            Text('Score:${score4}',
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
