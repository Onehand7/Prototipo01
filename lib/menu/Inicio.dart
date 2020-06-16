import 'package:flutter/material.dart';
import 'package:proto01/menu/solicitud/page_solicitud.dart';
class PageInicio extends StatefulWidget {
  @override
  _PageInicio createState() => new _PageInicio();
}


class _PageInicio extends State<PageInicio> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            decoration: BoxDecoration(
              color: Colors.orange[200],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 25),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(26.5)),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Buscar",
                icon: Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                    elevation: 20,
                    color: Colors.amber[600],
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
                                      child: RaisedButton(
                                        onPressed: (){
                                          Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) => PageSolicitud(),
                                            ));
                                        }
                                      )
                                  )
                              ),
                              Center(
                                child: Text("Baby Sister"),
                              )
                            ],
                          )),
                    )),
                Card(
                  elevation: 20,
                  color: Colors.amber[500],
                  child: const Center(child: Text('Eléctrico')),
                ),
                Card(
                  elevation: 20,
                  color: Colors.amber[100],
                  child: const Center(child: Text('Electromecánico')),
                ),
                Card(
                  elevation: 20,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Enfermería')),
                ),
                Card(
                  elevation: 20,
                  color: Colors.amber[500],
                  child: const Center(child: Text('Gásfiter')),
                ),
                Card(
                  elevation: 20,
                  color: Colors.amber[100],
                  child: const Center(child: Text('Informático')),
                ),
                Card(
                  elevation: 20,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Kinesiólogo')),
                ),
                Card(
                  elevation: 20,
                  color: Colors.amber[500],
                  child: const Center(child: Text('Mecánico')),
                ),
                Card(
                  elevation: 20,
                  color: Colors.amber[100],
                  child: const Center(child: Text('Pedagogía básica')),
                ),
                Card(
                  elevation: 20,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Turismo')),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}