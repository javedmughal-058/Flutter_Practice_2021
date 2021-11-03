import 'package:flutter/material.dart';

class playScreen1 extends StatelessWidget {
  static const String routeName = "/play1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Small Alphabets"),
      ),
      body: Container(
          child: Center(
            child: Text("Updated later"),
          )),
    );
  }
}