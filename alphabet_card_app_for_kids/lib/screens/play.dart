import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'dart:async';


QuizBrain quizBrain = QuizBrain();

int q=1;
int score=0;
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
  static const String routeName = "/play1";

}

class _QuizPageState extends State<QuizPage> {
  final _formKey = GlobalKey<FormState>();
  int seconds;
  @override
  void initState() {
    super.initState();
    seconds = 60;
    startTimer();
  }
  List<Icon> scoreKeeper = [];
  void startTimer(){
    CountdownTimer(Duration(seconds: seconds), Duration(seconds: 1)).listen((data){
    })..onData((data){
      setState(() {
        seconds--;
      });
    })..onDone((){
      setState(() {
        quizBrain.reset();
        q=1;
      });
    });
  }

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Center(
            child: Text(
              'Quiz Management System',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),

        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text('Seconds left: $seconds',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              'Alphabets $q/37',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
              ),
            ),
          ),

        ),
        Expanded(

          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }


}
