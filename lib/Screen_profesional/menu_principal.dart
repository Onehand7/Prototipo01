import 'package:flutter/material.dart';
import 'package:OneHand/Screen_cliente/menu/chat/page_chat.dart';
import 'package:OneHand/Screen_cliente/menu/perfil/perfil.dart';
import 'package:OneHand/Screen_cliente/menu/solicitud/page_solicitud.dart';
import 'package:OneHand/Screen_cliente/menu/solicitud/lista_solicitud.dart';
import 'package:OneHand/Screen_profesional/Inicio.dart';
import 'package:OneHand/Screen_profesional/perfil/mi_perfil.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class MenuPagina_profesional extends StatefulWidget {
  static Route<dynamic> route(String mensaje) {
    return MaterialPageRoute(
      builder: (context) => MenuPagina_profesional(mensaje: mensaje),
    );
  }

  final String mensaje;

  const MenuPagina_profesional({Key key, @required this.mensaje})
      : super(key: key);

  @override
  _MenuPagina createState() => new _MenuPagina();
}

class _MenuPagina extends State<MenuPagina_profesional>
    with SingleTickerProviderStateMixin {
  List data; /////////////////////////////
  List cuentasData;

  //VARIABLES
  String text;
  int _currentIndex = 0;
  int _selectDrawerItem = 0;
  String currentProfilePic = "assets/onehand.png";
  String otherProfilePic = "assets/onehand.png";

  void switchAccounts() {
    String picBackup = currentProfilePic;
    this.setState(() {
      currentProfilePic = otherProfilePic;
      otherProfilePic = picBackup;
    });
  }

  @override
  void initState() {
    super.initState();
    getUser();
  }

  getUser() async {
    http.Response response = await http.get('http://192.168.1.93:3000/');
    debugPrint(response.body);
    data = json.decode(response.body);
    setState(() {
      return data;
    });
  }

  _onSelectItem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  Widget BarraInferior(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return PageInicio(
            //data: Data(text: "OneHand"),
            );
      case 1:
      //return ListaSolicitud(data: Data(text: "Solicitudes "));
      case 2:
      //return PageChat(data: Data(text: "Chat"));
      case 3:
        return PageMiPerfil(
            //data: Data(text: "Mi Perfil"),
            );
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return new Scaffold(
      body: BarraInferior(_currentIndex),
      // descomentar _get para usar barra lateral, descomentar _children para barra inferior
      //_children[_currentIndex],
      //_getDrawerItemWidget(_selectDrawerItem),

      //Barra de navegacion inferior
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          _currentIndex = value;
          setState(() {});
        },
        fixedColor: Color(0xFF02efb8),
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

  // metodo para las pestañas de abajo del dispositivo
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class Data {
  String text;

  Data({this.text});
}
