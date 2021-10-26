import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:try_xylophone/main.dart';

class XylophoneApp extends StatelessWidget {
  //Color clr = DropDown.holder;

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(
                  color: DropDown.myList_1[0],
                  soundNumber: DropDown.myList_2[0]),
              buildKey(
                  color: DropDown.myList_1[1],
                  soundNumber: DropDown.myList_2[1]),
              buildKey(
                  color: DropDown.myList_1[2],
                  soundNumber: DropDown.myList_2[2]),
              buildKey(
                  color: DropDown.myList_1[3],
                  soundNumber: DropDown.myList_2[3]),
              buildKey(
                  color: DropDown.myList_1[4],
                  soundNumber: DropDown.myList_2[4]),
              buildKey(
                  color: DropDown.myList_1[5],
                  soundNumber: DropDown.myList_2[5]),
              buildKey(
                  color: DropDown.myList_1[6],
                  soundNumber: DropDown.myList_2[6])
            ],
          ),
        ),
      ),
    );
  }
}