// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names, file_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:repast_rush/screens/authenticate/WelcomePage.dart';
import 'package:repast_rush/screens/home/home.dart';
import 'package:repast_rush/services/auth.dart';

class SignInPage extends StatefulWidget {
  final Function toggleView;
  SignInPage({required this.toggleView});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final AuthService _auth = AuthService();
  bool remember = false;
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    double Hrefix = scrHeight / 800;
    double Wrefix = scrWidth / 360;

    return WillPopScope(
      onWillPop: () async {
        widget.toggleView(1);
        return Future.value(false);
      },
      child: Scaffold(
          backgroundColor: Color(0xFFF6F5F5),
          body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
              Padding(padding: EdgeInsets.only(top: Hrefix * 78)),
              Container(
                  height: Hrefix * 263,
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                        "images/SignIn.png",
                        scale: 1 / Hrefix,
                      ))),
              Padding(padding: EdgeInsets.only(top: Hrefix * 27)),
              Container(
                  height: Hrefix * 44,
                  child: Center(
                      child: AutoSizeText(
                    "Welcome Back!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto-Bold"),
                  ))),
              Padding(padding: EdgeInsets.only(top: Hrefix * 32)),
              Container(
                  height: Hrefix * 44,
                  width: Wrefix * 271,
                  child: TextField(
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff8A9A5B))),
                        disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff8A9A5B))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff8A9A5B))),
                        prefixIcon: Container(
                          padding: EdgeInsets.only(right: Wrefix * 16),
                          child: Image.asset("images/icons/user.png",
                              scale: 1 / Hrefix),
                        ),
                        hintText: "Enter your email / phone number",
                        hintStyle: TextStyle(
                            fontSize: 14, fontFamily: "Roboto-Light")),
                  )),
              Padding(padding: EdgeInsets.only(top: Hrefix * 10)),
              Container(
                  height: Hrefix * 44,
                  width: Wrefix * 271,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff8A9A5B))),
                        disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff8A9A5B))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff8A9A5B))),
                        prefixIcon: Container(
                          padding: EdgeInsets.only(right: Wrefix * 16),
                          child: Image.asset("images/icons/key.png",
                              scale: 1 / Hrefix),
                        ),
                        hintText: "Enter your password",
                        hintStyle: TextStyle(
                            fontSize: 14, fontFamily: "Roboto-Light")),
                  )),
              Padding(padding: EdgeInsets.only(top: Hrefix * 13)),
              Container(
                  height: Hrefix * 35,
                  width: Wrefix * 271,
                  child: AutoSizeText("Forgot Password? Tap here.",
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      style: TextStyle(fontSize: 13))),
              Padding(padding: EdgeInsets.only(top: Hrefix * 7)),
              Container(
                height: Hrefix * 51,
                width: Wrefix * 214,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xff8A9A5B))),
                    onPressed: () async {
                      await _auth.signInAnon();
                    },
                    child: AutoSizeText("SIGN IN")),
              ),
              Padding(padding: EdgeInsets.only(top: Hrefix * 88)),
              Container(
                  height: Hrefix * 51,
                  width: Wrefix * 214,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        activeColor: Color(0xff8A9A5B),
                        fillColor: MaterialStateProperty.all(Color(0xff8A9A5B)),
                        value: remember,
                        onChanged: (value) {
                          setState(() {
                            remember = value!;
                          });
                        },
                      ),
                      Text("Remember me")
                    ],
                  )),
            ]),
          )),
    );
  }
}
