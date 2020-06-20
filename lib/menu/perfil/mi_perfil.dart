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
        body: BuildPerfil());
  }

  Widget BuildPerfil() {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Container(
          height: size.height * .25,
          decoration: BoxDecoration(
            color: Colors.orange[200],
          ),
          child: IconButton(
              icon: Icon(
                Icons.account_circle,
                size: 150,
              ),
              onPressed: null),
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Matias Tapia",
            style: TextStyle(fontSize: 27),
          ),
        )),
        ListTile(
          title: Text("Correo electrónico"),
          subtitle: Text("mtapia5@alumnos.ceduc.cl"),
        ),
        Divider(),
        ListTile(
          title: Text("Número de teléfono"),
          subtitle: Text("+569 3389 4293"),
        ),
        Divider(),
        ListTile(
          title: Text("Contraseña"),
          subtitle: Text("**********"),
          trailing: IconButton(icon: Icon(Icons.edit), onPressed: null),
        ),
      ],
    );
  }
}
