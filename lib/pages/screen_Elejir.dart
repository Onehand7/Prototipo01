import 'package:OneHand/pages/login_screen.dart';
import 'package:OneHand/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ScreensElejir extends StatefulWidget {
  static String id = "Screend_Elejir";
  @override
  _ScreensElejirState createState() => _ScreensElejirState();
}

class _ScreensElejirState extends State<ScreensElejir> {
  List data;
  @override
  void initState() {
    super.initState();
    getUser();
  }

  getUser() async {
    http.Response response = await http.get('http://192.168.1.93:3000/');
    debugPrint(response.body);
    data = json.decode(response.body);
    setState(() {
      return data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: colorBlue,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "¿Que eres?",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        _iconsButtonCli(),
                        Text(
                          "Cliente",
                          style: TextStyle(fontSize: 30, color: colorWhite),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        _iconsButtonPro(),
                        Text(
                          "Técnico",
                          style: TextStyle(fontSize: 30, color: colorWhite),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }

  Widget _iconsButtonCli() {
    String _cli = "Cliente";
    return ClipOval(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/IconCliente.png"),
          ),
        ),
        child: FlatButton(
          padding: EdgeInsets.all(0.0),
          child: null,
          onPressed: () {
            print(_cli);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen(_cli)));
          },
        ),
      ),
    );
  }

  Widget _iconsButtonPro() {
    String _tec = "Técnico";
    return ClipOval(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/IconTécnico.png"),
          ),
        ),
        child: FlatButton(
          padding: EdgeInsets.all(0.0),
          child: null,
          onPressed: () {
            print(_tec);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen(_tec)));
          },
        ),
      ),
    );
  }
}
