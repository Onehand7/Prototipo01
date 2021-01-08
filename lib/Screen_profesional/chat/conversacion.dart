import 'package:OneHand/Screen_profesional/Cotizacion/Screen_Cotizacion.dart';
import 'package:OneHand/models/messege_model.dart';
import 'package:OneHand/models/user_model.dart';
import 'package:flutter/material.dart';

class Conversacion extends StatefulWidget {
  final User user;
  Conversacion({this.user});
  @override
  _ConversacionState createState() => _ConversacionState();
}

class _ConversacionState extends State<Conversacion> {
  /* List<String> mensajes = [
    "Hola, tengo un problema con mi computadora",
    "Hola buenas, digame cual es su problema",
    "El problema es que mi computadora anda lenta y se apaga",
  ]; */

  _buildMessage(Message message, bool isMe) {
    return Container(
      margin: isMe
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
          : EdgeInsets.only(top: 8.0, bottom: 8.0, right: 80.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      decoration: BoxDecoration(
        color: isMe ? Colors.blueAccent : Colors.lightBlue[200],
        borderRadius: isMe
            ? BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0))
            : BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message.time),
          Text(message.text),
        ],
      ),
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.photo), onPressed: null),
          Expanded(
              child: TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration:
                InputDecoration.collapsed(hintText: "Enviar un mensaje..."),
          )),
          IconButton(icon: Icon(Icons.send), onPressed: null)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "",
          //widget.user.name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text("Cotización actual: 0"),
              Text("     "),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Screen_cotizacion()));
                },
                child: Text(
                  "Cotizar",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: ListView.builder(
                  reverse: true,
                  itemCount: messages.length,
                  itemBuilder: (context, int index) {
                    final Message message = messages[index];
                    final bool isMe = message.sender.id == sebastian.id;
                    //final bool isMe = mensajes;
                    return _buildMessage(message, isMe);
                  }),
            ),
          ),
          _buildMessageComposer(),
        ],
      ),
    );
  }
}
