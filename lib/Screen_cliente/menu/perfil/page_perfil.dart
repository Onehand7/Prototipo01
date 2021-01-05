import 'package:flutter/material.dart';

class PagePerfil extends StatefulWidget {
  @override
  _PagePerfil createState() => new _PagePerfil();
}
int _currentIndex = 0;

class _PagePerfil extends State<PagePerfil> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil del Profesional"),
        titleSpacing: 30,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            decoration: BoxDecoration(
              color: Colors.orange[200],
            ),
          ),
          Positioned(
            top: 50,
            left: 35,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Card(
                color: Colors.white,
                elevation: 20,
                child: Container(
                  height: 200,
                  width: 280,
                  //color: Colors.greenAccent,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 45),
                        child: ListTile(
                          title: Text(
                            "Cristopher Guevara",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          subtitle: Text("Técnico en Computación"),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 78,
                            width: 140,
                            //color: Colors.redAccent,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
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
                                    ],
                                  ),
                                  Text("5.0")
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 78,
                            width: 140,
                            //color: Colors.blueAccent,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "23",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text("Servicios")
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 130,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 5)),
              child: CircleAvatar(
                child: Text(
                  "C",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300, left: 15),
            child: Card(
              elevation: 20,
              child: Container(
                  //color: Colors.blueAccent,
                  height: double.infinity,
                  width: 320,
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.brightness_auto,
                          color: Colors.blue,
                        ),
                        title: Text(
                          "Certificado",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.work),
                        title: Text("Computadoras - Desarrollo de App"),
                      ),
                      Divider(
                        height: 10,
                        indent: 15,
                        endIndent: 20,
                        thickness: 1,
                      ),
                      ListTile(
                        title: Text("Acerca del profesional"),
                        subtitle: Text(
                            "está capacitado para administrar redes de datos Lan, administrar sistemas operativos para servidores y desarrollar sistemas web y aplicaciones de escritorio, asegurando la continuidad operativa de la Organización en estos ámbitos. Posee un alto compromiso con el medio ambiente, la prevención como parte fundamental de su quehacer productivo, impulsando actitudes y habilidades que le permiten integrarse al mundo laboral como un profesional íntegro, comprometido con los valores que conciben su formación como un aporte a la sociedad, desarrollando su capacidad profesional innovadora, creativa y emprendedora."),
                      ),
                      Divider(
                        height: 10,
                        indent: 15,
                        endIndent: 20,
                        thickness: 1,
                      ),
                      ListTile(
                        title: Text("Comentarios"),
                      ),
                      ListTile(
                        title: Row(
                          children: <Widget>[
                            Text("Por: Pamela B"),
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
                              Icons.star_border,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                        subtitle: Text("Excelente profesiona, lo recomiendo"),
                      ),
                      Divider(
                        height: 10,
                        indent: 15,
                        endIndent: 20,
                        thickness: 1,
                      ),
                      ListTile(
                        title: Row(
                          children: <Widget>[
                            Text("Por: Carlos A"),
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
                          ],
                        ),
                        subtitle: Text(
                            "100% recomendable, trabajo muy bien es muy amable y educado."),
                      ),
                    ],
                  )),
            ),
          ),
        ],
        overflow: Overflow.visible,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        fixedColor: Colors.orangeAccent,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            title: Text("Cancelar"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pan_tool),
            title: Text("Aceptar"),
          )
        ],
      ),
    );
  }
  // metodo para las pestañas de abajo del dispositivo
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
