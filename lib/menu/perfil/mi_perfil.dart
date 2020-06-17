import 'package:flutter/material.dart';
import 'package:proto01/menu/menu_principal.dart';

class PageMiPerfil extends StatefulWidget {
  final Data data;
  PageMiPerfil({this.data});
  @override
  _PageMiPerfil createState() => new _PageMiPerfil(data2: data);
}


class _PageMiPerfil extends State<PageMiPerfil> {
  final Data data2;
  _PageMiPerfil({this.data2});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        //se pasa el titulo de Menu principal a lista solicitud
        title: Center(child: Text("${data2.text}")),
        titleSpacing: 100,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(child: Text("Perfil")),
    );
  }
}