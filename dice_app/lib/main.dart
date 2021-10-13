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


  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int number=1,number2=1;
  int sum=0;
  Widget build(BuildContext context) {
    return Container(
      child: Row(
      children: [
        Expanded(
          child:
          GestureDetector(
            child: Image.asset('images/dice$number.png'),
            onTap: () {
              setState(() {
                number = Random().nextInt(6) + 1;
                sum=sum+number;

              }
              );
            },
          ),
        ),
        SizedBox(
          width: 12.0,
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
      ],
    ),


    );

  }
}
