import 'package:flutter/material.dart';

class playScreen extends StatelessWidget {
  static const String routeName = "/play";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Capital Alphabets"),
      ),
      body: Container(
          child: Center(
            child: Text("Updated later"),
          )),
    );
  }
}