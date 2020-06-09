import 'package:flutter/material.dart';

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
                child: Text("Escriba el titulo de la solicitud")
                )
            ],
          )
        ],
      ),
    );
  }
}

