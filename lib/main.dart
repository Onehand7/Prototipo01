import 'package:OneHand/Bienvenida/welcome.dart';
import 'package:flutter/material.dart';
import 'Bienvenida/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
    );
  }
}
