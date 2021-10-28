import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  _screen2State createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Same as Screen1
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
        decoration: BoxDecoration(
          color: Color.fromRGBO(
            47,
            207,
            255,
            1,
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.15,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          18,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Junk caches",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(28,),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 28,
                      right: 28,
                      top: 72,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          //Item1
                          Row(children: [
                            Icon(
                              Icons.keyboard_arrow_down,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left:18,
                              ),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  //Cut the code and paste in Row as Children
                                 Row(children: [
                                   Text(
                                     "Background App",
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontWeight: FontWeight.w600,
                                       fontSize: 16,
                                     ),
                                   ),
                                   SizedBox(
                                     width:4,
                                   ),
                                   //Inplace of text add another Widget
                                   Container(
                                     height: 20,
                                     decoration: BoxDecoration(
                                       color: Color.fromRGBO(
                                         47,
                                         207,
                                         255,
                                         1,
                                       ).withOpacity(
                                         0.4,
                                       ),
                                       borderRadius: BorderRadius.circular(
                                         10,
                                       ),
                                     ),
                                     child: Center(child: Padding(
                                       padding: EdgeInsets.only(
                                         left: 1,
                                         right: 10,
                                       ),
                                       child: Text(
                                         "12",
                                       ),
                                     ),
                                     ),
                                   ),
                                 ],
                                 ),
                                 SizedBox(height: 4,),
                                 Text("692MB",
                                 style: TextStyle(color: Colors.grey),
                                 ),

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
                          SizedBox(height:28),

                          Row(children: [
                            Icon(
                              Icons.keyboard_arrow_down,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left:18,
                              ),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,

                                children: [
                                  Row(children: [
                                    Text(
                                      "App junk files",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width:4,
                                    ),
                                    //Inplace of text add another Widget
                                    Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(
                                          47,
                                          207,
                                          255,
                                          1,
                                        ).withOpacity(
                                          0.4,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                      child: Center(child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 1,
                                          right: 10,
                                        ),
                                        child: Text(
                                          "11",
                                        ),
                                      ),
                                      ),
                                    ),
                                  ],
                                  ),
                                  SizedBox(
                                    height:4,
                                  ),
                                  Text(
                                    "217MB",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            //change this widget for item2
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

                          //Item 3
                          //add sizedbox and copy item2 and paste here

                          SizedBox(height:28),

                          Row(children: [
                            Icon(
                              Icons.keyboard_arrow_down,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left:18,
                              ),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Text(
                                      "App caches",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width:4,
                                    ),
                                    //Inplace of text add another Widget
                                    Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(
                                          47,
                                          207,
                                          255,
                                          1,
                                        ).withOpacity(
                                          0.4,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                      child: Center(child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 1,
                                          right: 10,
                                        ),
                                        child: Text(
                                          "20",
                                        ),
                                      ),
                                      ),
                                    ),

                                  ],
                                  ),

                                  SizedBox(
                                    height:4,
                                  ),
                                  Text(
                                    "435MB",
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
                          SizedBox(height:53),
                        ],
                      ),
                    ),
                  ),
                ),
                )
              ],
            ),
            //Adding overlaying item in stack
            Positioned(top: 25,right: 30,
             child: Container(
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
                  ),
              ),
              ),
            //Adding another item int the stack after this widget
            Align(alignment: Alignment.center,
            child: Padding(padding: EdgeInsets.only(bottom: 30,),
            child: Column(mainAxisAlignment: MainAxisAlignment.end,children: [
              Padding(padding: EdgeInsets.only(left: 28,right: 28,),
              child: Container(height: 80,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(
                  24,
                ),
              ),
                child: Center(child: Text("Cleanup will not affect normal user",
                style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600,),
                ),),
              ),
              ),
              SizedBox(height: 50,),
              Container(width: 180,height: 50,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(47, 207, 255,1,),
              borderRadius: BorderRadius.circular(24)),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Icon(Icons.delete_forever_outlined,
                  color: Color.fromRGBO(3, 162, 209, 1,),
                      ),
                  Text("Cleanup 1.31 GB",
                  style:TextStyle(
                    color: Color.fromRGBO(3, 162, 209, 1,),
                    fontSize: 16, fontWeight: FontWeight.w600,
                  ),
                  ),
                ],),
              )
            ],
            ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
