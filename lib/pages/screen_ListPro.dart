import 'package:OneHand/constantes.dart';
import 'package:OneHand/models/messege_model.dart';
import 'package:OneHand/pages/screen_Menu_Principal.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListaProfesionales extends StatefulWidget {
  String user;
  ListaProfesionales(this.user);

  @override
  _ListaProfesionalesState createState() => _ListaProfesionalesState();
}

class _ListaProfesionalesState extends State<ListaProfesionales> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OneHand"),
        centerTitle: true,
        backgroundColor: colorBlue,
      ),
      body: cuerpo(),
    );
  }
}

class cuerpo extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
    var size = MediaQuery.of(context).size;
    String mensaje = "";
    String user = "Cliente";
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
                                  color: Color(0xFF2df03f),
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
                                                          if (user ==
                                                              "Cliente") {
                                                            print(user);
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: (context) =>
                                                                        ScreenMenuPrincipal(
                                                                            user)));
                                                          }
                                                        },
                                                        child:
                                                            Text("Finalizar"))
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
