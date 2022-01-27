// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, division_optimization

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:repast_rush/screens/home/thank_pick_up.dart';
import 'package:timer_count_down/timer_count_down.dart';

class OrderPickUp extends StatefulWidget {
  final Function toggleView;
  final Function overrideView;
  OrderPickUp({required this.toggleView, required this.overrideView});

  @override
  _OrderPickUpState createState() => _OrderPickUpState();
}

class _OrderPickUpState extends State<OrderPickUp> {
  var f = NumberFormat("#00", "en_US");
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
          body: Container(
              child: Center(
                  child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: Hrefix * 80)),
                  Container(
                      padding: EdgeInsets.only(left: Wrefix * 13),
                      height: Hrefix * 41,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            "Order Pick Up",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto-Bold"),
                          ))),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 91)),
                  Container(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: Hrefix * 55)),
                        Container(
                            child: Center(
                                child: Image.asset(
                          "images/alarm.png",
                          scale: 1 / Hrefix,
                        ))),
                        Padding(padding: EdgeInsets.only(top: Hrefix * 19)),
                        Countdown(
                          build: (BuildContext context, double time) => Text(
                            (time / 60).toInt().toString() +
                                ":" +
                                f.format(time % 60),
                            style: TextStyle(
                                fontSize: 70,
                                fontFamily: "Roboto-Black",
                                color: Color(0xff274B32)),
                          ),
                          seconds: 1800,
                        ),
                      ],
                    ),
                    width: Wrefix * 319,
                    height: Hrefix * 333,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(333))),
                  ),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 96)),
                  Center(
                    child: Container(
                      height: Hrefix * 58,
                      width: Wrefix * 320,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xff8A9A5B))),
                          onPressed: () {
                            widget.overrideView(ThankPickUp(
                                toggleView: widget.toggleView,
                                overrideView: widget.overrideView));
                          },
                          child: Text("DONE")),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 6)),
                  Center(
                      child: Container(
                    height: Hrefix * 58,
                    width: Wrefix * 320,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xffe6e6e6))),
                      onPressed: () => {widget.toggleView(0)},
                      child: AutoSizeText("BUY TIME EXTENSION",
                          style: TextStyle(color: Color(0xff696363))),
                    ),
                  )),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 25))
                ],
              )),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topRight,
                      scale: 1 / Wrefix,
                      image: AssetImage("images/Home_lime.png"))))),
    );
  }
}
