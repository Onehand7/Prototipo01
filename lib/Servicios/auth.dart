import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      // AuthResult result = await _auth.signInWithEmailAndPassword(
      //     email: email, password: password);
      // FirebaseUser firebaseUser = result.user;
    } catch (e) {}
  }
}
