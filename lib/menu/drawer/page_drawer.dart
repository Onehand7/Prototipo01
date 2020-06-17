import 'package:flutter/material.dart';
import 'package:proto01/menu/menu_principal.dart';

class PageDrawer extends StatefulWidget {
  final Data data;
  PageDrawer({this.data});
  @override
  _PageDrawer createState() => new _PageDrawer(data2: data);

  
}

class _PageDrawer extends State<PageDrawer> {
  final Data data2;
  _PageDrawer({this.data2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("prueba del drawer"),
            )
          ],
        ),
      ),
      
     
    );
  }
}