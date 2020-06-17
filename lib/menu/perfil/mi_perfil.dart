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
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MenuPagina(
                  mensaje: null,
                ),
              ));
            }),
        //se pasa el titulo de Menu principal a lista solicitud
        title: Text("${data2.text}"),
        titleSpacing: 100,
        backgroundColor: Colors.orangeAccent,
      ),
      //drawer: PageDrawer(),
      body: Center(child: Text("Perfil")),
    );
  }
}
