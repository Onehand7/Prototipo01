import 'package:OneHand/Login_Principal/Componentes_login/rounded_button.dart';
import 'package:OneHand/Screen_cliente/menu/Inicio.dart';
import 'package:OneHand/Screen_cliente/menu/menu_principal.dart';
import 'package:flutter/material.dart';
import 'package:OneHand/Screen_cliente/menu/perfil/page_perfil.dart';
import 'package:OneHand/models/messege_model.dart';
import 'package:OneHand/models/user_model.dart';
import 'package:OneHand/Screen_cliente/menu/chat/conversacion.dart';

class PageListaProfesionales extends StatefulWidget {
  @override
  _PageListaProfesionales createState() => new _PageListaProfesionales();
}

class _PageListaProfesionales extends State<PageListaProfesionales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de profesionales"),
        titleSpacing: 30,
        backgroundColor: Colors.orangeAccent,
      ),
      body: cuerpo(),
    );
  }
}

class cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String mensaje = "";
    return ListView.builder(
        itemCount: profesionales.length,
        itemBuilder: (_, int index) {
          final chat = chats[index];
          final pro = profesionales[index];
          return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(15),
              elevation: 10,

              // Dentro de esta propiedad usamos ClipRRect
              child: ClipRRect(
                // Los bordes del contenido del card se cortan usando BorderRadius
                borderRadius: BorderRadius.circular(30),

                // EL widget hijo que será recortado segun la propiedad anterior
                child: Column(
                  children: <Widget>[
                    // Usamos el widget Image para mostrar una imagen
                    Image(
                      // Como queremos traer una imagen desde un url usamos NetworkImage
                      image: NetworkImage(pro.image),
                    ),

                    // Usamos Container para el contenedor de la descripción
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text("(56)"),
                              FlatButton(
                                  onPressed: () => {
                                        showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                                  title:
                                                      Text("Solicitud enviada"),
                                                  content: Text(
                                                      "Otros profesionales están listo para enviarte una cotización"),
                                                  actions: [
                                                    FlatButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Text(
                                                            "Seguir buscando")),
                                                    FlatButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .push(
                                                                  MaterialPageRoute(
                                                            builder: (context) =>
                                                                MenuPagina(
                                                                    mensaje:
                                                                        mensaje),
                                                          ));
                                                        },
                                                        child: Text("Cerrar"))
                                                  ],
                                                ))
                                      },
                                  child: Text("Enviar solicitud"))
                            ],
                          ),
                          ListTile(
                            title: Text(pro.sender.name),
                            leading: Icon(Icons.face),
                          ),
                          ListTile(
                            title: Text("Electricista-Plomero"),
                            leading: Icon(Icons.build),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ));
          // return Container(
          //   height: size.height * .35,
          //   width: size.width * .95,
          //   padding: EdgeInsets.symmetric(),
          //   margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(15),
          //     color: Colors.lightBlue[100],
          //   ),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Row(
          //         children: [
          //           Icon(
          //             Icons.account_circle,
          //             size: 70,
          //           ),
          //           Icon(
          //             Icons.star,
          //             color: Colors.yellow,
          //           ),
          //           Icon(
          //             Icons.star,
          //             color: Colors.yellow,
          //           ),
          //           Icon(
          //             Icons.star,
          //             color: Colors.yellow,
          //           ),
          //           Icon(
          //             Icons.star,
          //             color: Colors.yellow,
          //           ),
          //           Icon(
          //             Icons.star,
          //             color: Colors.yellow,
          //           ),
          //           Text("(56)")
          //         ],
          //       ),
          //       Divider(),
          //       Row(
          //         children: [
          //           Icon(Icons.face),
          //           Text(pro.sender.name),
          //         ],
          //       ),
          //       Row(
          //         children: [Icon(Icons.build), Text(pro.text)],
          //       ),
          //       Row(
          //         children: [
          //           Icon(Icons.brightness_auto),
          //           Text("Certificado"),
          //           RaisedButton(
          //             onPressed: () {
          //               Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                       builder: (context) => Conversacion(
          //                             user: chat.sender,
          //                           )));
          //             },
          //             child: Text("Confirmar"),
          //           )
          //         ],
          //       ),
          //     ],
          //   ),
          // );
        });
  }
}

/* Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Cristopher Guevara"),
                              subtitle: Text("Técnico en computación"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Felipe Cortes"),
                              subtitle:
                                  Text("Electricista - Técnico - Mecanico"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Ramón Alberto Luces"),
                              subtitle: Text("Pintor - Técnico - Albañil"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Jose Perez"),
                              subtitle: Text("Técnico - Carpintero"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Ramón Alberto Luces"),
                              subtitle: Text("Pintor - Técnico - Albañil"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Julio Ostty"),
                              subtitle: Text("Técnico - Mudanzas - Pintor"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Oscar González"),
                              subtitle:
                                  Text("Técnico - Plomero - Electricista"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Patricio Espinoza"),
                              subtitle:
                                  Text("Técnico - Electricista - Seguridad"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Sebastian Arenas"),
                              subtitle: Text("Técnico en computación"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Matias Tapia"),
                              subtitle:
                                  Text("Técnico - Electricista - Seguridad"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 352,
                        height: 72,
                        child: RaisedButton(
                            color: Colors.white,
                            child: ListTile(
                              leading: Icon(
                                Icons.account_circle,
                                size: 40,
                              ),
                              title: Text("Javiera Jeraldo"),
                              subtitle: Text("Técnico - Mudanzas - Pintor"),
                              trailing: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PagePerfil(),
                              ));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ), */
