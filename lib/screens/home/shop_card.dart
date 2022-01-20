// ignore_for_file: unused_local_variable, non_constant_identifier_names

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
        width: Wrefix * 321,
        height: Hrefix * 131,
        color: Colors.red,
      ),
      onTap: () {
        print("Tapped on container");
      },
    );
  }
}
