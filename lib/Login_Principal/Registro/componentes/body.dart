import 'package:OneHand/Login_Principal/Componentes_login/already_account.dart';
import 'package:OneHand/Login_Principal/Componentes_login/rounded_button.dart';
import 'package:OneHand/Login_Principal/Componentes_login/rounded_input_field.dart';
import 'package:OneHand/Login_Principal/Componentes_login/rounded_password_field.dart';
import 'package:OneHand/Login_Principal/Registro/componentes/background.dart';
import 'package:OneHand/Login_Principal/Registro/componentes/divisor.dart';
import 'package:OneHand/Login_Principal/login/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'icono_social.dart';

class Body extends StatelessWidget {
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
            /*SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ), */
            RoundedInputField(
              hintText: "Nombre",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Apellido",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Telefono",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Tu Correo",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
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
