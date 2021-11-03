import 'package:flutter/material.dart';

import 'screens/account.dart';
import 'screens/home.dart';
import 'screens/setting.dart';
import 'screens/play.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(), // route for home is '/' implicitly
    routes: <String, WidgetBuilder>{
      // define the routes
      AccountScreen.routeName: (BuildContext context) => AccountScreen(),
      SettingsScreen.routeName: (BuildContext context) => SettingsScreen(),
      playScreen.routeName: (BuildContext context) => playScreen(),

    },
  ));
}

