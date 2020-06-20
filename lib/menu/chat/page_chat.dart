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
        title: Text("${data2.text}"),
        titleSpacing: 100,
        backgroundColor: Colors.orangeAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
      ),
      //drawer: PageDrawer(),
      body: BuildListView(context),
    );
  }

  ListView BuildListView(BuildContext context) {
    final List<String> listaNombre= <String>["Sebastian Arenas","Matias Tapia", "Javiera Jeraldo", "Alan Olivares","Jose Perez","Sara Bustamante", "Julian Castro","Luis Torres","Hector Villalobos","Daniel Basulto"];
    return ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: listaNombre.length,
        itemBuilder: (_, int index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.account_circle, size: 50,),
              title: Text("${listaNombre[index]}"),
              subtitle: Text("subtitle"),
              trailing:
                  IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
            ),
          );
        });
  }
}
