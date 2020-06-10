import 'package:flutter/material.dart';


class PagePerfil extends StatefulWidget {
  @override
  _PagePerfil createState() => new _PagePerfil();
}

class _PagePerfil extends State<PagePerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil del Pro"),
        titleSpacing: 30,
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }
}