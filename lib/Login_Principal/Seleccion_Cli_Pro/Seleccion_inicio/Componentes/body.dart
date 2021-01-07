import 'package:OneHand/Login_Principal/Bienvenida/Componentes/background.dart';
import 'package:OneHand/Login_Principal/Componentes_login/rounded_button.dart';
import 'package:OneHand/Login_Principal/Registro/registro.dart';
import 'package:OneHand/Login_Principal/Screen_login/Login_Cliente/login/loginscreen.dart';
import 'package:OneHand/Login_Principal/Screen_login/Login_Profesional/login/loginscreen.dart';
import 'package:OneHand/Login_Principal/login/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:OneHand/Login_Principal/Seleccion_Cli_Pro/Seleccion_inicio/Componentes/Select_Screen_inicio.dart';

import '../../../../constantes.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    //Este tamaño nos proporciona altura y anchura totales de nuestra pantalla
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/logo.png",
              height: size.height * 0.45,
            ),
            Text(
              "¿Como deseas iniciarse?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: size.height * 0.05),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Cliente",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen_Cliente();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Profesional",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen_Profesional();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
