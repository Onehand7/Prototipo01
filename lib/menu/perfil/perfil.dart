import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PerfilPage extends StatefulWidget {
  @override
  _PerfilPage createState() => new _PerfilPage();
}

class _PerfilPage extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {

  @override
  Size get preferredSize => Size(double.minPositive, 250);
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        decoration: BoxDecoration(
          color:  Colors.redAccent,
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              blurRadius: 20,
              offset: Offset(0, 0)
            ),
          ]
        ),
      ),
     
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override 
  Path getClip (Size size){
    Path p = Path();

    p.lineTo(0, size.height-70);

    p.lineTo(size.width, size.height);

    p.lineTo(size.width, 0);

    p.close();

    return p;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return true;
  }
}