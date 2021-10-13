import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Profile Page',
      home: FrontPage(),
    );
  }
}

class FrontPage extends StatelessWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/1.png'),
            ),
            Text(
              'Muhammad Javed',
              style: TextStyle(
                fontFamily: 'Ephesis-Regular',
                fontSize: 50,
              ),
            ),
            Text('Flutter Developer'),
            SizedBox(
              width: 150,
              height: 50,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 30,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+923024716341',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                    size: 30,
                  ),
                  title: Text(
                    'javedmughal609@gmail.com',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
