import 'package:flutter/material.dart';
import 'package:proto01/menu/menu_principal.dart';

class PageConfiguracion extends StatefulWidget {
  final Data data;
  PageConfiguracion({this.data});
  @override
  _PageConfiguracion createState() => new _PageConfiguracion(data2: data);
}

class _PageConfiguracion extends State<PageConfiguracion> {
  final Data data2;
  _PageConfiguracion({this.data2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuración"),
      ),
    );
  }
}
