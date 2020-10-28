import 'package:flutter/material.dart';
import 'package:OneHand/menu/chat/page_chat.dart';
import 'package:OneHand/menu/perfil/page_perfil.dart';
import 'package:OneHand/menu/solicitud/lista_solicitud.dart';

class PageBarraInferior extends StatefulWidget {
  @override
  _PageBarraInferior createState() => new _PageBarraInferior();
}

class _PageBarraInferior extends State<PageBarraInferior> {
  int _currentIndex = 0;
  Widget BarraInferior(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return null;
      case 1:
        return ListaSolicitud();
      case 2:
        return PageChat();
      case 3:
        return PagePerfil();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BarraInferior(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          _currentIndex = value;
          setState(() {});
        },
        fixedColor: Colors.orangeAccent,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Inicio"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text("Solicitudes"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            title: Text("Chat"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Mi Perfil"),
          )
        ],
      ),
    );
  }
}
