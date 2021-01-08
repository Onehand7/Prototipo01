import 'package:OneHand/Screen_profesional/chat/conversacion.dart';
import 'package:flutter/material.dart';

class Solicitud_Enviadas extends StatefulWidget {
  @override
  _Solicitud_EnviadasState createState() => _Solicitud_EnviadasState();
}

class _Solicitud_EnviadasState extends State<Solicitud_Enviadas> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Conversacion(),
          ));
        },
        child: Icon(Icons.chat_bubble_outline),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: size.height * .35,
                decoration: BoxDecoration(
                  color: Color(0xFFcbedf1),
                  //borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text("FOTO"),
                ),
              ),
              ListTile(
                //contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                title: Text('Intalación electrica'),
                leading: Icon(
                  Icons.build_circle,
                  size: 30,
                ),
              ),
              ListTile(
                //contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                title: Text('Descripción'),
                subtitle: Text(
                    "Necesito realizar una instalacion electrica en mi casa, es una casa de dos pisos con intalación tambien en el jardin trasero"),
                leading: Icon(
                  Icons.edit,
                  size: 30,
                ),
              ),
              ListTile(
                //contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                title: Text('Marcela Rojas'),
                leading: Icon(
                  Icons.face,
                  size: 30,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
