import 'package:OneHand/Login_Principal/Componentes_login/rounded_button.dart';
import 'package:OneHand/Screen_cliente/menu/menu_principal.dart';
import 'package:flutter/material.dart';

class Screen_cotizacion extends StatefulWidget {
  @override
  _Screen_cotizacionState createState() => _Screen_cotizacionState();
}

class _Screen_cotizacionState extends State<Screen_cotizacion> {
  @override
  Widget build(BuildContext context) {
    String mensaje = "";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF85ff8f),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(20),
                  elevation: 10,
                  child: Column(
                    children: [
                      Center(
                        child: Icon(Icons.assignment_outlined),
                      ),
                      Text("Aun no te envian una cotizacion"),
                      RoundedButton(
                        text: "Solicitar cotización",
                        press: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                      title: Text("Cotización Solicitada"),
                                      content: Text(
                                          "Otros profesionales están listo para enviarte una cotización"),
                                      actions: [
                                        FlatButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Volver")),
                                      ]));
                        },
                      )
                    ],
                  )),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(20),
                  elevation: 10,
                  child: Column(
                    children: [
                      Center(
                        child: Icon(Icons.assignment_outlined),
                      ),
                      Text("¿Quieres cerra esta solicitud?"),
                      Center(
                        child: Text(
                            "Cuando cierras una solicitud, estas indicando a todos los profesionales que la estas cerrando"),
                      ),
                      RoundedButton(
                        text: "Cerrar cotización",
                        press: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                      title: Text("Cotización cerrada"),
                                      content: Text(
                                          "Estas indicando que estas cerrando la solicitud a los demas profesionales"),
                                      actions: [
                                        FlatButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    MenuPagina(
                                                        mensaje: mensaje),
                                              ));
                                            },
                                            child: Text("Volver")),
                                      ]));
                        },
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
