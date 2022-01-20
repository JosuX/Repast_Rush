// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_local_variable, unnecessary_new
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:repast_rush/screens/home/shop_card.dart';

class FoodShops extends StatefulWidget {
  const FoodShops({Key? key}) : super(key: key);

  @override
  _FoodShopsState createState() => _FoodShopsState();
}

class _FoodShopsState extends State<FoodShops> {
  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    double Hrefix = scrHeight / 800;
    double Wrefix = scrWidth / 360;
    return Scaffold(
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
                            "Shops Near You",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto-Bold"),
                          ))),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 25)),
                  Container(
                      padding: EdgeInsets.only(
                          left: Wrefix * 18, right: Wrefix * 18),
                      height: Hrefix * 41,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextField(
                            decoration: new InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(21)),
                                    borderSide:
                                        BorderSide(color: Color(0xff8A9A5B)))),
                          ))),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 25)),
                  ShopCard(),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 20)),
                  ShopCard(),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 20)),
                  ShopCard(),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 30)),
                ],
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topRight,
                    scale: 1 / Wrefix,
                    image: AssetImage("images/Home_lime.png")))),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.dehaze_sharp,
                  size: 24,
                  color: Color(0xff3F704D),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined,
                    size: 24, color: Color(0xff3F704D)),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined,
                    size: 24, color: Color(0xff3F704D)),
                label: '',
              ),
            ]));
  }
}
