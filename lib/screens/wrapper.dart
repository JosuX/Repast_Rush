// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:repast_rush/models/myuser.dart';
import 'package:repast_rush/screens/authenticate/authenticate.dart';
import 'package:repast_rush/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);
    print(user?.uid);

    // return either home or auth
    // ignore: unnecessary_null_comparison
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
