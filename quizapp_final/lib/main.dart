import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';
import 'package:quiver/async.dart';


QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizzler());
int q=1;
int score=0;
int trueans=0;
int falseans=0;

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

}

class _QuizPageState extends State<QuizPage> {

  String answer;
  int seconds;
  int tseconds;
  @override
  void initState() {
    super.initState();
    tseconds = 150;
    seconds=15;

    startTimer();


  }
  List<Icon> scoreKeeper = [];
  void startTimer(){
    CountdownTimer(Duration(seconds: tseconds), Duration(seconds: 1)).listen((data){
    })..onData((data){
      setState(() {
        seconds--;
        if(seconds==0)
          {
            quizBrain.nextQuestion();
            seconds=15;
            score=score+0;
            q = q + 1;
            scoreKeeper.add(Icon(
              Icons.close,
              color: Colors.red,
            )
            );
          }
        tseconds--;
      });
    })..onDone((){
      setState(() {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz. \n Your Score=$score \n Time Remianing:$seconds seconds\n'
              'True Answer=$score \n False Answer=$falseans'
          ,
        ).show();
        quizBrain.reset();
        scoreKeeper = [];
        q=1;
        score=0;
      });
    });
  }
  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();


    setState(() {
      //On the next line, you can also use if (quizBrain.isFinished()) {}, it does the same thing.
      if (quizBrain.isFinished() == true ) {
        score++;
        falseans=10-score;
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz. \n Your Score=$score \n Time Remianing:$seconds seconds\n'
              'True Answer=$score \n False Answer=$falseans'

          ,

        ).show();
        quizBrain.reset();
        scoreKeeper = [];
        q=1;
        score=0;

      }
      else {

        if (userPickedAnswer == correctAnswer) {
          score=score+1;
          seconds = 15;
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        }
        else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          )
          );
        }

        quizBrain.nextQuestion();
      }
    });
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
              'Question $q/10',
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
        Row(children: [
          Expanded(
            child: FlatButton(
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                q = q + 1;
                //The user picked true.
                checkAnswer(true);
              },
            ),

          ),
          Expanded(
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                q = q + 1;
                //The user picked false.
                checkAnswer(false);
              },
            ),

          ),
        ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Score=$score',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )

      ],
    );
  }


}



