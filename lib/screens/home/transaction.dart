// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, file_names, must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:repast_rush/screens/home/thank_order.dart';

/*

Notes :

- No functionality on pickBot "PLACE THE ORDER" button

 */

class Transaction extends StatefulWidget {
  final Function toggleView;
  final Function overrideView;
  Transaction({required this.toggleView, required this.overrideView});
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  int stateBoss = 0;

  int choices = 0;

  // Strings for images (max of 3 icons per page)
  String image1 = "images/icons/mystery_un.png";
  String image2 = "images/icons/mystery_un.png";
  String image3 = "images/icons/mystery_un.png";

  // Color variables for Selection
  Color col1 = Color(0xFF000000);
  Color col2 = Color(0xFF000000);
  Color col3 = Color(0xFF000000);

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    double Hrefix = scrHeight / 800;
    double Wrefix = scrWidth / 360;

    // Target Variables

    var useTop = <Widget>[];
    var useBot = <Widget>[];

    // Set Images

    if (stateBoss == 0) {
      if (choices == 1) {
        image1 = "images/icons/mystery_se.png";
        col1 = Color(0xFF8A9A5B);
      } else {
        image1 = "images/icons/mystery_un.png";
        col1 = Color(0xFF000000);
      }

      if (choices == 2) {
        image2 = "images/icons/mystery_se.png";
        col2 = Color(0xFF8A9A5B);
      } else {
        image2 = "images/icons/mystery_un.png";
        col2 = Color(0xFF000000);
      }

      if (choices == 3) {
        image3 = "images/icons/mystery_se.png";
        col3 = Color(0xFF8A9A5B);
      } else {
        image3 = "images/icons/mystery_un.png";
        col3 = Color(0xFF000000);
      }
    } else if (stateBoss == 1) {
      if (choices == 1) {
        image1 = "images/icons/wallet_se.png";
        col1 = Color(0xFF8A9A5B);
      } else {
        image1 = "images/icons/wallet_un.png";
        col1 = Color(0xFF000000);
      }

      if (choices == 2) {
        image2 = "images/icons/debit_se.png";
        col2 = Color(0xFF8A9A5B);
      } else {
        image2 = "images/icons/debit_un.png";
        col2 = Color(0xFF000000);
      }

      if (choices == 3) {
        image3 = "images/icons/credit_se.png";
        col3 = Color(0xFF8A9A5B);
      } else {
        image3 = "images/icons/credit_un.png";
        col3 = Color(0xFF000000);
      }
    }

    // Page Variables

