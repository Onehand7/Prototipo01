import 'dart:convert';

import 'package:OneHand/Screen_cliente/menu/chat/conversacion.dart';
import 'package:OneHand/models/messege_model.dart';
import 'package:OneHand/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:OneHand/Screen_cliente/menu/menu_principal.dart';

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
        backgroundColor: Color(0xFF2df03f),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search_sharp), onPressed: () {})
        ],
      ),
      // ignore: missing_required_param
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
      ),
      //drawer: PageDrawer(),
      body: BuildListView(context),
    );
  }

  ListView BuildListView(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: chats.length,
        itemBuilder: (_, int index) {
          final chat = chats[index];
          return Card(
            elevation: 15,
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 50,
              ),
              title: Text(chat.sender.name),
              subtitle: Text(chat.text),
              trailing: Text(chat.time),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Conversacion(
                              user: chat.sender,
                            )));
              },
            ),
          );
        });
  }
}
