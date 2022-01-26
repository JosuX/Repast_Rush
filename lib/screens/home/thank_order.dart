// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, file_names, must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

/*

Notes :

- Final paragaraph has invisible 5th line. Solution: added padding of 23 (115/5) in between paragraph and button
- Button too close to bottom of screen. Solution: adjusted image height from 362(default) to 330

 */

class ThankOrder extends StatefulWidget {
  final Function toggleView;
  final Function overrideView;
  ThankOrder({required this.toggleView, required this.overrideView});

  @override
  _ThankOrderState createState() => _ThankOrderState();
}

class _ThankOrderState extends State<ThankOrder> {
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
              padding: EdgeInsets.only(left: Wrefix * 77, right: Wrefix * 77),
              height: Hrefix * 76,
              child: Center(
                  child: AutoSizeText(
                "Thank you for ordering!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto-Bold"),
              ))),
          Padding(padding: EdgeInsets.only(top: Hrefix * 24)),
          Container(
              padding: EdgeInsets.only(left: Wrefix * 50, right: Wrefix * 50),
              height: Hrefix * 115,
              child: Center(
                  child: AutoSizeText(
                "Please be reminded that there will be a 30 minutes time limit to get the food bag. You can also cancel the order in 5 minutes after placing the order.",
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
                child: Text("CONFIRM")),
          ),
          Padding(padding: EdgeInsets.only(top: Hrefix * 6)),
        ],
      ),
    );
  }
}
