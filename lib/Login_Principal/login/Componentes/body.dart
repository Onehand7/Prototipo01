import 'package:OneHand/Login_Principal/Componentes_login/already_account.dart';
import 'package:OneHand/Login_Principal/Componentes_login/rounded_button.dart';
import 'package:OneHand/Login_Principal/Componentes_login/rounded_input_field.dart';
import 'package:OneHand/Login_Principal/Componentes_login/rounded_password_field.dart';
import 'package:OneHand/Login_Principal/Registro/registro.dart';
import 'package:OneHand/Screen_cliente/menu/menu_principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String mensaje = "";
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Tu Correo",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Iniciar Session",
              press: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MenuPagina(
                    mensaje: mensaje,
                  ),
                ));
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
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
