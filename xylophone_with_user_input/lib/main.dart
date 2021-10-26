import 'package:flutter/material.dart';

void main() {
  runApp(xylophone());
}

class xylophone extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      )
    );
  }
}


