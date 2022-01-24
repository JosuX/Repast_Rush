// ignore_for_file: unused_local_variable, non_constant_identifier_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ShopCard extends StatefulWidget {
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
                          "5 left",
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
                          "Food Shop A",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff274B32),
                              fontFamily: "Roboto-Bold"),
                        ),
                        Padding(padding: EdgeInsets.only(top: Hrefix * 11)),
                        AutoSizeText(
                          "Lunch",
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
                            "Del Fierro St., Place A, Manila",
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
                              "3.7km",
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
        print("Tapped on container");
      },
    );
  }
}
