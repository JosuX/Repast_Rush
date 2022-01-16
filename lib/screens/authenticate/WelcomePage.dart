// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, non_constant_identifier_names, file_names, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:repast_rush/screens/authenticate/SignInPage.dart';
import 'package:repast_rush/screens/authenticate/SignUpPage.dart';
import 'IntroPage.dart';

class WelcomePage extends StatefulWidget {
  final Function toggleView;
  WelcomePage({required this.toggleView});
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    double Hrefix = scrHeight / 800;
    double Wrefix = scrWidth / 360;
    return WillPopScope(
      onWillPop: () async {
        widget.toggleView(0);
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Color(0xFFF6F5F5),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                height: Hrefix * 460,
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      "images/Welcome.png",
                      scale: 1 / Hrefix,
                    ))),
            Padding(padding: EdgeInsets.only(top: Hrefix * 12)),
            Container(
                padding: EdgeInsets.only(left: Wrefix * 28, right: Wrefix * 28),
                height: Hrefix * 41,
                child: Center(
                    child: AutoSizeText(
                  "Welcome to Repast Rush",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto-Bold"),
                ))),
            Padding(padding: EdgeInsets.only(top: Hrefix * 17)),
            Container(
                padding: EdgeInsets.only(left: Wrefix * 36, right: Wrefix * 36),
                height: Hrefix * 80,
                child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      "Craving for your next favorite food?\nAccess all the best restaurant around you with Repast Rush for great deals!",
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: TextStyle(
                        color: Color(0xff535252),
                        height: Hrefix * 1.5,
                        letterSpacing: 0.41,
                        fontSize: 15,
                        fontFamily: "Roboto-Light",
                      ),
                    ))),
            Padding(padding: EdgeInsets.only(top: Hrefix * 31)),
            Container(
              height: Hrefix * 58,
              width: Wrefix * 320,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff8A9A5B))),
                  onPressed: () => {widget.toggleView(2)},
                  child: AutoSizeText("SIGN IN")),
            ),
            Padding(padding: EdgeInsets.only(top: Hrefix * 8)),
            Container(
                height: Hrefix * 58,
                width: Wrefix * 320,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xffE6E6E6))),
                    onPressed: () => {widget.toggleView(3)},
                    child: AutoSizeText(
                      "SIGN UP",
                      style: TextStyle(color: Color(0xff696363)),
                    ))),
          ],
        ),
      ),
    );
  }
}
