// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, file_names, must_be_immutable, use_key_in_widget_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPage extends StatefulWidget {
  final Function toggleView;
  int start_index;
  IntroPage({this.start_index = 0, required this.toggleView});

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    double Hrefix = scrHeight / 800;
    double Wrefix = scrWidth / 360;
    return Scaffold(
        body: IntroductionScreen(
      initialPage: widget.start_index,
      controlsPadding: EdgeInsets.all(0),
      isBottomSafeArea: true,
      isTopSafeArea: true,
      curve: Curves.bounceInOut,
      dotsDecorator: DotsDecorator(
          spacing: EdgeInsets.only(left: Wrefix * 10, bottom: Hrefix * 0),
          activeColor: Color(0xff3F704D),
          size: Size(Hrefix * 10, Hrefix * 10)),
      showSkipButton: false,
      showNextButton: false,
      showDoneButton: false,
      skip: Text(""),
      next: Text(""),
      done: Text(""),
      onDone: () {},
      rawPages: [
        Scaffold(
          backgroundColor: Color(0xffF6F5F5),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: Hrefix * 416,
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                        "images/Intro1.png",
                        scale: 1 / Hrefix,
                      ))),
              Padding(padding: EdgeInsets.only(top: Hrefix * 33)),
              Container(
                  height: Hrefix * 41,
                  child: Center(
                      child: AutoSizeText(
                    "Repast Rush is...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto-Bold"),
                  ))),
              Padding(padding: EdgeInsets.only(top: Hrefix * 35)),
              Expanded(
                child: Container(
                    padding:
                        EdgeInsets.only(left: Wrefix * 42, right: Wrefix * 42),
                    height: Hrefix * 78,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: AutoSizeText(
                          "a food application that aims to lessen food wastes from food businesses in the country.",
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                            color: Color(0xff535252),
                            height: 1.5,
                            letterSpacing: 0.41,
                            fontSize: 20,
                            fontFamily: "Roboto-Light",
                          ),
                        ))),
              )
            ],
          ),
        ),
        Scaffold(
          backgroundColor: Color(0xffF6F5F5),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: Hrefix * 435,
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        "images/Intro2.png",
                        scale: 1 / Hrefix,
                      ))),
              Padding(padding: EdgeInsets.only(top: Hrefix * 86)),
              Expanded(
                child: Container(
                    padding:
                        EdgeInsets.only(left: Wrefix * 34, right: Wrefix * 34),
                    height: Hrefix * 78,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: AutoSizeText(
                          "It is by selling the surplus stock of food businesses affiliated with us in a discounted price!",
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                            color: Color(0xff535252),
                            height: 1.5,
                            letterSpacing: 0.41,
                            fontSize: 20,
                            fontFamily: "Roboto-Light",
                          ),
                        ))),
              )
            ],
          ),
        ),
        Scaffold(
          backgroundColor: Color(0xffF6F5F5),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: Hrefix * 382,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        "images/Intro3.png",
                        scale: 1 / Hrefix,
                      ))),
              Padding(padding: EdgeInsets.only(top: Hrefix * 37)),
              Container(
                  height: Hrefix * 41,
                  child: Center(
                      child: AutoSizeText(
                    "There is no delivery.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto-Bold"),
                  ))),
              Padding(padding: EdgeInsets.only(top: Hrefix * 23)),
              Expanded(
                child: Container(
                    padding:
                        EdgeInsets.only(left: Wrefix * 36, right: Wrefix * 36),
                    height: Hrefix * 181,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: AutoSizeText.rich(
                          TextSpan(children: <TextSpan>[
                            TextSpan(
                                text:
                                    "Users will be held accountable for their food orders, available shops will be limited to a certain distance around you as there is a"),
                            TextSpan(
                                text: " 30 minutes time limit ",
                                style: TextStyle(color: Color(0xff8A9A5B))),
                            TextSpan(text: "to get your food.")
                          ]),
                          style: TextStyle(
                            color: Color(0xff535252),
                            height: 1.5,
                            letterSpacing: 0.41,
                            fontSize: 19,
                            fontFamily: "Roboto-Light",
                          ),
                          maxLines: 6,
                          textAlign: TextAlign.center,
                        ))),
              )
            ],
          ),
        ),
        Scaffold(
          backgroundColor: Color(0xffF6F5F5),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: Hrefix * 382,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        "images/Intro3.png",
                        scale: 1 / Hrefix,
                      ))),
              Padding(padding: EdgeInsets.only(top: Hrefix * 37)),
              Container(
                  height: Hrefix * 41,
                  child: Center(
                      child: AutoSizeText(
                    "There is no delivery.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto-Bold"),
                  ))),
              Padding(padding: EdgeInsets.only(top: Hrefix * 37)),
              Expanded(
                child: Container(
                    padding:
                        EdgeInsets.only(left: Wrefix * 35, right: Wrefix * 35),
                    height: Hrefix * 143,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: AutoSizeText(
                          "Time limits are applied as most food businesses putting up their food sales are nearing their closing time.",
                          textAlign: TextAlign.center,
                          maxLines: 4,
                          style: TextStyle(
                            color: Color(0xff535252),
                            height: 1.5,
                            letterSpacing: 0.41,
                            fontSize: 19,
                            fontFamily: "Roboto-Light",
                          ),
                        ))),
              )
            ],
          ),
        ),
        Scaffold(
          backgroundColor: Color(0xFFF6F5F5),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: Hrefix * 416,
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                        "images/Intro4.png",
                        scale: 1 / Hrefix,
                      ))),
              Padding(padding: EdgeInsets.only(top: Hrefix * 33)),
              Container(
                  height: Hrefix * 41,
                  child: Center(
                      child: AutoSizeText(
                    "Don't fret!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto-Bold"),
                  ))),
              Container(
                  padding:
                      EdgeInsets.only(left: Wrefix * 36, right: Wrefix * 36),
                  height: Hrefix * 143,
                  child: Align(
                      alignment: Alignment.center,
                      child: AutoSizeText(
                        "The huge discount and amount of food that comes with it is worth it!",
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: TextStyle(
                          color: Color(0xff535252),
                          height: 1.5,
                          letterSpacing: 0.41,
                          fontSize: 20,
                          fontFamily: "Roboto-Light",
                        ),
                      ))),
              Padding(padding: EdgeInsets.only(top: Hrefix * 33)),
              Container(
                height: Hrefix * 54,
                width: Wrefix * 220,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xff8A9A5B))),
                    onPressed: () => {widget.toggleView(1)},
                    child: Text("PROCEED")),
              )
            ],
          ),
        )
      ],
    ));
  }
}
