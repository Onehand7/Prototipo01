import 'package:flutter/material.dart';
import 'package:OneHand/Screen_cliente/menu/solicitud/page_solicitud.dart';
import 'package:OneHand/Screen_cliente/menu/menu_principal.dart';
import 'package:OneHand/Screen_cliente/menu/perfil/mi_perfil.dart';
import 'package:OneHand/menuLateral/acercade.dart';
import 'package:OneHand/menuLateral/atencionCliente.dart';
import 'package:OneHand/menuLateral/confi.dart';
import 'package:OneHand/menuLateral/noticias.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constantes.dart';

class PageInicio extends StatefulWidget {
  final Data data;
  PageInicio({this.data});
  @override
  _PageInicio createState() => new _PageInicio(data2: data);
}

class _PageInicio extends State<PageInicio> {
  final Data data2;
  _PageInicio({this.data2});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${data2.text}",
          style: TextStyle(fontSize: 23.0),
        ),
        centerTitle: true,
        elevation: 0,
        titleSpacing: 80,
        //backgroundColor: kPrimaryColor,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: const <Color>[Colors.blueAccent, Colors.blue])),
        ),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      //barra lateral del menu principal

      //cuerpo del menu principal
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .35,
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              //borderRadius: BorderRadius.circular(30),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                _cardServicios("Baby Sister"),
                _cardServicios("Eléctrico"),
                _cardServicios("Electromecánico"),
                _cardServicios("Enfermería"),
                _cardServicios("Gásfiter"),
                _cardServicios("Informática"),
                _cardServicios("Kinesiólogo"),
                _cardServicios("Mecánico"),
                _cardServicios("Pedagogía básica"),
                _cardServicios("Turismo"),
              ],
            ),
          ),
          //_getDrawerItemWidget(_selectDrawerItem),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class _cardServicios extends StatelessWidget {
  final String label;
  _cardServicios(this.label);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 20,
        color: kPrimaryColor,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(50),
          onTap: () {},
          child: Padding(
              padding: EdgeInsets.all(0),
              child: Stack(
                children: <Widget>[
                  SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: Opacity(
                          opacity: 0,
                          child: RaisedButton(onPressed: () {
                            switch (label) {
                              case "Baby Sister":
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PageSolicitud(),
                                ));
                                break;
                              case "Eléctrico":
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PageSolicitud(),
                                ));
                                break;
                              case "Electromecánico":
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PageSolicitud(),
                                ));
                                break;
                              case "Enfermería":
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PageSolicitud(),
                                ));
                                break;
                              case "Gásfiter":
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PageSolicitud(),
                                ));
                                break;
                              case "Informática":
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PageSolicitud(),
                                ));
                                break;
                              case "Kinesiólogo":
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PageSolicitud(),
                                ));
                                break;
                              case "Mecánico":
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PageSolicitud(),
                                ));
                                break;
                              case "Pedagogía básica":
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PageSolicitud(),
                                ));
                                break;
                              case "Turismo":
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PageSolicitud(),
                                ));
                                break;

                              default:
                            }
                          }))),
                  Center(
                    child: Text(label),
                  )
                ],
              )),
        ));
  }
}
