import 'package:flutter/material.dart';
import 'package:OneHand/Screen_cliente/menu/menu_principal.dart';

class PageNoticias extends StatefulWidget {
  final Data data;
  PageNoticias(String s, {this.data});
  @override
  _PageNoticias createState() => new _PageNoticias(data2: data);
}

class _PageNoticias extends State<PageNoticias> {
  final Data data2;
  _PageNoticias({this.data2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Noticias"),
      ),
    );
  }
}
