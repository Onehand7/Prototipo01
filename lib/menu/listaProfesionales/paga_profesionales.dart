import 'package:flutter/material.dart';
import 'package:OneHand/menu/perfil/page_perfil.dart';

class PageListaProfesionales extends StatefulWidget {
  @override
  _PageListaProfesionales createState() => new _PageListaProfesionales();
}

class _PageListaProfesionales extends State<PageListaProfesionales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de profesionales"),
        titleSpacing: 30,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Cristopher Guevara"),
                              subtitle: Text("Técnico en computación"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Felipe Cortes"),
                              subtitle:
                                  Text("Electricista - Técnico - Mecanico"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Ramón Alberto Luces"),
                              subtitle: Text("Pintor - Técnico - Albañil"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Jose Perez"),
                              subtitle: Text("Técnico - Carpintero"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Ramón Alberto Luces"),
                              subtitle: Text("Pintor - Técnico - Albañil"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Julio Ostty"),
                              subtitle: Text("Técnico - Mudanzas - Pintor"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Oscar González"),
                              subtitle:
                                  Text("Técnico - Plomero - Electricista"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Patricio Espinoza"),
                              subtitle:
                                  Text("Técnico - Electricista - Seguridad"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Sebastian Arenas"),
                              subtitle: Text("Técnico en computación"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Matias Tapia"),
                              subtitle:
                                  Text("Técnico - Electricista - Seguridad"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Javiera Jeraldo"),
                              subtitle: Text("Técnico - Mudanzas - Pintor"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
