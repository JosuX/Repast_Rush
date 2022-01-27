// ignore_for_file: unnecessary_null_comparison

import 'package:firebase_auth/firebase_auth.dart';
import 'package:repast_rush/models/myuser.dart';
import 'package:repast_rush/services/database.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  MyUser? _userFromFirebase(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  //Streams changes
  Stream<MyUser?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userFromFirebase(user!));
  }

  //sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebase(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email & password
  Future loginUser(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebase(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //register with email & password
  Future registerUser(
      String email, String password, String name, String phone) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;

      //new doc for user
      await DatabaseService(uid: user!.uid).updateUserData(email, name, phone);
      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
