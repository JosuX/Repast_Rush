// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_init_to_null, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:repast_rush/screens/home/food_shops.dart';
import 'package:repast_rush/services/auth.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var page = 0;
  var override_widget = null;
  void toggleView(changePage) {
    setState(() {
      page = changePage;
      override_widget = null;
    });
  }

  void overrideView(changePage) {
    setState(() {
      page = 0;
      override_widget = changePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (override_widget == null) {
      if (page == 1) {
        return FoodShops(
          toggleView: toggleView,
          overrideView: overrideView,
        );
      } else if (page == 2) {
        return FoodShops(toggleView: toggleView, overrideView: overrideView);
      } else if (page == 3) {
        return FoodShops(toggleView: toggleView, overrideView: overrideView);
      } else {
        return FoodShops(toggleView: toggleView, overrideView: overrideView);
      }
    }
    return override_widget;
  }
}
