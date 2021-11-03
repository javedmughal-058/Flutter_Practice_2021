import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'account.dart';
import 'play1.dart';
import 'setting.dart';
import 'play.dart';


class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Drawer getNavDrawer(BuildContext context) {
    var headerChild = DrawerHeader(child: Text("Header"));
    var aboutChild = AboutListTile(
        child: Text("About"),
        applicationName: "Alphabet Cards App for kids",
        applicationVersion: "v1.0.0",
        applicationIcon: Icon(Icons.adb),
        icon: Icon(Icons.info));

    ListTile getNavItem(var icon, String s, String routeName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(s),
        onTap: () {
          setState(() {
            // pop closes the drawer
            Navigator.of(context).pop();
            // navigate to the route
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var myNavChildren = [
      headerChild,
      getNavItem(Icons.home, "Home", "/"),
      getNavItem(Icons.account_box, "Account", AccountScreen.routeName),
      getNavItem(Icons.settings, "Settings", SettingsScreen.routeName),
      aboutChild
    ];

    ListView listView = ListView(children: myNavChildren);

    return Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Alphabet Card App for Kids"),
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          child: Column(children: [
            Text("Choose one of the given option to study the Alphabets.",
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(children: [
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => playScreen()),
                  );
                },
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26, offset: Offset(0, 2), blurRadius: 6.0)
                      ],
                      image: DecorationImage(image: AssetImage('images/A1.png'))),
                ),
              ),
              Text("Capital Alphabets"),
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => playScreen1()),
                  );
                },
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26, offset: Offset(0, 2), blurRadius: 6.0)
                      ],
                      image: DecorationImage(image: AssetImage('images/a.png'))),
                ),
              ),
              Text("Small Alphabets"),
            ]
            )
          ]
          ),
        )
    );

  }

}