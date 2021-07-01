import 'package:OneHand/constantes.dart';
import 'package:OneHand/pages/screen_NewSolicitud.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:OneHand/Screen_cliente/menu/Inicio.dart';

// ignore: must_be_immutable
class ScreenMenuPrincipal extends StatefulWidget {
  static String id = "Screen_Menu_Principal";
  String user;
  ScreenMenuPrincipal(this.user);
  @override
  _ScreenMenuPrincipalState createState() => _ScreenMenuPrincipalState();
}

class _ScreenMenuPrincipalState extends State<ScreenMenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Onehand"),
          titleSpacing: 80,
          centerTitle: true,
          backgroundColor: colorBlue,
        ),
        drawer: NewDrawer(),
        body: (widget.user) == "Cliente"
            ? _menuCliente(context)
            : _menuTecnico(context),
        bottomNavigationBar: _curvedNavigationBar(),
      ),
    );
  }
}

Widget _menuCliente(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return Stack(
    children: <Widget>[
      Container(
        height: size.height,
        decoration: BoxDecoration(
          color: colorBlue,
          //borderRadius: BorderRadius.circular(30),
        ),
      ),

      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            _buttonServicios(
                "Baby Sister", AssetImage("assets/icono_babySister.jpg")),
            _buttonServicios(
                "Eléctrico", AssetImage("assets/icono_electrico.png")),
            _buttonServicios("Electromecánico",
                AssetImage("assets/icono_electromecanico.png")),
            _buttonServicios(
                "Enfermería", AssetImage("assets/icono_enfermera.png")),
            _buttonServicios(
                "Gásfiter", AssetImage("assets/icono_plomero.png")),
            _buttonServicios(
                "Informática", AssetImage("assets/icono_informatica.png")),
            _buttonServicios(
                "Kinesiólogo", AssetImage("assets/icono_kinesiologo.jpg")),
            _buttonServicios(
                "Mecánico", AssetImage("assets/icono_mecanica.png")),
            _buttonServicios(
                "Pedagogía básica", AssetImage("assets/icono_pedagogia.png")),
            _buttonServicios("Turismo", AssetImage("assets/icono_turismo.png")),
          ],
        ),
      ),
      //_getDrawerItemWidget(_selectDrawerItem),
    ],
  );
}

Widget _menuTecnico(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return Stack(
    children: <Widget>[
      Container(
        height: size.height,
        decoration: BoxDecoration(
          color: colorBlue,
          //borderRadius: BorderRadius.circular(30),
        ),
      ),
      ListView(
        children: <Widget>[
          _buttonSelectTecnico(
              Icon(Icons.brightness_auto_rounded),
              Text("Certificación"),
              Text("Consigue el certificado de seguridad de forma gratuita")),
          _buttonSelectTecnico(Icon(Icons.chat_bubble), Text("Chat"),
              Text("Revisa tus conversaciones pendientes")),
          _buttonSelectTecnico(
              Icon(Icons.article_outlined),
              Text("Solicitudes"),
              Text("Se mostraran tus solicitudes a responder")),
          _buttonSelectTecnico(
            Icon(Icons.auto_awesome),
            Text("Premium"),
            Text("Hazte premium y obtendrás mas beneficios."),
          ),
        ],
      )
      //_getDrawerItemWidget(_selectDrawerItem),
    ],
  );
}

Widget _curvedNavigationBar() {
  return CurvedNavigationBar(
    index: 0,
    height: 60.0,
    items: <Widget>[
      Icon(
        Icons.book,
        size: 33.0,
      ),
      Icon(
        Icons.home,
        size: 33.0,
      ),
      Icon(
        Icons.forum,
        size: 33.0,
      ),
    ],
    color: Colors.white,
    buttonBackgroundColor: Colors.white,
    backgroundColor: colorBlue,
    animationCurve: Curves.easeInOut,
    animationDuration: Duration(milliseconds: 600),
  );
}

// ignore: camel_case_types
class _buttonSelectTecnico extends StatelessWidget {
  final Icon icons;
  final Text label;
  final Text subtitle;

  _buttonSelectTecnico(this.icons, this.label, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(10),
        elevation: 5,
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: label,
              subtitle: subtitle,
              leading: icons,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(onPressed: () => {}, child: Text('Entrar')),
              ],
            )
          ],
        ));
  }
}

// ignore: camel_case_types
class _buttonServicios extends StatelessWidget {
  final String label;
  final AssetImage iconosService;
  _buttonServicios(this.label, this.iconosService);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: iconosService,
          ),
        ),
        child: FlatButton(
          padding: EdgeInsets.all(0.0),
          child: null,
          onPressed: () {
            switch (label) {
              case "Baby Sister":
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScreenNewSolicitud(label),
                ));
                break;
              case "Eléctrico":
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScreenNewSolicitud(label),
                ));
                break;
              case "Electromecánico":
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScreenNewSolicitud(label),
                ));
                break;
              case "Enfermería":
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScreenNewSolicitud(label),
                ));
                break;
              case "Gásfiter":
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScreenNewSolicitud(label),
                ));
                break;
              case "Informática":
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScreenNewSolicitud(label),
                ));
                break;
              case "Kinesiólogo":
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScreenNewSolicitud(label),
                ));
                break;
              case "Mecánico":
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScreenNewSolicitud(label),
                ));
                break;
              case "Pedagogía básica":
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScreenNewSolicitud(label),
                ));
                break;
              case "Turismo":
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScreenNewSolicitud(label),
                ));
                break;

              default:
            }
          },
        ),
      ),
    );
  }
}
