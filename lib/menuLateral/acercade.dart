import 'package:flutter/material.dart';
import 'package:proto01/menu/menu_principal.dart';

class AcercadeOnehand extends StatefulWidget {
  final Data data;
  AcercadeOnehand({this.data});
  @override
  _AcercadeOnehand createState() => new _AcercadeOnehand(data2: data);
}

class _AcercadeOnehand extends State<AcercadeOnehand> {
  final Data data2;
  _AcercadeOnehand({this.data2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${data2.text}"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: BuildAcercade(),
    );
  }

  Widget BuildAcercade() {
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("Terminos y condiciones"),
            trailing: Icon(
              Icons.assignment,
              size: 40,
            ),
            onTap: () {},
          ),
          Divider(
            height: 10,
            indent: 10,
            endIndent: 10,
            thickness: 1,
          ),
          ListTile(
            title: Text("Versión"),
            trailing: Text("1.0.3"),
            onTap: () {},
          ),
          Divider(
            height: 10,
            indent: 10,
            endIndent: 10,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
