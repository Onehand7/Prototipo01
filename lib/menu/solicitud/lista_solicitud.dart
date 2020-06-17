import 'package:flutter/material.dart';
import 'package:proto01/menu/menu_principal.dart';

class ListaSolicitud extends StatefulWidget {
  final Data data;
  ListaSolicitud({this.data});
  @override
  _ListaSolicitud createState() => new _ListaSolicitud(data2: data);
}

class _ListaSolicitud extends State<ListaSolicitud> {
  final Data data2;
  _ListaSolicitud({this.data2});
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
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SizedBox(
                    //width: ,
                    //height: ,
                    child: RaisedButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              Icons.branding_watermark,
                              size: 60,
                            ),
                            title: Text("Computación"),
                            subtitle: Text(
                                "Necesito una revision para mi pc, anda..."),
                            trailing: Icon(Icons.more_vert),
                          ),
                          Divider(
                            height: 10,
                            indent: 0,
                            endIndent: 20,
                            thickness: 1,
                          ),
                          Row(
                            children: <Widget>[
                              Text("Estado:"),
                              Text(
                                "Activo",
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SizedBox(
                    //width: ,
                    //height: ,
                    child: RaisedButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              Icons.branding_watermark,
                              size: 60,
                            ),
                            title: Text("Gásfiter"),
                            subtitle: Text(
                                "Tengo una fuga en mi califont, es urge..."),
                            trailing: Icon(Icons.more_vert),
                          ),
                          Divider(
                            height: 10,
                            indent: 0,
                            endIndent: 20,
                            thickness: 1,
                          ),
                          Row(
                            children: <Widget>[
                              Text("Estado:"),
                              Text(
                                "Finalizado",
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
