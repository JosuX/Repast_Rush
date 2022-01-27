// ignore_for_file: unused_local_variable, file_names, non_constant_identifier_names, prefer_const_constructors, sized_box_for_whitespace, unused_element, unnecessary_new, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:repast_rush/services/auth.dart';

class SignUpPage extends StatefulWidget {
  final Function toggleView;
  SignUpPage({required this.toggleView});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

String? validateMobile(String value) {
  String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = new RegExp(patttern);
  if (value.isEmpty) {
    return 'Please enter mobile number';
  } else if (!regExp.hasMatch(value)) {
    return 'Please enter valid mobile number';
  }
  return null;
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

class _SignUpPageState extends State<SignUpPage> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();

  bool remember = false;
  String email = "";
  String password = "";
  String name = "";
  String phone = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    double Hrefix = scrHeight / 800;
    double Wrefix = scrWidth / 360;
    return WillPopScope(
      onWillPop: () async {
        widget.toggleView(1);
        return Future.value(false);
      },
      child: Scaffold(
          backgroundColor: Color(0xFFF6F5F5),
          body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
              Padding(padding: EdgeInsets.only(top: Hrefix * 43)),
              Container(
                  height: Hrefix * 53,
                  child: Center(
                      child: AutoSizeText(
                    "Sign Up",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto-Bold"),
                  ))),
              Padding(padding: EdgeInsets.only(top: Hrefix * 46)),
              Container(
                  height: Hrefix * 75,
                  child: Center(
                      child: Image.asset(
                    "images/SignUp.png",
                    scale: 1 / Hrefix,
                  ))),
              Padding(padding: EdgeInsets.only(top: Hrefix * 66)),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    Container(
                        height: Hrefix * 47,
                        width: Wrefix * 250,
                        child: TextFormField(
                          onChanged: (val) {
                            setState(() {
                              name = val;
                            });
                          },
                          validator: (value) =>
                              value!.isEmpty ? 'Enter a name' : null,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8A9A5B))),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8A9A5B))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8A9A5B))),
                              prefixIcon: Container(
                                padding: EdgeInsets.only(right: Wrefix * 16),
                                child: Image.asset("images/icons/user.png",
                                    scale: 1 / Hrefix),
                              ),
                              hintText: "Enter your full name",
                              hintStyle: TextStyle(
                                  fontSize: 14, fontFamily: "Roboto-Light")),
                        )),
                    Padding(padding: EdgeInsets.only(top: Hrefix * 24)),
                    Container(
                        height: Hrefix * 47,
                        width: Wrefix * 250,
                        child: TextFormField(
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                          validator: (value) => value!.isValidEmail()
                              ? null
                              : "Please enter a valid email",
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8A9A5B))),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8A9A5B))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8A9A5B))),
                              prefixIcon: Container(
                                padding: EdgeInsets.only(right: Wrefix * 16),
                                child: Image.asset("images/icons/mail.png",
                                    scale: 1 / Hrefix),
                              ),
                              hintText: "Enter your email",
                              hintStyle: TextStyle(
                                  fontSize: 14, fontFamily: "Roboto-Light")),
                        )),
                    Padding(padding: EdgeInsets.only(top: Hrefix * 24)),
                    Container(
                        height: Hrefix * 47,
                        width: Wrefix * 250,
                        child: TextFormField(
                          onChanged: (val) {
                            setState(() {
                              phone = val;
                            });
                          },
                          validator: (value) => validateMobile(value!),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8A9A5B))),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8A9A5B))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8A9A5B))),
                              prefixIcon: Container(
                                padding: EdgeInsets.only(right: Wrefix * 16),
                                child: Image.asset(
                                    "images/icons/call-phone.png",
                                    scale: 1 / Hrefix),
                              ),
                              hintText: "Enter your phone number",
                              hintStyle: TextStyle(
                                  fontSize: 14, fontFamily: "Roboto-Light")),
                        )),
                    Padding(padding: EdgeInsets.only(top: Hrefix * 24)),
                    Container(
                        height: Hrefix * 47,
                        width: Wrefix * 250,
                        child: TextFormField(
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                          validator: (value) => value!.length < 6
                              ? 'Enter a password 6 or more characters long'
                              : null,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8A9A5B))),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8A9A5B))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8A9A5B))),
                              prefixIcon: Container(
                                padding: EdgeInsets.only(right: Wrefix * 16),
                                child: Image.asset("images/icons/key.png",
                                    scale: 1 / Hrefix),
                              ),
                              hintText: "Enter your password",
                              hintStyle: TextStyle(
                                  fontSize: 14, fontFamily: "Roboto-Light")),
                        )),
                    Padding(padding: EdgeInsets.only(top: Hrefix * 34)),
                    Container(
                      height: Hrefix * 51,
                      width: Wrefix * 214,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xff8A9A5B))),
                          onPressed: () async {
                            if (_formkey.currentState!.validate()) {
                              dynamic result = await _auth.registerUser(
                                  email, password, name, phone);
                              if (result == null) {
                                setState(() =>
                                    error = "Please fill the required forms.");
                              }
                            }
                          },
                          child: AutoSizeText("SIGN UP")),
                    ),
                    Padding(padding: EdgeInsets.only(top: Hrefix * 95)),
                    Container(
                        height: Hrefix * 51,
                        width: Wrefix * 214,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                              activeColor: Color(0xff8A9A5B),
                              fillColor:
                                  MaterialStateProperty.all(Color(0xff8A9A5B)),
                              value: remember,
                              onChanged: (value) {
                                setState(() {
                                  remember = value!;
                                });
                              },
                            ),
                            Text("Remember me")
                          ],
                        )),
                  ],
                ),
              ),
            ]),
          )),
    );
  }
}
