import 'package:OneHand/constantes.dart';
import 'package:flutter/material.dart';
import 'package:OneHand/components/buttonGeneral.dart';

// ignore: must_be_immutable
class ScreenNewSolicitud extends StatefulWidget {
  String name;
  ScreenNewSolicitud(this.name);

  @override
  _ScreenNewSolicitudState createState() => _ScreenNewSolicitudState();
}

class _ScreenNewSolicitudState extends State<ScreenNewSolicitud> {
  @override
  void initState() {
    super.initState();
    print(widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onehand"),
        centerTitle: true,
        backgroundColor: colorBlue,
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            children: [
              Container(
                  height: 70,
                  child: Column(
                    children: [
                      Text(
                        "Nueva solicitud",
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.settings,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.name,
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  )),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              _textGeneral(
                labelText: "Título de la solicitud",
              ),
              _textFieldNuevaSolicitud(),
              SizedBox(
                height: 20,
              ),
              _textGeneral(
                labelText: "Detalles del servicio",
              ),
              _textFieldDetalleSolicitud(),
              SizedBox(
                height: 20,
              ),
              _textGeneral(
                labelText: "Fotos del servicio",
              ),
              Text(
                  "Puedes añadir fotos de tu galeria. esto ayudara a los técnicos a entender mejor tu problema."),
              SizedBox(
                height: 20,
              ),
              ButtonGeneral(
                labelText: "Añadir fotos",
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              ButtonGeneral(
                labelText: "Siguiente",
                color: colorBlue,
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget _textFieldNuevaSolicitud() {
  return _textFieldGeneral(
    labelText: "Nueva solicitud",
    icon: Icons.border_color,
    onChanged: (value) {},
  );
}

Widget _textFieldDetalleSolicitud() {
  return _textFieldGeneral(
    labelText: "Escriba con detalle lo qué necesitas",
    icon: Icons.border_color,
    maxline: 2,
    onChanged: (value) {},
  );
}

// ignore: camel_case_types
class _textFieldGeneral extends StatelessWidget {
  final String labelText;
  final Function onChanged;
  final IconData icon;
  final int maxline;
  const _textFieldGeneral(
      {this.labelText, this.onChanged, this.icon, this.maxline});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        maxLines: maxline,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: labelText,
            prefixIcon: Icon(icon)),
        onChanged: onChanged,
      ),
    );
  }
}

// ignore: camel_case_types
class _textGeneral extends StatelessWidget {
  final labelText;
  _textGeneral({this.labelText});

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      style: TextStyle(fontSize: 25.0),
    );
  }
}
