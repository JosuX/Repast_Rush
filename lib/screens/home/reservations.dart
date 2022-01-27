// ignore_for_file: unused_local_variable, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:repast_rush/screens/home/order_pick_up.dart';

class Reservations extends StatefulWidget {
  final Function toggleView;
  final Function overrideView;
  Reservations({required this.toggleView, required this.overrideView});

  @override
  _ReservationsState createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations> {
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
                  Padding(padding: EdgeInsets.only(top: Hrefix * 105)),
                  Container(
                      padding: EdgeInsets.only(left: Wrefix * 13),
                      height: Hrefix * 41,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            "Reservations",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto-Bold"),
                          ))),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 60)),
                  Container(
                      padding: EdgeInsets.only(left: Wrefix * 13),
                      height: Hrefix * 41,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            "Order Details",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto-Bold"),
                          ))),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 22)),
                  Container(
                      width: Wrefix * 359,
                      height: Hrefix * 318,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: Hrefix * 28)),
                            Container(
                              padding: EdgeInsets.only(left: 26),
                              child: AutoSizeText(
                                "Food Shop A",
                                style: TextStyle(
                                    color: Color(0xff274B32),
                                    fontSize: 25,
                                    fontFamily: "Roboto-Black"),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: Hrefix * 33)),
                            Container(
                                padding: EdgeInsets.only(left: 26),
                                child: Row(
                                  children: [
                                    AutoSizeText(
                                      "Address:",
                                      style: TextStyle(
                                          color: Color(0xff274B32),
                                          fontSize: 13,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: "Roboto-LightItalic"),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(left: Hrefix * 72)),
                                    AutoSizeText(
                                      "Del Fierro St., Place A, Manila",
                                      style: TextStyle(
                                          color: Color(0xff274B32),
                                          fontSize: 13,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: "Roboto-LightItalic"),
                                    ),
                                  ],
                                )),
                            Padding(padding: EdgeInsets.only(top: Hrefix * 15)),
                            Container(
                                padding: EdgeInsets.only(left: 26),
                                child: Row(
                                  children: [
                                    AutoSizeText(
                                      "Time of Pick up:",
                                      style: TextStyle(
                                          color: Color(0xff274B32),
                                          fontSize: 13,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: "Roboto-LightItalic"),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(left: Hrefix * 29)),
                                    AutoSizeText(
                                      "11:00am-12:00pm",
                                      style: TextStyle(
                                          color: Color(0xff274B32),
                                          fontSize: 13,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: "Roboto-LightItalic"),
                                    ),
                                  ],
                                )),
                            Padding(padding: EdgeInsets.only(top: Hrefix * 15)),
                            Container(
                                padding: EdgeInsets.only(left: 26),
                                child: Row(
                                  children: [
                                    AutoSizeText(
                                      "Order:",
                                      style: TextStyle(
                                          color: Color(0xff274B32),
                                          fontSize: 13,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: "Roboto-LightItalic"),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(left: Hrefix * 88)),
                                    AutoSizeText(
                                      "Mystery Bag 1",
                                      style: TextStyle(
                                          color: Color(0xff274B32),
                                          fontSize: 13,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: "Roboto-LightItalic"),
                                    ),
                                  ],
                                )),
                            Padding(padding: EdgeInsets.only(top: Hrefix * 15)),
                            Container(
                                padding: EdgeInsets.only(left: 26),
                                child: Row(
                                  children: [
                                    AutoSizeText(
                                      "Payment Method:",
                                      style: TextStyle(
                                          color: Color(0xff274B32),
                                          fontSize: 13,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: "Roboto-LightItalic"),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(left: Hrefix * 20)),
                                    AutoSizeText(
                                      "E-Wallet",
                                      style: TextStyle(
                                          color: Color(0xff274B32),
                                          fontSize: 13,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: "Roboto-LightItalic"),
                                    ),
                                  ],
                                )),
                          ]),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(35)))),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 60)),
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
                            widget.overrideView(OrderPickUp(
                                toggleView: widget.toggleView,
                                overrideView: widget.overrideView));
                          },
                          child: Text("ON THE WAY")),
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
                      child: AutoSizeText("CANCEL ORDER",
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
