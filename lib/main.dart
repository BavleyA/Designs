import 'package:designs/messenger_screen.dart';
import 'package:designs/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:designs/login_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}