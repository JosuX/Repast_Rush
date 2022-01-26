// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, file_names, must_be_immutable, use_key_in_widget_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repast_rush/screens/home/transaction.dart';

/*

Notes :

 */

class ShopDetails extends StatefulWidget {
  final Function toggleView;
  final Function overrideView;
  ShopDetails({required this.toggleView, required this.overrideView});

  @override
  _ShopDetailsState createState() => _ShopDetailsState();
}

class _ShopDetailsState extends State<ShopDetails> {
  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    double Hrefix = scrHeight / 800;
    double Wrefix = scrWidth / 360;
    String shopname = "Food Shop A";
    String location = "Del Fierro St., Place A, Manila";
    String distance = "3.7km";
    String time = "11:00am-12:00pm";
    String shopinfo =
        "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\" (Shop Info)";
    String price = "350 pesos";
    String hint = "Beef, Pork, Salad, Rice";

    return WillPopScope(
      onWillPop: () async {
        widget.toggleView(1);
        return Future.value(false);
      },
      child: Scaffold(
          body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          // Base Background
          Image.asset(
            "images/background_details.png",
            scale: 1 / Wrefix,
          ),
          // Shadow Overlay
          Image.asset(
            "images/overlay_details.png",
            scale: 1 / Wrefix,
          ),

          Stack(alignment: Alignment.bottomLeft, children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                child: Container(
                  width: Wrefix * 360,
                  height: Hrefix * 510,
                  color: Color(0xFFF6F5F5),
                )),

            // Actual Content

            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: Hrefix * 319)),
                  Container(
                      padding: EdgeInsets.only(left: Wrefix * 36),
                      height: Hrefix * 51,
                      child: AutoSizeText(
                        shopname,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0xFF274B32),
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto-Bold"),
                      )),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 5)),
                  Container(
                      padding: EdgeInsets.only(left: Wrefix * 36),
                      height: Hrefix * 23,
                      child: AutoSizeText(
                        location,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0xFF535252),
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                            fontFamily: "Roboto-Light"),
                      )),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 8)),
                  Row(children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: Wrefix * 38.5)),
                    Image.asset(
                      "images/icons/marker.png",
                      width: 15,
                      height: 18,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10.5),
                        height: Hrefix * 23,
                        child: AutoSizeText(
                          distance,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xFF535252),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                              fontFamily: "Roboto-Light"),
                        )),
                    Padding(padding: EdgeInsets.only(left: Wrefix * 57.8)),
                    Image.asset(
                      "images/icons/clock.png",
                      width: 18.33 * Wrefix,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        height: Hrefix * 23,
                        child: AutoSizeText(
                          time,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xFF535252),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                              fontFamily: "Roboto-Light"),
                        )),
                  ]),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 5)),
                  Center(
                    child: Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.all(0),
                        height: Hrefix * 80,
                        width: Wrefix * 297,
                        child: Center(
                            child: AutoSizeText(
                          shopinfo,
                          textAlign: TextAlign.center,
                          maxLines: 5,
                          style: TextStyle(
                            color: Color(0xFF535252),
                            height: 1.5,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            fontFamily: "Roboto-Light",
                          ),
                        ))),
                  ),
                ]),

            // Bottom half (Starting from price)

            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: Wrefix * 33)),
                    Image.asset(
                      "images/icons/diamond.png",
                      width: 14.4,
                      height: 21.61,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        height: Hrefix * 23,
                        child: AutoSizeText(
                          price,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xFF274B32),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              //fontStyle: FontStyle.italic,
                              fontFamily: "Roboto-Light"),
                        )),
                  ],
                ),

                Padding(padding: EdgeInsets.only(top: Hrefix * 9)),

                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: Wrefix * 29.34)),
                    Image.asset(
                      "images/icons/star.png",
                      width: 23,
                      height: 23,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        height: Hrefix * 23,
                        child: AutoSizeText(
                          "Menu Hint for the Day:",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xFF274B32),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              //fontStyle: FontStyle.italic,
                              fontFamily: "Roboto-Light"),
                        )),
                  ],
                ),

                Center(
                  child: Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.all(0),
                      height: 23,
                      child: Center(
                          child: AutoSizeText(
                        hint,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: TextStyle(
                          color: Color(0xFF535252),
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                          fontFamily: "Roboto-Light",
                        ),
                      ))),
                ),

                Padding(padding: EdgeInsets.only(top: Hrefix * 16)),

                // Buttons DO NOT CHANGE

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
                          widget.overrideView(Transaction(
                            toggleView: widget.toggleView,
                            overrideView: widget.overrideView,
                          ));
                        },
                        child: Text("CHOOSE A BAG")),
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
                    child: AutoSizeText("CANCEL",
                        style: TextStyle(color: Color(0xff696363))),
                  ),
                )),

                Padding(padding: EdgeInsets.only(top: Hrefix * 25))
              ],
            )
          ])
        ],
      )),
    );
  }
}
