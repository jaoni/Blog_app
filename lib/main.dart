import 'package:blog_app/screens/auth/auth_page.dart';
import 'package:blog_app/screens/auth/sign_up.dart';
import 'package:blog_app/utils/util_s.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  static const String title = "Firebase Auth";
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: messengerKey,
      navigatorKey: navigatorKey,
      title: "Blog App",
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
    );
  }
}




