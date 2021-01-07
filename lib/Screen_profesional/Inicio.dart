import 'package:flutter/material.dart';
import 'package:OneHand/Screen_profesional/Solicitudes/page_solicitud.dart';
import 'package:OneHand/Screen_profesional/menu_principal.dart';
import 'package:OneHand/Screen_profesional/perfil/mi_perfil.dart';
import 'package:OneHand/menuLateral/acercade.dart';
import 'package:OneHand/menuLateral/atencionCliente.dart';
import 'package:OneHand/menuLateral/confi.dart';
import 'package:OneHand/menuLateral/noticias.dart';

class PageInicio extends StatefulWidget {
  final Data data;
  PageInicio({this.data});
  @override
  _PageInicio createState() => new _PageInicio(data2: data);
}

class _PageInicio extends State<PageInicio> {
  final Data data2;
  _PageInicio({this.data2});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Menu del profesional"),
          titleSpacing: 80,
          backgroundColor: Colors.amberAccent,
        ),
        //barra lateral del menu principal
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                  accountName: new Text("Sebastian Arenas"),
                  accountEmail: new Text("seba519tatu@gmail.com"),
                  currentAccountPicture: new GestureDetector(
                    child: new CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                      child: Text(
                        "S",
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
                //selected: (1 == _selectDrawerItem),
                onTap: () {
                  //_onSelectItem(1);
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => PageMiPerfil()));
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
                //selected: (2 == _selectDrawerItem),
                onTap: () {
                  //_onSelectItem(2);
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => PageNoticias()));
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
                //selected: (3 == _selectDrawerItem),
                onTap: () {
                  //_onSelectItem(3);
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => AtencionCliente()));
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
                //selected: (4 == _selectDrawerItem),
                onTap: () {
                  // _onSelectItem(4);
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => PageConfiguracion()));
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
                //selected: (5 == _selectDrawerItem),
                onTap: () {
                  //_onSelectItem(5);
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => AcercadeOnehand()));
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
          ),
        ),
        //cuerpo del menu principal
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height * .35,
              decoration: BoxDecoration(
                color: Color(0xFFcbedf1),
                //borderRadius: BorderRadius.circular(30),
              ),
            ),
            //Barra de busqueda en el menu principal.
            Container(
              margin: EdgeInsets.symmetric(vertical: 25),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Buscar el profesional",
                  icon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Card(
                      elevation: 20,
                      color: Color(0xFF02efb8),
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(50),
                        onTap: () {},
                        child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Stack(
                              children: <Widget>[
                                SizedBox(
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Opacity(
                                        opacity: 0,
                                        child: RaisedButton(onPressed: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                PageSolicitud(),
                                          ));
                                        }))),
                                Center(
                                  child: Text("Baby Sister"),
                                )
                              ],
                            )),
                      )),
                  Card(
                      elevation: 20,
                      color: Color(0xFF9afee7),
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(50),
                        onTap: () {},
                        child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Stack(
                              children: <Widget>[
                                SizedBox(
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Opacity(
                                        opacity: 0,
                                        child: RaisedButton(onPressed: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                PageSolicitud(),
                                          ));
                                        }))),
                                Center(
                                  child: Text("Eléctrico"),
                                )
                              ],
                            )),
                      )),
                  Card(
                    elevation: 20,
                    color: Color(0xFF9afee7),
                    child: const Center(child: Text('Electromecánico')),
                  ),
                  Card(
                    elevation: 20,
                    color: Color(0xFF02efb8),
                    child: const Center(child: Text('Enfermería')),
                  ),
                  Card(
                    elevation: 20,
                    color: Color(0xFF02efb8),
                    child: const Center(child: Text('Gásfiter')),
                  ),
                  Card(
                    elevation: 20,
                    color: Color(0xFF9afee7),
                    child: const Center(child: Text('Informático')),
                  ),
                  Card(
                    elevation: 20,
                    color: Color(0xFF9afee7),
                    child: const Center(child: Text('Kinesiólogo')),
                  ),
                  Card(
                    elevation: 20,
                    color: Color(0xFF02efb8),
                    child: const Center(child: Text('Mecánico')),
                  ),
                  Card(
                    elevation: 20,
                    color: Color(0xFF02efb8),
                    child: const Center(child: Text('Pedagogía básica')),
                  ),
                  Card(
                    elevation: 20,
                    color: Color(0xFF9afee7),
                    child: const Center(child: Text('Turismo')),
                  ),
                ],
              ),
            ),
            //_getDrawerItemWidget(_selectDrawerItem),
          ],
        ));
  }
}
