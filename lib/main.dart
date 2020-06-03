import 'package:flutter/material.dart';
import 'package:proto01/login/splashscreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new SplashScreen(),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
    );
  }
}


