// ignore_for_file: unused_local_variable, non_constant_identifier_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:repast_rush/screens/home/shop_details.dart';

class ShopCard extends StatefulWidget {
  final Function toggleView;
  final Function overrideView;
  const ShopCard(
      {Key? key,
      this.shopname = "Food Shop A",
      this.location = "Del Fierro St., Place A, Manila",
      this.distance = "3.7km",
      this.time = "11:00am-12:00pm",
      this.shopinfo =
          "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\" (Shop Info)",
      this.price = "350 pesos",
      this.hint = "Beef, Pork, Salad, Rice",
      this.stocks = "5 left",
      this.meal = "Lunch",
      required this.toggleView,
      required this.overrideView})
      : super(key: key);

  final String shopname;
  final String location;
  final String distance;
  final String time;
  final String shopinfo;
  final String price;
  final String hint;
  final String stocks;
  final String meal;

  @override
  _ShopCardState createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    double Hrefix = scrHeight / 800;
    double Wrefix = scrWidth / 360;

    return InkWell(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 4), blurRadius: 2.0)
            ]),
        width: Wrefix * 321,
        height: Hrefix * 120,
        child: Row(
          children: [
            Container(
                height: Hrefix * 120,
                child: Stack(alignment: Alignment.bottomLeft, children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    child: Image.asset(
                      "images/shop_placeholder.png",
                      scale: 1 / Hrefix,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    child: Container(
                      height: Hrefix * 22,
                      width: 1 / Wrefix * 59,
                      color: Colors.green,
                      child: Center(
                        child: AutoSizeText(
                          widget.stocks,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: "Roboto-Black"),
                        ),
                      ),
                    ),
                  )
                ])),
            Padding(padding: EdgeInsets.only(left: Wrefix * 32)),
            Expanded(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: Hrefix * 12)),
                        AutoSizeText(
                          widget.shopname,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff274B32),
                              fontFamily: "Roboto-Bold"),
                        ),
                        Padding(padding: EdgeInsets.only(top: Hrefix * 11)),
                        AutoSizeText(
                          widget.meal,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontFamily: "Roboto-LightItalic"),
                        ),
                        Padding(padding: EdgeInsets.only(top: Hrefix * 8)),
                        Container(
                          width: Wrefix * 124,
                          height: Hrefix * 28,
                          child: AutoSizeText(
                            widget.location,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff444C38),
                                fontStyle: FontStyle.italic,
                                fontFamily: "Roboto-LightItalic"),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: Hrefix * 5)),
                        Row(
                          children: [
                            Image.asset("images/icons/marker.png",
                                scale: 1 / Hrefix),
                            Padding(padding: EdgeInsets.only(left: Wrefix * 8)),
                            AutoSizeText(
                              widget.distance,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: "Roboto-LightItalic"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(left: Wrefix * 32)),
          ],
        ),
      ),
      onTap: () {
        widget.overrideView(ShopDetails(
          toggleView: widget.toggleView,
          overrideView: widget.overrideView,
        ));
        print("widget override.");
      },
    );
  }
}
