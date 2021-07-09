import 'package:OneHand/menuLateral/acercade.dart';
import 'package:OneHand/menuLateral/atencionCliente.dart';
import 'package:OneHand/menuLateral/confi.dart';
import 'package:OneHand/menuLateral/noticias.dart';
import 'package:OneHand/menuLateral/perfil.dart';
import 'package:flutter/material.dart';

class NewDrawer extends StatelessWidget {
  NewDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Drawer(
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
                  builder: (BuildContext context) => PageNoticias("Noticias")));
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
                  builder: (BuildContext context) =>
                      AtencionCliente("Atención al cliente")));
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
                  builder: (BuildContext context) =>
                      PageConfiguracion("Configuración")));
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
                  builder: (BuildContext context) =>
                      AcercadeOnehand("Acerca de onehand")));
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
    );
  }
}

Widget _listaDrawer(BuildContext context) {}

// ignore: camel_case_types
class listaDrawer extends StatelessWidget {
  final Text label;
  final Icon icon;
  final Function onPressed;

  listaDrawer(this.label, this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
      title: label,
      trailing: icon,
      onTap: onPressed,
    );
  }
}

class Data {
  String text;

  Data({this.text});
}
