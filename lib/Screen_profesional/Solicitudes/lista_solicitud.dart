import 'package:OneHand/Screen_profesional/Solicitudes/Solicitud_Enviadas/Solicitud_enviadas.dart';
import 'package:flutter/material.dart';
import 'package:OneHand/Screen_profesional/menu_principal.dart';

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
                builder: (context) => MenuPagina_profesional(
                  mensaje: null,
                ),
              ));
            }),
        //se pasa el titulo de Menu principal a lista solicitud
        title: Text("${data2.text}"),
        titleSpacing: 100,
        backgroundColor: Color(0xFF4cd262),
      ),
      //drawer: PageDrawer(),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SizedBox(
                    child: RaisedButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Solicitud_Enviadas()));
                      },
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              Icons.branding_watermark,
                              size: 60,
                            ),
                            title: Text("Instalación electrica"),
                            subtitle: Text(
                                "Necesito realizar una instalacion electrica en mi casa"),
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
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(15),
                elevation: 10,
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
