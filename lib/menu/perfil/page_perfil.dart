import 'package:flutter/material.dart';

class PagePerfil extends StatefulWidget {
  @override
  _PagePerfil createState() => new _PagePerfil();
}

class _PagePerfil extends State<PagePerfil> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil del Pro"),
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
                      title: Text("Certificado"),
                    )
                  ],
                )
              ),
            ),
          ),
        ],
        overflow: Overflow.visible,
      ),
    );
  }
}
