import 'package:flutter/material.dart';
import 'package:OneHand/menu/listaProfesionales/paga_profesionales.dart';

class PageSolicitud extends StatefulWidget {
  @override
  _PageSolicitud createState() => new _PageSolicitud();
}

class _PageSolicitud extends State<PageSolicitud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nueva Solicitud"),
        titleSpacing: 60,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Text(
                    "Escriba el título de la solicitud",
                    style: TextStyle(fontSize: 25),
                  )),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                /* decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26.5)), */
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: "Nombre su solicitud",
                      labelText: 'Nueva solicitud',
                      counterText: '',
                      prefixIcon: Icon(Icons.border_color)),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Text(
                    "Describa su problema",
                    style: TextStyle(fontSize: 25),
                  )),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                /* decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26.5)), */
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: "Nombre su solicitud",
                      labelText: 'Escribe con detalle lo qué necesitas',
                      counterText: '',
                      prefixIcon: Icon(Icons.border_color)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text(
                    "*Recuerda que mientras mas detalles añadas mas rapido será encontrar un profesional."),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Text(
                    "Fotos del servicio",
                    style: TextStyle(fontSize: 25),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text(
                    "Puedes añadir fotos de tu galeria. Esto ayudara a los profesionales a entender su problema."),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: RaisedButton(
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text("Agregar foto"),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PageListaProfesionales(),
                    ));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text("Continuar"),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
