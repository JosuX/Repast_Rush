// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:repast_rush/screens/authenticate/IntroPage.dart';
import 'package:repast_rush/screens/authenticate/SignInPage.dart';
import 'package:repast_rush/screens/authenticate/SignUpPage.dart';
import 'package:repast_rush/screens/authenticate/WelcomePage.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  var page = 0;
  void toggleView(changePage) {
    setState(() => page = changePage);
  }

  @override
  Widget build(BuildContext context) {
    if (page == 1) {
      return WelcomePage(toggleView: toggleView);
    } else if (page == 2) {
      return SignInPage(toggleView: toggleView);
    } else if (page == 3) {
      return SignUpPage(toggleView: toggleView);
    } else {
      return IntroPage(toggleView: toggleView);
    }
  }
}
