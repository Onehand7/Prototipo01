import 'package:OneHand/Screen_profesional/chat/page_chat.dart';
import 'package:flutter/material.dart';
import 'package:OneHand/Screen_profesional/Solicitudes/lista_solicitud.dart';
import 'package:OneHand/Screen_profesional/menu_principal.dart';
import 'package:OneHand/Screen_profesional/perfil/mi_perfil.dart';
import 'package:OneHand/menuLateral/acercade.dart';
import 'package:OneHand/menuLateral/atencionCliente.dart';
import 'package:OneHand/menuLateral/confi.dart';
import 'package:OneHand/menuLateral/noticias.dart';

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
          title: Text("Menu del profesional"),
          titleSpacing: 80,
          backgroundColor: Color(0xFF2df03f),
        ),
        //barra lateral del menu principal
        //cuerpo del menu principal
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height * .35,
              decoration: BoxDecoration(
                color: Color(0xFF4cd262),
                //borderRadius: BorderRadius.circular(30),
              ),
            ),
            ListView(
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.all(15),
                    elevation: 10,
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                          title: Text('Certificación'),
                          subtitle: Text(
                              'Consigue el certificado de seguridad de forma gratuita'),
                          leading: Icon(Icons.brightness_auto_rounded),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                                onPressed: () => {}, child: Text('Aceptar')),
                            FlatButton(
                                onPressed: () => {}, child: Text('Cancelar'))
                          ],
                        )
                      ],
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.all(15),
                    elevation: 10,
                    child: Column(
                      children: [
                        ListTile(
                            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                            title: Text('Chat'),
                            subtitle:
                                Text('Revisa tus conversaciones pendientes'),
                            leading: Icon(
                              Icons.chat_bubble,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          PageChat(data: Data(text: "Chat"))));
                                },
                                child: Text('Entrar')),
                          ],
                        )
                      ],
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.all(15),
                    elevation: 10,
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                          title: Text('Solicitudes'),
                          subtitle:
                              Text('Se mostraran tus solicitudes a responder'),
                          leading: Icon(Icons.article_outlined),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          ListaSolicitud(
                                              data:
                                                  Data(text: "Solicitudes "))));
                                },
                                child: Text('Entrar')),
                          ],
                        )
                      ],
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.all(15),
                    elevation: 10,
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                          title: Text('Pedir un servicio proximamente..'),
                          subtitle: Text(
                              'Estamos trabajando para te tengan la mejor experiencia.'),
                          leading: Icon(Icons.brightness_auto_rounded),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                                onPressed: () => {},
                                child: Text('Proximamente'))
                          ],
                        )
                      ],
                    )),
              ],
            )
          ],
        ));
  }
}
