// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ThankPickUp extends StatefulWidget {
  final Function toggleView;
  final Function overrideView;
  ThankPickUp({required this.toggleView, required this.overrideView});

  @override
  _ThankPickUpState createState() => _ThankPickUpState();
}

class _ThankPickUpState extends State<ThankPickUp> {
  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    double Hrefix = scrHeight / 800;
    double Wrefix = scrWidth / 360;
    return Scaffold(
      backgroundColor: Color(0xFFF6F5F5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              height: Hrefix * 330,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    "images/thank_smile.png",
                    scale: 1 / Hrefix,
                  ))),
          Padding(padding: EdgeInsets.only(top: Hrefix * 38)),
          Container(
              padding: EdgeInsets.only(left: Wrefix * 20, right: Wrefix * 20),
              height: Hrefix * 105,
              width: Wrefix * 307,
              child: AutoSizeText(
                "You have successfully picked up your order!",
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff274B32),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto-Bold"),
              )),
          Padding(padding: EdgeInsets.only(top: Hrefix * 24)),
          Container(
              padding: EdgeInsets.only(left: Wrefix * 50, right: Wrefix * 50),
              height: Hrefix * 92,
              child: Center(
                  child: AutoSizeText(
                "Thank you for using Repast Rush! Please continue supporting our affiliated stores.",
                textAlign: TextAlign.center,
                maxLines: 5,
                style: TextStyle(
                  color: Color(0xff535252),
                  height: 1.5,
                  letterSpacing: 0.41,
                  fontSize: 15,
                  fontFamily: "Roboto-Light",
                ),
              ))),
          Padding(padding: EdgeInsets.only(top: Hrefix * (47 + 23))),
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
                onPressed: () => {widget.toggleView(0)},
                child: Text("DONE")),
          ),
          Padding(padding: EdgeInsets.only(top: Hrefix * 6)),
        ],
      ),
    );
  }
}
