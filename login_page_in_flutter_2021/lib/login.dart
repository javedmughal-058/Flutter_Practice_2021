import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Page",
      home: EditProfilePage(),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                "Login",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 35,
                  fontWeight: FontWeight.w800,
                  color: Colors.green,
                ),

              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 4,
                                blurRadius: 20,
                                color: Colors.green),
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("image/2.jpg"
                              ))),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              buildTextField("", "E-mail", false),
              buildTextField("", "Password", true),
              SizedBox(
                height: 15,
              ),

              RaisedButton(
                  onPressed: () {},
                  color: Colors.green,
                  padding: EdgeInsets.symmetric(vertical: 15.0),

                  elevation: 2,
                  child: Text("Login",
                      style: TextStyle(
                          fontFamily: 'Ephesis',
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                          letterSpacing: 2.2,
                          color: Colors.white))
              ),
              SizedBox(
                height: 25.0,
                child: Divider(
                  color: Colors.grey,
                  thickness: 4.0,
                ),
              ),
              Center(
                child: Text("don't have an account? ",
                  style: TextStyle(
                      fontFamily: 'Ephesis',
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      letterSpacing: 1.1,
                      color: Colors.green),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 35.0),
        child: TextField(
          obscureText: isPasswordTextField ? showPassword : false,
          decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                icon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.black,
                ))
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ));
  }
}