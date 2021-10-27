import 'package:flutter/material.dart';
import 'package:try_xylophone/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main',
      debugShowCheckedModeBanner: false,
      home: DropDown(),
    );
  }
}

class DropDown extends StatefulWidget {
  static String holder = '';
  static String holder_2 = '';
  static List<Color> myList_1 = [];
  static List<int> myList_2 = [];

  @override
  DropDownWidget createState() => DropDownWidget();
}

class DropDownWidget extends State<DropDown> {
  int count = 0;
  void convertion(String color, String soundNumber) {
    var clr_no;
    var wav_no = DropDown.holder_2;
    var number = int.parse(wav_no);
    var clr = DropDown.holder;

    if (clr == 'blue') {
      clr_no = Colors.blue;
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'green') {
      clr_no = Colors.green;
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'purple') {
      clr_no = Colors.purple;
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'orange') {
      clr_no = Colors.deepOrange;
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'yellow') {
      clr_no = Colors.yellow;
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'teal') {
      clr_no = Colors.teal;
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'red') {
      clr_no = Colors.red;
      DropDown.myList_1.add(clr_no);
    }
    DropDown.myList_2.add(number);
    print(DropDown.myList_2);
    print(DropDown.myList_1);
    print(count);
  }

  String dropdownValue = 'blue';
  String dropdownValue_2 = '1';

  // To show Selected Item in Text.

  List<String> colorName = [
    'blue',
    'green',
    'purple',
    'orange',
    'yellow',
    'teal',
    'red'
  ];
  List<String> soundNo = ['1', '2', '3', '4', '5', '6', '7'];

  void getDropDownItem() {
    setState(() {
      DropDown.holder = dropdownValue;
      DropDown.holder_2 = dropdownValue_2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Xylophone Application',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Add Numbers with colors according to your choice.',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropdownButton(
              value: dropdownValue_2,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.deepOrange, fontSize: 18),
              underline: Container(
                height: 2,
                color: Colors.blue,
              ),
              onChanged: (String data) {
                setState(() {
                  dropdownValue_2 = data;
                });
              },
              items: soundNo.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            DropdownButton(
              value: dropdownValue,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.blue, fontSize: 18),
              underline: Container(
                height: 2,
                color: Colors.deepOrange,
              ),
              onChanged: (String data) {
                setState(() {
                  dropdownValue = data;
                });
              },
              items: colorName.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              child: Text('Add Color'),
              onPressed: () {
                if (count == 6) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => XylophoneApp()));
                }
                count++;
                getDropDownItem();
                convertion(DropDown.holder, DropDown.holder_2);
              },
              color: Colors.deepOrange,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Color Added=$count',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'Xylophone will be created according to your Choice.',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}