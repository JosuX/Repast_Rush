// ignore_for_file: empty_constructor_bodies

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:repast_rush/models/userdata.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({this.uid});
  // collection reference
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');
  final CollectionReference shops =
      FirebaseFirestore.instance.collection('orders');

  Future updateUserData(String email, String name, String phone) async {
    return await users.doc(uid).set({
      'emails': email,
      'names': name,
      'phones': phone,
    });
  }

  // userdata from snapshot
  QueryDocumentSnapshot<Object?> _userdataFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.singleWhere(
        (doc) => doc.get("emails") == FirebaseAuth.instance.currentUser!.email);
  }

  //get user data
  Stream<QueryDocumentSnapshot<Object?>> get userdata {
    return users.snapshots().map(_userdataFromSnapshot);
  }

  Future createOrder(String email, String name, String phone) async {
    return await users.doc(uid).set({
      'emails': email,
      'names': name,
      'phones': phone,
    });
  }
}
