import 'package:OneHand/Login_Principal/Componentes_login/rounded_button.dart';
import 'package:flutter/material.dart';

class Screen_cotizacion extends StatefulWidget {
  @override
  _Screen_cotizacionState createState() => _Screen_cotizacionState();
}

class _Screen_cotizacionState extends State<Screen_cotizacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                        press: () {},
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
                        press: () {},
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
