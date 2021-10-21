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
  int winner=0,WinnerNumber=0;
  bool button = false;

  void updatep1(){
    if(number==6){
      c1=c1+0;
      score=score+number;
    }
    else {
      c1=c1+1;
      score=score+number;
      if(score>score2 && score>score3 && score>score4 ){
        winner=score;
        WinnerNumber=1;
      }
    }
  }
  void updatep2(){
    if(number2==6){
      c2=c2+0;
      score2 = score2 + number2;
    }
    else {
      c2 = c2 + 1;
      score2 = score2 + number2;
      if (score2 > score && score2 > score3 && score2 > score4) {
        winner = score2;
        WinnerNumber = 2;
      }
    }
  }
  void updatep3(){
    if(number3==6){
      c3=c3+0;
      score2 = score2 + number2;
    }
    else {
      c3=c3+1;
      score3=score3+number3;
      if(score3>score && score3>score2 && score3>score4 ){
        winner=score3;
        WinnerNumber=3;
      }
    }
  }
  void updatep4(){
    if(number3==6){
      c3=c3+0;
      score2 = score2 + number2;
    }
    else {
      c4=c4+1;
      score4=score4+number4;
      if(score4>score && score4>score2 && score4>score3 ){
        winner=score4;
        WinnerNumber=4;
      }
    }
  }


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
               number3 = Random().nextInt(6) + 1;
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
              width: 70.0,
            ),
            Text('Score:${score3}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 80.0,
            ),
            Text('Score:${score4}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('Turn No.${c1}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Text('Turn No.${c2}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 50.0,
            ),
            Text('Turn No.${c3}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 55.0,
            ),
            Text('Turn No.${c4}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.only(top:12 ,right:150),
          child: Text('Winner_Score: ${winner}',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:90 ,right:150),
          child: Text('Winner is Player:${WinnerNumber} ',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:90 ,right:150),
          child: Text('Total Tries:${c4} ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),

    );

  }
}
