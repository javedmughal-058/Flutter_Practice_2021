import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.indigo,
          title: Center(child:
              Text('Dice Rolling App'),

          )
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
  int score1=0,score2=0,score3=0,score4=0;
  int winner=0,WinnerNumber=0;
  bool button = false;

  void updatep1(){
    if(number==6){
      c1=c1+0;
      score1=score1+number;
    }
    else {
      c1=c1+1;
      score1=score1+number;
      if(score1>score2 && score1>score3 && score1>score4 ){
        winner=score1;
        WinnerNumber=1;
      }
    }
    if(c1>10){
      c1=0;
      score1=0;
      c2=0;
      score2=0;
      c3=0;
      score3=0;
      c4=0;
      score4=0;
      winner=0;
      WinnerNumber=0;
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
      if (score2 > score1 && score2 > score3 && score2 > score4) {
        winner = score2;
        WinnerNumber = 2;
      }
    }
    if(c2>10){
      c1=0;
      score1=0;
      c2=0;
      score2=0;
      c3=0;
      score3=0;
      c4=0;
      score4=0;
      winner=0;
      WinnerNumber=0;
    }
  }
  void updatep3(){
    if(number3==6){
      c3=c3+0;
      score3=score3+number3;
    }
    else {
      c3=c3+1;
      score3=score3+number3;
      if(score3>score1 && score3>score2 && score3>score4 ){
        winner=score3;
        WinnerNumber=3;
      }
    }
    if(c3>10){
      c1=0;
      score1=0;
      c2=0;
      score2=0;
      c3=0;
      score3=0;
      c4=0;
      score4=0;
      winner=0;
      WinnerNumber=0;
    }
  }
  void updatep4(){
    if(number4==6){
      c4=c4+0;
      score4=score4+number4;
    }
    else {
      c4=c4+1;
      score4=score4+number4;
      if(score4>score1 && score4>score2 && score4>score3 ){
        winner=score4;
        WinnerNumber=4;
      }
    }
    if(c4>10){
      c1=0;
      score1=0;
      c2=0;
      score2=0;
      c3=0;
      score3=0;
      c4=0;
      score4=0;
      winner=0;
      WinnerNumber=0;
    }
  }


  Widget build(BuildContext context) {
    return Container(
      child: Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Expanded(
              child:
              RaisedButton(
                color: Colors.red,
                child: Image.asset('images/dice$number.png'),
                onPressed: () {
                  setState(() {
                    number = Random().nextInt(6) + 1;
                    updatep1();
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
              RaisedButton(
                color: Colors.green,
                child: Image.asset('images/dice$number2.png'),
                onPressed: () {
                  setState(() {
                    number2 = Random().nextInt(6) + 1;
                    updatep2();
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
              RaisedButton(
                color: Colors.yellow,
                child: Image.asset('images/dice$number3.png'),
                onPressed: () {
                  setState(() {
                    number3 = Random().nextInt(6) + 1;
                    updatep3();
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
              RaisedButton(
                color: Colors.blue,
                child: Image.asset('images/dice$number4.png'),
                onPressed: () {
             setState(() {
               number4 = Random().nextInt(6) + 1;
               updatep4();
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
            Text('Score:${score1}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.red,
            ),
          ),
            SizedBox(
              width: 90.0,
            ),
            Text('Score:${score2}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.green,
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Text('Score:${score3}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.yellow,
              ),
            ),
            SizedBox(
              width: 80.0,
            ),
            Text('Score:${score4}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('Turn No.${c1}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Text('Turn No.${c2}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.green,
              ),
            ),
            SizedBox(
              width: 50.0,
            ),
            Text('Turn No.${c3}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.yellow,
              ),
            ),
            SizedBox(
              width: 55.0,
            ),
            Text('Turn No.${c4}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.only(top:12 ,right:150),
          child: Text('Winner_Score: ${winner}',
            style: TextStyle(
              fontSize: 26,
              color: Colors.blue,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:90 ,right:150),
          child: Text('Winner is Player:${WinnerNumber} ',
            style: TextStyle(
              fontSize: 26,
              color: Colors.blue,
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
