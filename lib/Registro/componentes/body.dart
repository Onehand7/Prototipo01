import 'package:OneHand/Componentes_login/already_account.dart';
import 'package:OneHand/Componentes_login/rounded_button.dart';
import 'package:OneHand/Componentes_login/rounded_input_field.dart';
import 'package:OneHand/Componentes_login/rounded_password_field.dart';
import 'package:OneHand/Registro/componentes/background.dart';
import 'package:OneHand/Registro/componentes/divisor.dart';
import 'package:OneHand/login/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'icono_social.dart';

class Body extends StatelessWidget {
  TextEditingController userNombreTextEdittingController =
      new TextEditingController();
  TextEditingController userApellidoTextEdittingController =
      new TextEditingController();
  TextEditingController userTelefonoTextEdittingController =
      new TextEditingController();
  TextEditingController userCorreoTextEdittingController =
      new TextEditingController();
  TextEditingController userPasswordTextEdittingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Registro",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            // SvgPicture.asset(
            //   "assets/icons/signup.svg",
            //   height: size.height * 0.35,
            // ),
            // RoundedInputField(
            //   hintText: "Nombre",
            //   onChanged: (value) {},
            // ),
            // RoundedInputField(
            //   hintText: "Apellido",
            //   onChanged: (value) {},
            // ),
            // RoundedInputField(
            //   hintText: "Telefono",
            //   onChanged: (value) {},
            // ),
            // RoundedInputField(
            //   hintText: "Tu Correo",
            //   onChanged: (value) {},
            // ),
            // RoundedPasswordField(
            //   onChanged: (value) {},
            // ),
            TextField(
              controller: userNombreTextEdittingController,
              decoration: InputDecoration(
                  hintText: "Nombre",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(color: Color(0xFF41fb56), width: 3)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(color: Color(0xFF41fb56), width: 3))),
            ),

            TextField(
              controller: userApellidoTextEdittingController,
              decoration: InputDecoration(
                  hintText: "Apellido",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(color: Color(0xFF41fb56), width: 3)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(color: Color(0xFF41fb56), width: 3))),
            ),
            TextField(
              controller: userTelefonoTextEdittingController,
              decoration: InputDecoration(
                  hintText: "Telefono",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(color: Color(0xFF41fb56), width: 3)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(color: Color(0xFF41fb56), width: 3))),
            ),
            TextField(
              controller: userCorreoTextEdittingController,
              decoration: InputDecoration(
                  hintText: "Correo",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(color: Color(0xFF41fb56), width: 3)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(color: Color(0xFF41fb56), width: 3))),
            ),
            TextField(
              controller: userPasswordTextEdittingController,
              decoration: InputDecoration(
                  hintText: "Contraseña",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(color: Color(0xFF41fb56), width: 3)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(color: Color(0xFF41fb56), width: 3))),
            ),
            RoundedButton(
              text: "Registrar",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
