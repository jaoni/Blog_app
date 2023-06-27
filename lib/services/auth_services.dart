import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../utils/util_s.dart';

class AuthServices {
  
  static Future login({TextEditingController? emailController, TextEditingController? passwordController}) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController!.text.trim(),
      password: passwordController!.text.trim(),
    );
  } on FirebaseAuthException catch (e) {
    Utils.showSnackerBar(e.message);
  }

  navigatorKey.currentState!.popUntil((route) => route.isFirst);
}

static Future signUp({TextEditingController? emailController, TextEditingController? passwordController}) async {

  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController!.text.trim(),
      password: passwordController!.text.trim(),
    );
  } on FirebaseAuthException catch (e) {
    Utils.showSnackerBar(e.message);
  }
  navigatorKey.currentState!.popUntil((route) => route.isFirst);
}
}