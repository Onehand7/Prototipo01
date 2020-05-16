import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class MenuPagina extends StatefulWidget {
  static Route<dynamic> route(String mensaje) {
    return MaterialPageRoute(
      builder: (context) => MenuPagina(mensaje: mensaje),
    );
  }

  final String mensaje;

  const MenuPagina({Key key, @required this.mensaje}) : super(key: key);

  @override
  _MenuPagina createState() => new _MenuPagina();
}

class _MenuPagina extends State<MenuPagina> {
  Map data; /////////////////////////////
  List cuentasData;

  String currentProfilePic = "assets/onehand.png";
  String otherProfilePic = "assets/onehand.png";

  void switchAccounts() {
    String picBackup = currentProfilePic;
    this.setState(() {
      currentProfilePic = otherProfilePic;
      otherProfilePic = picBackup;
    });
  }

  @override
  void initState() {
    super.initState();
    getUsuarios(); //////////
  }

  getUsuarios() async {
    http.Response respuesta =
        await http.get(Uri.encodeFull("http://localhost:3000/api/usuarios"));
    //debugPrint(respuesta.body);
    data = json.decode(respuesta.body);
    setState(() {
      cuentasData = data['cuenta'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("One Hand 7"),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            
            new UserAccountsDrawerHeader(
              accountEmail: new Text("mtapiar5@alumnos.ceduc.cl"),
              accountName: new Text("Matias Tapia"),
              currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new AssetImage(currentProfilePic),
                  ),
              )
            ),
            new ListTile(
              title: new Text("pepito"),
              
            ),
            new ListTile(
              title: new Text("Historial"),
            ),
            new ListTile(
              title: new Text("Carrito"),
            ),
            new ListTile(
              title: new Text("Configuración"),
            ),
            new ListTile(
              title: new Text("Salir"),
            ),
            ],

        )
      ),
      body: ListView.builder(
        itemCount: cuentasData == null ? 0 : cuentasData.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Row(
              children: <Widget>[Text("${cuentasData[index]["id"]}")],
            ),
          );
        },
      ),
    );
  }
}
