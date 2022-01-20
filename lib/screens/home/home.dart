// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:repast_rush/screens/home/food_shops.dart';
import 'package:repast_rush/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return FoodShops();
  }
}
