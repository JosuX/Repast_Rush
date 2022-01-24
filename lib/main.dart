// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:repast_rush/models/myuser.dart';
import 'package:repast_rush/screens/home/home.dart';
import 'package:repast_rush/screens/wrapper.dart';
import 'package:repast_rush/services/auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
        value: AuthService().user,
       initialData: null,
        catchError: (User, MyUser) => null,
        // ignore: prefer_const_constructors
        child: MaterialApp(debugShowCheckedModeBanner: false, home: Wrapper()));
  }
}
