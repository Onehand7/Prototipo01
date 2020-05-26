import 'package:flutter/material.dart';
import 'package:proto01/menu/perfil/perfil.dart';
import 'package:proto01/menu/configuracion/confi.dart';
import 'package:proto01/menu/tabs/displays.dart';
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

class _MenuPagina extends State<MenuPagina>
    with SingleTickerProviderStateMixin {
  Map data; /////////////////////////////
  List cuentasData;

  //Variables
  int _currentIndex = 0;
  int _selectDrawerItem = 0;
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
    getUsuarios();
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

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 1:
        return PerfilPage();
      case 2:
        return ConfiguracionPage();
      default:
    }
  }

  _onSelectItem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  final List<Widget> _children = [
    DisplaysWidget(Colors.greenAccent),
    DisplaysWidget(Colors.blueAccent),
    DisplaysWidget(Colors.pinkAccent),
    DisplaysWidget(Colors.yellowAccent),
  ];

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
              accountName: new Text("Matias Tapia"),
              accountEmail: new Text("mtapiar5@alumnos.ceduc.cl"),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Text(
                    "M",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              )),
          new ListTile(
            title: new Text("Perfil"),
            leading: Icon(Icons.account_box),
            selected: (1 == _selectDrawerItem),
            onTap: () {
              _onSelectItem(1);
            },
          ),
          new ListTile(
            title: new Text("Configuración"),
            leading: Icon(Icons.settings),
            selected: (2 == _selectDrawerItem),
            onTap: () {
              _onSelectItem(2);
            },
          ),
          Divider(),
          new ListTile(
            title: new Text("Salir"),
            leading: Icon(Icons.exit_to_app),
            onTap: () {},
          ),
        ],
      )),
      body://_children[_currentIndex], 
      _getDrawerItemWidget(_selectDrawerItem),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        fixedColor: Colors.orangeAccent,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("Buscar")),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text("Favoritos")),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("lista")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("Mi Perfil"))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
