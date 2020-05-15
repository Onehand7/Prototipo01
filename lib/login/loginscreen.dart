import 'package:flutter/material.dart';
import 'package:proto01/menu/menu_principal.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (context) => LoginScreen(),
    );
  }

  @override
  _LoginScreen createState() => new _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  GlobalKey<FormState> _key = GlobalKey();

  RegExp emailRegExp =
      new RegExp(r'^\w+[\w-\.]*\@\w+((-\w+)|(\w*))\.[a-z]{2,3}$');
  RegExp contRegExp = new RegExp(r'^([1-zA-Z0-1@.\s]{1,255})$');
  String _correo;
  String _contrasena;
  String mensaje = '';

  bool _logueado = false;

  // Map data;/////////////////////////////
  // List cuentasData;

  @override
  void initState() {
    super.initState();
    //getUsuarios();//////////////////////////////
    controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
  }

  dispose() {
    // Es importante SIEMPRE realizar el dispose del controller.
    controller.dispose();
    super.dispose();
  }


  /////////////////////////////////////////////////////////
  // getUsuarios() async {
  //   http.Response respuesta =  await http.get(Uri.encodeFull("http://localhost:120/api/cliente"));
  //   //debugPrint(respuesta.body);
  //   data = json.decode(respuesta.body);
  //   setState(() {
  //     cuentasData= data['cuenta'];
  //   });
  // }
  /////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _logueado ? MenuPagina(mensaje: mensaje) : loginForm(),
    );
  }

  Widget loginForm() {
    return Container(
      decoration: new BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/imageFondo.jpeg'),fit: BoxFit.cover,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           SizedBox(
            height: 0.0,
          ),
          Flexible(
            flex: 2,
            child: SafeArea(
              child: FractionallySizedBox(
                widthFactor: 0.7,
                child: Image.asset('assets/avatar-icon-png-8.jpg'),
              ),
            ),
          ),
          Container(
            //width: 100.0, //size.width * .6,
            child: Form(
              key: _key,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    validator: (text) {
                      if (text.length == 0) {
                        return "Este campo correo es requerido";
                      } else if (!emailRegExp.hasMatch(text)) {
                        return "El formato para correo no es correcto";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    maxLength: 50,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Ingrese su Correo',
                      labelText: 'Correo',
                      counterText: '',
                      icon: Icon(Icons.email,
                          size: 32.0, color: Colors.blue[800]),
                    ),
                    onSaved: (text) => _correo = text,
                  ),
                  TextFormField(
                    validator: (text) {
                      if (text.length == 0) {
                        return "Este campo contraseña es requerido";
                      } else if (text.length <= 5) {
                        return "Su contraseña debe ser al menos de 5 caracteres";
                      } else if (!contRegExp.hasMatch(text)) {
                        return "El formato para contraseña no es correcto";
                      }else if (text != "dracma12") {
                        return "Correo y/o Contraseña incorrectas";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    maxLength: 20,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Ingrese su Contraseña',
                      labelText: 'Contraseña',
                      counterText: '',
                      icon:
                          Icon(Icons.lock, size: 32.0, color: Colors.blue[800]),
                    ),
                    obscureText: true,
                    onSaved: (text) => _contrasena = text,
                  ),
                  IconButton(
                    onPressed: () {
                      if (_key.currentState.validate()) {
                        _key.currentState.save();
                        //Aqui se llamaria a su API para hacer el login
                        setState(() {
                          _logueado = true;
                        });
                        mensaje = 'Gracias \n $_correo \n $_contrasena';
//                      Una forma correcta de llamar a otra pantalla
//                      Navigator.of(context).push(HomeScreen.route(mensaje));
                      }
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 42.0,
                      color: Colors.blue[800],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedLogo extends AnimatedWidget {
  // Maneja los Tween estáticos debido a que estos no cambian.
  static final _opacityTween = Tween<double>(begin: 0.1, end: 1.0);
  static final _sizeTween = Tween<double>(begin: 0.0, end: 150.0);

  AnimatedLogo({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Opacity(
      opacity: _opacityTween.evaluate(animation),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: _sizeTween.evaluate(animation), // Aumenta la altura
        width: _sizeTween.evaluate(animation), // Aumenta el ancho
        child: FlutterLogo(),
      ),
    );
  }
}
