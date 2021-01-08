import 'package:flutter/material.dart';

class Screen_cotizacion extends StatefulWidget {
  @override
  _Screen_cotizacionState createState() => _Screen_cotizacionState();
}

class _Screen_cotizacionState extends State<Screen_cotizacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 25),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Buscar",
                icon: Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
          Positioned(
            //top: 10,
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                Card(
                  child: Center(child: Text("1")),
                ),
                Card(
                  child: Center(child: Text("2")),
                ),
                Card(
                  child: Center(child: Text("3")),
                ),
                Card(
                  child: Center(child: Text("4")),
                ),
                Card(
                  child: Center(child: Text("5")),
                ),
                Card(
                  child: Center(child: Text("6")),
                ),
                Card(
                  child: Center(child: Text("7")),
                ),
                Card(
                  child: Center(child: Text("8")),
                ),
                Card(
                  child: Center(child: Text("9")),
                ),
                Card(
                  child: Center(child: Text(",")),
                ),
                Card(
                  child: Center(child: Text("0")),
                ),
                Card(
                  child: Center(child: Icon(Icons.arrow_back_outlined)),
                ),
              ],
            ),
          ),
        ],
        overflow: Overflow.visible,
      ),
    );
  }
}