    // Pickup Method
    var pickTop = <Widget>[
      Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Padding(padding: EdgeInsets.only(top: Hrefix * 327)),
        Image.asset(
          "images/pickup.png",
          scale: 1 / Hrefix,
        ),
        Center(
          child: Container(
              height: Hrefix * 48,
              child: AutoSizeText(
                "Food Pick-Up",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF274B32),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto-Bold"),
              )),
        ),
        Padding(padding: EdgeInsets.only(top: Hrefix * 16)),
        Container(
          width: 266 * Wrefix,
          child: AutoSizeText(
            "After placing the order, You will be picking up the food on the time the shop dictated on the order.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF535252),
                height: 1.5 * Hrefix,
                fontSize: 15,
                fontFamily: "Roboto"),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: Hrefix * 5),
          width: 266 * Wrefix,
          child: AutoSizeText(
            "By the time you click “On the way”, The time limit to get the food bag will start.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF3F704D),
                height: 1.5 * Hrefix,
                fontSize: 15,
                fontFamily: "Roboto"),
          ),
        ),
      ]),
    ];

    var pickBot = <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Buttons DO NOT CHANGE

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
                          MaterialStateProperty.all<Color>(Color(0xff8A9A5B))),
                  onPressed: () {
                    widget.overrideView(ThankOrder(
                        toggleView: widget.toggleView,
                        overrideView: widget.overrideView));
                  },
                  child: Text("PLACE THE ORDER")),
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
              onPressed: () {
                setState(() {
                  stateBoss = 0;
                });
              },
              child: AutoSizeText("CANCEL",
                  style: TextStyle(color: Color(0xff696363))),
            ),
          )),

          Padding(padding: EdgeInsets.only(top: Hrefix * 25))
        ],
      )
    ];

    // Credit Card Method
    var creditTop = <Widget>[
      Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Padding(padding: EdgeInsets.only(top: Hrefix * 327)),
        Image.asset(
          "images/pay_header.png",
          scale: 1 / Hrefix,
        ),
        Center(
          child: Container(
              height: Hrefix * 48,
              child: AutoSizeText(
                "Payment Method",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF274B32),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto-Bold"),
              )),
        ),
        Padding(padding: EdgeInsets.only(top: Hrefix * 22)),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: Wrefix * 45)),
            AutoSizeText(
              "Credit Card Details",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF676767), fontSize: 16, fontFamily: "Roboto"),
            ),
            Expanded(
              child: Padding(padding: EdgeInsets.only(left: Wrefix * 26)),
            ),
            AutoSizeText(
              "Change",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF274B32), fontSize: 17, fontFamily: "Roboto"),
            ),
            Padding(padding: EdgeInsets.only(left: Wrefix * 57)),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: Hrefix * 22)),
        Container(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "images/icons/credit.png",
                ),
                Padding(padding: EdgeInsets.only(left: Wrefix * 17)),
                AutoSizeText(
                  "**** **** **** 4747",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF646464),
                      fontSize: 15,
                      letterSpacing: 2 * Wrefix,
                      fontFamily: "Roboto"),
                ),
              ],
            ))
      ]),
    ];

    var creditBot = <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Buttons DO NOT CHANGE

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
                          MaterialStateProperty.all<Color>(Color(0xff8A9A5B))),
                  onPressed: () {
                    setState(() {
                      stateBoss = 5;
                    });
                  },
                  child: Text("CONFIRM")),
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
              onPressed: () {
                setState(() {
                  stateBoss = 0;
                });
              },
              child: AutoSizeText("CANCEL",
                  style: TextStyle(color: Color(0xff696363))),
            ),
          )),

          Padding(padding: EdgeInsets.only(top: Hrefix * 25))
        ],
      )
    ];

    // Debit Method
    var debitTop = <Widget>[
      Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Padding(padding: EdgeInsets.only(top: Hrefix * 327)),
        Image.asset(
          "images/pay_header.png",
          scale: 1 / Hrefix,
        ),
        Center(
          child: Container(
              height: Hrefix * 48,
              child: AutoSizeText(
                "Payment Method",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF274B32),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto-Bold"),
              )),
        ),
        Padding(padding: EdgeInsets.only(top: Hrefix * 22)),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: Wrefix * 45)),
            AutoSizeText(
              "Debit Card Details",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF676767), fontSize: 16, fontFamily: "Roboto"),
            ),
            Expanded(
              child: Padding(padding: EdgeInsets.only(left: Wrefix * 26)),
            ),
            AutoSizeText(
              "Change",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF274B32), fontSize: 17, fontFamily: "Roboto"),
            ),
            Padding(padding: EdgeInsets.only(left: Wrefix * 57)),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: Hrefix * 22)),
        Container(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "images/icons/debit.png",
                ),
                Padding(padding: EdgeInsets.only(left: Wrefix * 17)),
                AutoSizeText(
                  "**** **** **** 4747",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF646464),
                      fontSize: 15,
                      letterSpacing: 2 * Wrefix,
                      fontFamily: "Roboto"),
                ),
              ],
            ))
      ]),
    ];

    var debitBot = <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Buttons DO NOT CHANGE

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
                          MaterialStateProperty.all<Color>(Color(0xff8A9A5B))),
                  onPressed: () {
                    setState(() {
                      stateBoss = 5;
                    });
                  },
                  child: Text("CONFIRM")),
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
              onPressed: () {
                setState(() {
                  stateBoss = 0;
                });
              },
              child: AutoSizeText("CANCEL",
                  style: TextStyle(color: Color(0xff696363))),
            ),
          )),

          Padding(padding: EdgeInsets.only(top: Hrefix * 25))
        ],
      )
    ];

    // E-Wallet Method
    var eWalletTop = <Widget>[
      Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Padding(padding: EdgeInsets.only(top: Hrefix * 327)),
        Image.asset(
          "images/pay_header.png",
          scale: 1 / Hrefix,
        ),
        Center(
          child: Container(
              height: Hrefix * 48,
              child: AutoSizeText(
                "Payment Method",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF274B32),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto-Bold"),
              )),
        ),
        Padding(padding: EdgeInsets.only(top: Hrefix * 22)),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: Wrefix * 26)),
            Image.asset(
              "images/icons/gcash.png",
              scale: 1 / Hrefix,
            ),
            AutoSizeText(
              "GCash",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF676767), fontSize: 17, fontFamily: "Roboto"),
            ),
            Expanded(
              child: Padding(padding: EdgeInsets.only(left: Wrefix * 26)),
            ),
            AutoSizeText(
              "Change",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF274B32), fontSize: 17, fontFamily: "Roboto"),
            ),
            Padding(padding: EdgeInsets.only(left: Wrefix * 57)),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: Hrefix * 21)),
        Container(
            height: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "images/icons/call-phone.png",
                  height: 24,
                  width: 24,
                ),
                Padding(padding: EdgeInsets.only(left: Wrefix * 17)),
                AutoSizeText(
                  "+63 9*********",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF646464),
                      fontSize: 15,
                      letterSpacing: 3 * Wrefix,
                      fontFamily: "Roboto"),
                ),
              ],
            ))
      ]),
    ];

    var eWalletBot = <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Buttons DO NOT CHANGE

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
                          MaterialStateProperty.all<Color>(Color(0xff8A9A5B))),
                  onPressed: () {
                    setState(() {
                      stateBoss = 5;
                    });
                  },
                  child: Text("CONFIRM")),
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
              onPressed: () {
                setState(() {
                  stateBoss = 0;
                });
              },
              child: AutoSizeText("CANCEL",
                  style: TextStyle(color: Color(0xff696363))),
            ),
          )),

          Padding(padding: EdgeInsets.only(top: Hrefix * 25))
        ],
      )
    ];

    // Payment Method Choice
    var paymentTop = <Widget>[
      Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Padding(padding: EdgeInsets.only(top: Hrefix * 327)),
        Image.asset(
          "images/pay_header.png",
          scale: 1 / Hrefix,
        ),
        Center(
          child: Container(
              height: Hrefix * 48,
              child: AutoSizeText(
                "Payment Method",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF274B32),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto-Bold"),
              )),
        ),
        Padding(padding: EdgeInsets.only(top: Hrefix * 42)),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          InkWell(
            onTap: () {
              setState(() {
                choices = 1;
              });
            },
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                      child: Image.asset(
                    image1,
                    scale: 1,
                  )),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 16)),
                  AutoSizeText(
                    "E-Wallet",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: col1,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto-Light"),
                  ),
                ]),
          ),
          Padding(padding: EdgeInsets.only(left: Wrefix * 32.5)),
          InkWell(
            onTap: () {
              setState(() {
                choices = 2;
              });
            },
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                      child: Image.asset(
                    image2,
                    scale: 1,
                  )),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 16)),
                  AutoSizeText(
                    "Debit Card",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: col2,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto-Light"),
                  ),
                ]),
          ),
          Padding(padding: EdgeInsets.only(left: Wrefix * 32.5)),
          InkWell(
            onTap: () {
              setState(() {
                choices = 3;
              });
            },
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                      child: Image.asset(
                    image3,
                    scale: 1,
                  )),
                  Padding(padding: EdgeInsets.only(top: Hrefix * 16)),
                  AutoSizeText(
                    "Credit Card",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: col3,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto-Light"),
                  ),
                ]),
          )
        ]),
      ]),
    ];

    var paymentBot = <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Buttons DO NOT CHANGE

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
                          MaterialStateProperty.all<Color>(Color(0xff8A9A5B))),
                  onPressed: () {
                    setState(() {
                      stateBoss = choices + 1;
                    });
                  },
                  child: Text("CONFIRM")),
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
              onPressed: () {
                setState(() {
                  stateBoss = 0;
                });
              },
              child: AutoSizeText("CANCEL",
                  style: TextStyle(color: Color(0xff696363))),
            ),
          )),

          Padding(padding: EdgeInsets.only(top: Hrefix * 25))
        ],
      )
    ];

    // Bag page
    var bagsTop = <Widget>[
      Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Padding(padding: EdgeInsets.only(top: Hrefix * 327)),
        Center(
          child: Container(
              height: Hrefix * 48,
              child: AutoSizeText(
                "Choose a bag",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF274B32),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto-Bold"),
              )),
        ),
        Padding(padding: EdgeInsets.only(top: Hrefix * 17)),
        InkWell(
          onTap: () {
            setState(() {
              choices = 1;
            });
          },
          child: Row(children: <Widget>[
            Padding(padding: EdgeInsets.only(left: Wrefix * 56)),
            Image.asset(
              image1,
              scale: 1 / Hrefix,
            ),
            Padding(padding: EdgeInsets.only(left: Wrefix * 15)),
            Container(
                padding: EdgeInsets.only(left: 15),
                height: Hrefix * 30,
                child: AutoSizeText(
                  "Mystery Bag 1",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: col1,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto-Light"),
                )),
          ]),
        ),
        Padding(padding: EdgeInsets.only(top: Hrefix * 13)),
        InkWell(
          onTap: () {
            setState(() {
              choices = 2;
            });
          },
          child: Row(children: <Widget>[
            Padding(padding: EdgeInsets.only(left: Wrefix * 56)),
            Image.asset(
              image2,
              scale: 1 / Hrefix,
            ),
            Padding(padding: EdgeInsets.only(left: Wrefix * 15)),
            Container(
                padding: EdgeInsets.only(left: 15),
                height: Hrefix * 30,
                child: AutoSizeText(
                  "Mystery Bag 2",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: col2,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto-Light"),
                )),
          ]),
        ),
        Padding(padding: EdgeInsets.only(top: Hrefix * 13)),
        InkWell(
          onTap: () {
            setState(() {
              choices = 3;
            });
          },
          child: Row(children: <Widget>[
            Padding(padding: EdgeInsets.only(left: Wrefix * 56)),
            Image.asset(
              image3,
              scale: 1 / Hrefix,
            ),
            Padding(padding: EdgeInsets.only(left: Wrefix * 15)),
            Container(
                padding: EdgeInsets.only(left: 15),
                height: Hrefix * 30,
                child: AutoSizeText(
                  "Mystery Bag 3",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: col3,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto-Light"),
                )),
          ]),
        ),
      ]),
    ];

    var bagsBot = <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Buttons DO NOT CHANGE

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
                          MaterialStateProperty.all<Color>(Color(0xff8A9A5B))),
                  onPressed: () {
                    setState(() {
                      stateBoss = 1;
                      choices = 0;
                    });
                  },
                  child: Text("CONFIRM")),
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
              onPressed: () => {widget.toggleView(0)},
              child: AutoSizeText("CANCEL",
                  style: TextStyle(color: Color(0xff696363))),
            ),
          )),

          Padding(padding: EdgeInsets.only(top: Hrefix * 25))
        ],
      )
    ];

    // Set state
    if (stateBoss == 0) {
      useTop = bagsTop;
      useBot = bagsBot;
    } else if (stateBoss == 1) {
      useTop = paymentTop;
      useBot = paymentBot;
    } else if (stateBoss == 2) {
      useTop = eWalletTop;
      useBot = eWalletBot;
    } else if (stateBoss == 3) {
      useTop = debitTop;
      useBot = debitBot;
    } else if (stateBoss == 4) {
      useTop = creditTop;
      useBot = creditBot;
    } else if (stateBoss == 5) {
      useTop = pickTop;
      useBot = pickBot;
    }

    // Actual Codes

    return Scaffold(
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
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              child: Container(
                width: Wrefix * 360,
                height: Hrefix * 510,
                color: Color(0xFFF6F5F5),
              )),

          // Actual Content

          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: useTop),

          // Bottom half

          Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: useBot)
        ])
      ],
    ));
  }
}
