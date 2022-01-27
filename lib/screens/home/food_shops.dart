// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_local_variable, unnecessary_new, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_final_fields, sized_box_for_whitespace, unrelated_type_equality_checks, empty_catches, prefer_typing_uninitialized_variables, avoid_unnecessary_containers
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:repast_rush/screens/home/reservations.dart';
import 'package:repast_rush/screens/home/shop_card.dart';
import 'package:repast_rush/services/auth.dart';

class FoodShops extends StatefulWidget {
  final Function toggleView;
  final Function overrideView;
  FoodShops({required this.toggleView, required this.overrideView});

  @override
  _FoodShopsState createState() => _FoodShopsState();
}

class _FoodShopsState extends State<FoodShops> {
  int current_index = 0;

  void _onItemTapped(int index) {
    setState(() {
      current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<QueryDocumentSnapshot<Object?>?>(context);
    final user_email = FirebaseAuth.instance.currentUser!.email;
    String user_phone = "";
    String user_name = "";
    try {
      setState(() {
        user_name = user!.get("names");
        user_phone = user.get("phones");
      });
    } catch (e) {}
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    double Hrefix = scrHeight / 800;
    double Wrefix = scrWidth / 360;
    final AuthService _auth = AuthService();
    List<Widget> _widgetOptions = <Widget>[
      Center(
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
                padding: EdgeInsets.only(left: Wrefix * 18, right: Wrefix * 18),
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
            ShopCard(
                toggleView: widget.toggleView,
                overrideView: widget.overrideView),
            Padding(padding: EdgeInsets.only(top: Hrefix * 20)),
            ShopCard(
                toggleView: widget.toggleView,
                overrideView: widget.overrideView),
            Padding(padding: EdgeInsets.only(top: Hrefix * 20)),
            ShopCard(
              toggleView: widget.toggleView,
              overrideView: widget.overrideView,
            ),
            Padding(padding: EdgeInsets.only(top: Hrefix * 30)),
          ],
        ),
      ),
      Center(
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
          Padding(padding: EdgeInsets.only(top: Hrefix * 25)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: Wrefix * 29)),
              Container(
                child: Image.asset(
                  "images/warning.png",
                  scale: 1 / Hrefix,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: Wrefix * 15)),
              Container(
                width: Wrefix * 210,
                height: Hrefix * 28,
                child: AutoSizeText(
                  "This mark indicates that you can now pick up the order.",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Roboto-LightItalic",
                      fontSize: 14),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: Wrefix * 29)),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: Hrefix * 43)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: Wrefix * 27)),
              InkWell(
                onTap: () {
                  widget.overrideView(Reservations(
                    overrideView: widget.overrideView,
                    toggleView: widget.toggleView,
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 4),
                            blurRadius: 2.0)
                      ]),
                  height: Hrefix * 62,
                  width: Wrefix * 298,
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: Wrefix * 17)),
                      Container(
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: Hrefix * 12)),
                            AutoSizeText(
                              "Food Shop A",
                              style: TextStyle(
                                  color: Color(0xff274B32),
                                  fontSize: 17,
                                  fontFamily: "Roboto-Black"),
                            ),
                            Padding(padding: EdgeInsets.only(top: Hrefix * 7)),
                            AutoSizeText(
                              "11:00am - 12:00pm",
                              style: TextStyle(
                                  color: Color(0xff274B32),
                                  fontSize: 13,
                                  fontFamily: "Roboto-LightItalic"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      )),
      Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: Hrefix * 216)),
            Container(
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: Wrefix * 19)),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff8A9A5B),
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: Hrefix * 19)),
                        Container(
                          padding: EdgeInsets.only(right: Wrefix * 17),
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            "images/icons/pencil-edit.png",
                            scale: 1 / Hrefix,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: Hrefix * 15)),
                        Image.asset(
                          "images/UserWhite.png",
                          scale: 1 / Hrefix,
                        ),
                        Padding(padding: EdgeInsets.only(top: Hrefix * 28)),
                        Container(
                          child: AutoSizeText(
                            user_name,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Roboto-Light",
                                fontSize: 17),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: Hrefix * 12)),
                        Container(
                          child: AutoSizeText(
                            user_email!,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Roboto-Light",
                                fontSize: 14),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: Hrefix * 12)),
                        Container(
                          child: AutoSizeText(
                            user_phone,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Roboto-Light",
                                fontSize: 14),
                          ),
                        )
                      ],
                    ),
                    height: Hrefix * 309,
                    width: Wrefix * 321,
                  ),
                  Padding(padding: EdgeInsets.only(left: Wrefix * 19)),
                ],
              ),
              height: Hrefix * 309,
            ),
            Padding(padding: EdgeInsets.only(top: Hrefix * 81)),
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
                            Color(0xff8A9A5B))),
                    onPressed: () async {
                      dynamic result = await _auth.signOut();
                    },
                    child: Text("SIGN OUT")),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: Hrefix * 6)),
            Center(
                child: Container(
              height: Hrefix * 58,
              width: Wrefix * 320,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xffe6e6e6))),
                onPressed: () => {},
                child: AutoSizeText("SWITCH ACCOUT",
                    style: TextStyle(color: Color(0xff696363))),
              ),
            )),
          ],
        ),
      )
    ];
    return Scaffold(
        body: Container(
            child: _widgetOptions.elementAt(current_index),
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topRight,
                    scale: 1 / Wrefix,
                    image: AssetImage("images/Home_lime.png")))),
        bottomNavigationBar: BottomNavigationBar(
            onTap: _onItemTapped,
            currentIndex: current_index,
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
