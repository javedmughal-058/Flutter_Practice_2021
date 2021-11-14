import 'package:alphabet_card_app_for_kids/PlayScreen.dart';
import 'package:flutter/material.dart';

import 'SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kids App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

bool alphaCase = true;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.amberAccent),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white70,
                  child: CircleAvatar(
                    radius: 74,
                    backgroundImage: AssetImage('images/download.png'),
                  ),
                ))
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Alphabets App for kids'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Select Your Choice.',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue),
              textAlign: TextAlign.center,),
            GestureDetector(
                onTap: () {
                  alphaCase = true;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlayScreen()),
                  );
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.amberAccent,
                    ),
                    height: 60,
                    width: 230,
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Capital A-Z',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: () {
                  alphaCase = false;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlayScreen()),
                  );
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.amberAccent,
                    ),
                    height: 60,
                    width: 230,
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Small a-z',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
