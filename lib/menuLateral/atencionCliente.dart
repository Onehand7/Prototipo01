import 'package:flutter/material.dart';
import 'package:OneHand/menu/menu_principal.dart';

class AtencionCliente extends StatefulWidget {
  final Data data;
  AtencionCliente({this.data});
  @override
  _AtencionCliente createState() => new _AtencionCliente(data2: data);
}

class _AtencionCliente extends State<AtencionCliente> {
  final Data data2;
  _AtencionCliente({this.data2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atención al cliente"),
      ),
    );
  }
}
