import 'package:flutter/material.dart';
import 'package:proto01/menu/perfil/perfil.dart';
import 'package:proto01/menu/configuracion/confi.dart';

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

  //VARIABLES

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

  // final List<Widget> _children = [
  //   DisplaysWidget(Colors.greenAccent),
  //   DisplaysWidget(Colors.blueAccent),
  //   DisplaysWidget(Colors.pinkAccent),
  //   DisplaysWidget(Colors.yellowAccent),
  // ];
  final tabs = [
    Center(
      child: Text("Buscar"),
    ),
    Center(
      child: Text("Favoritos"),
    ),
    Center(
      child: Text("Lista"),
    ),
    Center(
      child: Text("Mi Perfil"),
    ),
    //PerfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: new AppBar(
        title: Text("One Hand "),
        titleSpacing: 80,
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
                  backgroundColor: Colors.blue[100],
                  child: Text(
                    "M",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              )),
          new ListTile(
            title: new Text(
              "Mi Perfil",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.account_circle,
              size: 40,
            ),
            trailing: Icon(
              Icons.more_vert,
              size: 40,
            ),
            selected: (1 == _selectDrawerItem),
            onTap: () {
              _onSelectItem(1);
            },
          ),
          Divider(
            height: 10,
            indent: 15,
            endIndent: 20,
            thickness: 1,
          ),
          new ListTile(
            title: new Text(
              "Noticias",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.fiber_new,
              size: 40,
            ),
            selected: (2 == _selectDrawerItem),
            onTap: () {
              _onSelectItem(2);
            },
          ),
          Divider(
            height: 10,
            indent: 15,
            endIndent: 20,
            thickness: 1,
          ),
          new ListTile(
            title: new Text(
              "Atención al cliente",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.chat,
              size: 40,
            ),
            selected: (3 == _selectDrawerItem),
            onTap: () {
              _onSelectItem(3);
            },
          ),
          Divider(
            height: 10,
            indent: 15,
            endIndent: 20,
            thickness: 1,
          ),
          new ListTile(
            title: new Text(
              "Configuración",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.settings,
              size: 40,
            ),
            selected: (4 == _selectDrawerItem),
            onTap: () {
              _onSelectItem(4);
            },
          ),
          Divider(
            height: 10,
            indent: 15,
            endIndent: 20,
            thickness: 1,
          ),
          new ListTile(
            title: new Text(
              "Acerca de onehand",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.pan_tool,
              size: 37,
            ),
            selected: (5 == _selectDrawerItem),
            onTap: () {
              _onSelectItem(5);
            },
          ),
          Divider(
            height: 10,
            indent: 15,
            endIndent: 20,
            thickness: 1,
          ),
          new ListTile(
            title: new Text(
              "Cerrar sesión",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.exit_to_app,
              size: 40,
            ),
            onTap: () {},
          ),
        ],
      )),
      body: Stack(
        children: <Widget>[
          //tabs[_currentIndex],
          Container(
            height: size.height * .30,
            decoration: BoxDecoration(
              color: Colors.orange[200],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 25),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(26.5)),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Buscar",
                icon: Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
          Stack(children: <Widget>[
            Positioned(
              top: 49,
              child: Container(
                //color: Colors.red[600],
                margin: EdgeInsets.symmetric(vertical: 50),
                //padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),

                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      height: 50,
                      color: Colors.amber[600],
                      child: const Center(child: Text('Baby Sister')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[500],
                      child: const Center(child: Text('Eléctrico')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[100],
                      child: const Center(child: Text('Electromecánico')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[600],
                      child: const Center(child: Text('Enfermería')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[500],
                      child: const Center(child: Text('Gásfiter')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[100],
                      child: const Center(child: Text('Informático')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[600],
                      child: const Center(child: Text('Kinesiólogo')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[500],
                      child: const Center(child: Text('Mecánico')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[100],
                      child: const Center(child: Text('Pedagogía básica')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[600],
                      child: const Center(child: Text('Turismo')),
                    ),

                  ],
                ),
              ),
            ),
          ]),
        ],
      ),
      // descomentar _get para usar barra lateral, descomentar _children para barra inferior
      //_children[_currentIndex],
      //_getDrawerItemWidget(_selectDrawerItem),

      //Barra de navegacion inferior
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        fixedColor: Colors.orangeAccent,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Buscar"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favoritos"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("lista"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Mi Perfil"),
          )
        ],
      ),
    );
  }

  // metodo para las pestañas de abajo del dispositivo
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
