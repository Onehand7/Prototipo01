import 'package:OneHand/Login_Principal/Bienvenida/welcome.dart';
import 'package:OneHand/pages/screen_Elejir.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      theme: ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: ScreensElejir.id,
      routes: {
        ScreensElejir.id: (context) => ScreensElejir(),
        //LoginScreen.id : (context) => LoginScreen(),
      },
    );
  }
}
