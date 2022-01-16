import 'package:flutter/material.dart';
import 'package:repast_rush/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text("Home"),
        ElevatedButton(
            onPressed: () async {
              await _auth.signOut();
            },
            child: Text("Sign Out"))
      ],
    ));
  }
}
