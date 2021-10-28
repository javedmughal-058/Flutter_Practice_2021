import 'package:cleaner_app_ui/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cleanup App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:
      //screen2(),
      HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  //Starting with build
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(
            47,
            207,
            255,
            1,
          ),
          leading: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.refresh_rounded,
              color: Colors.black,
            ),
            SizedBox(
              width: 16,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 28,
              ),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          ],
        ),
        //Starting with body
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromRGBO(
              47,
              207,
              255,
              1,
            ),
          ),
          //adding child to it
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 352,
                      color: Color.fromRGBO(
                        47,
                        207,
                        255,
                        1,
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 65,
                                  right: 105,
                                ),
                                child: Container(
                                  height: 130,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(
                                      0.1,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        26,
                                      ),
                                      bottomRight: Radius.circular(
                                        26,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 85),
                                child: Container(
                                  height: 130,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        26,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "1.31",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 52,
                                              )),
                                          TextSpan(
                                            text: "GB",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          )
                                        ]),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Cleanup Suggested",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey.withOpacity(
                                            0.8,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //after this stack, add other widget
                          Padding(padding: EdgeInsets.only(
                            left:28,
                            right:28,
                            top:58,
                          ),
                          child: Stack(
                            children: [
                            Container(height: 20,
                              decoration: BoxDecoration(
                                color:Colors.white,
                                borderRadius:BorderRadius.circular(
                              18,
                              ),
                            ),
                            ),
                            Padding(padding:EdgeInsets.only(
                              right:65,
                            ),
                            child: Container(
                              height: 20,
                              decoration: BoxDecoration(
                                color:Color.fromRGBO(
                                  3,
                                  162,
                                  209,
                                  1,
                                ),
                              borderRadius:BorderRadius.circular(
                              18,
                            ),
                            ),
                            ),
                            ),
                              //copy above padding and paste here
                              Padding(padding:EdgeInsets.only(
                                right:270,
                              ),
                                child: Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color:Colors.black,
                                    borderRadius:BorderRadius.circular(
                                      18,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                          ),),
                          Padding(
                              padding: EdgeInsets.only(
                                left: 28,
                                top:30,
                              ),
                          child: Row(children: [
                            Container(
                              height:20,
                              width: 20,
                                decoration:BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              child: Center(
                                child: Container(
                                height: 6,
                                width: 6,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              ),
                            ),

                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Used: 22 GB",
                              style:TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            Container(
                              height: 24,
                              width: 24,
                              decoration:BoxDecoration(
                                color: Color.fromRGBO(
                                  3,
                                  162,
                                  209,
                                  1,
                                ),
                                shape:BoxShape.circle,
                              ),
                              child: Center(
                                child: Container(
                                  height: 6,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color:Colors.white,
                                    shape:BoxShape.circle,
                                  ),
                                ),
                              ),

                            ),
                            //Copy Above Text and paste it here
                            Text(
                              "Deletable: 32 GB",
                              style:TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                          ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child:Container(
                              height:45,
                              width: MediaQuery.of(context).size.width/2.25,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                    topRight:Radius.circular(
                                      18,
                                    )
                                  )
                                ),
                              child: Center(
                                child: Text(
                                  "Can be Deleted",
                                  style:TextStyle(color:Colors.white,fontSize:15,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.2,
                                  )
                                ),
                              ),
                            ),

                          ),
                        ],
                      ),
                    ),
                    ),
                  //After this Container Adding another Widget
                  Expanded(child: Container(width:MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.only(
                        topRight:Radius.circular(
                          28,
                        ),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(padding:EdgeInsets.only(
                      left:28,
                      right:28,
                      top:32,
                    ),
                      child: SingleChildScrollView(
                        child:Column(children: [
                          //Item 1
                          Row(children: [
                            Container(
                              height: 58,
                              width: 58,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(
                                  0.3,
                                ),
                                borderRadius: BorderRadius.circular(
                                  14,
                                ),
                              ),
                              child: Icon(
                                Icons.cake_outlined,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left:18,
                              ),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Junk caches",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height:4,
                                ),
                                Text(
                                  "1.31 GB",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                              ),
                            ),
                            Spacer(),
                              Container(height:20,width:20,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8,),
                              color:Color.fromRGBO(47, 207, 255, 1,),

                              ),
                                child:Padding(padding:EdgeInsets.all(6,),
                                child:Container(decoration:BoxDecoration(
                                  color:Colors.white,
                                  shape:BoxShape.circle,
                                ),
                                ),
                                ),
                              ),
                          ],
                          ),

                          //Item 2
                          //Copy Item1 and make Item2 with changes
                          SizedBox(height:12,),

                          Row(children: [
                            Container(
                              height: 58,
                              width: 58,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(
                                  0.3,
                                ),
                                borderRadius: BorderRadius.circular(
                                  14,
                                ),
                              ),
                              child: Icon(
                                Icons.grid_view, //change icon

                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left:18,
                              ),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "App Data",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height:4,
                                  ),
                                  Text(
                                    "Total  45.6M",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(height:20,width:20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  8,
                                ),
                                //Adding the Color and Border
                                color:Colors.white,
                                border: Border.all(
                                  width: 0.1,
                                ),
                              ),
                              child:Padding(
                                padding:EdgeInsets.all(
                                  6,
                                ),
                                child:Container(
                                  decoration:BoxDecoration(
                                  color:Colors.black, //change color to black
                                  shape:BoxShape.circle,
                                ),
                                ),
                              ),
                            ),
                          ],
                          ),

                          //Item 3
                          //add sizedbox and copy item2 and paste here

                          SizedBox(height:12,),

                          Row(children: [
                            Container(
                              height: 58,
                              width: 58,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(
                                  0.3,
                                ),
                                borderRadius: BorderRadius.circular(
                                  14,
                                ),
                              ),
                              child: Icon(
                                Icons.play_circle_outline, //change icon

                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left:18,
                              ),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Audio & Video",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height:4,
                                  ),
                                  Text(
                                    "Total  12.6M",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(height:20,width:20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  8,
                                ),
                                //Adding the Color and Border
                                color:Colors.white,
                                border: Border.all(
                                  width: 0.1,
                                ),
                              ),
                              child:Padding(
                                padding:EdgeInsets.all(
                                  6,
                                ),
                                child:Container(
                                  decoration:BoxDecoration(
                                    color:Colors.black, //change color to black
                                    shape:BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                          ),

                          //Item 4
                          // Pasting SizedBox and Item2

                          SizedBox(height:12,),

                          Row(children: [
                            Container(
                              height: 58,
                              width: 58,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(
                                  0.3,
                                ),
                                borderRadius: BorderRadius.circular(
                                  14,
                                ),
                              ),
                              child: Icon(
                                Icons.view_module, //change icon

                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left:18,
                              ),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "App uninstalls",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height:4,
                                  ),
                                  Text(
                                    "Total  45.6M",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(height:20,width:20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  8,
                                ),
                                //Adding the Color and Border
                                color:Colors.white,
                                border: Border.all(
                                  width: 0.1,
                                ),
                              ),
                              child:Padding(
                                padding:EdgeInsets.all(
                                  6,
                                ),
                                child:Container(
                                  decoration:BoxDecoration(
                                    color:Colors.black, //change color to black
                                    shape:BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                          ),
                          //Adding Sizedbox and another Widget
                          SizedBox(height:20,),
                          GestureDetector(
                            //adding GestureDetector to help to navigate screen 2
                            onTap: (){
                              Navigator.push(
                                context,
                              MaterialPageRoute(
                                  builder: (_) =>screen2(),
                              ),
                              );
                            },
                            behavior: HitTestBehavior.opaque,
                            child: Container(
                            height:50,
                            width:180,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(
                                47,
                                207,
                                255,
                                1,
                              ).withOpacity(0.5,),
                              borderRadius: BorderRadius.circular(
                                24,
                              ),
                            ),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.delete_outline,
                              color: Color.fromRGBO(
                                3,
                                162,
                                209,
                                1,
                              ),
                              ),
                              Text("Cleanup 1.31 GB",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(
                                3,
                                162,
                                209,
                                1,
                              ),
                              ),
                              ),
                              ],
                            ),
                          ),
                          ),
                            SizedBox(
                              height: 25,
                            ),
                        ],
                        ),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
              //Adding the overlapping widget
              Positioned(child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width/3,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 162, 209, 1,
                  ),
                  borderRadius: BorderRadius.circular(
                    24,
                  ),
                ),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:"1.31",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                          ),
                        ),
                        TextSpan(text:"GB",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        ),
                      ],
                    ),
                  ),
                )
              ),
                top: 335,
                right: 30,
              ),

            ],
          ),
        ));
  }
}
