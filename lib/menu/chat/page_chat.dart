import 'package:flutter/material.dart';
import 'package:proto01/menu/menu_principal.dart';

class PageChat extends StatefulWidget {
  final Data data;
  PageChat({this.data});
  @override
  _PageChat createState() => new _PageChat(data2: data);
}

class _PageChat extends State<PageChat> {
  final Data data2;
  _PageChat({this.data2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MenuPagina(
                  mensaje: null,
                ),
              ));
            }),
        title: Text("Chat"),
        titleSpacing: 100,
        backgroundColor: Colors.orangeAccent,
      ),
      //drawer: PageDrawer(),
      body: Center(child: Text("CHAT")),
    );
  }
}
