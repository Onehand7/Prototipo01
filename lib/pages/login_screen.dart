import 'package:OneHand/constantes.dart';
import 'package:OneHand/pages/screen_Menu_Principal.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id = "login_screen";
  final String user;

  LoginScreen(this.user);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool selectLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlue,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logoOnehand.png",
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectLogin = true;
                      });
                    },
                    child: Text(
                      "Registrate",
                      style: TextStyle(
                          fontSize: 25,
                          color: colorWhite,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectLogin = false;
                        print(widget.user);
                      });
                    },
                    child: Text(
                      "Iniciar Sesión",
                      style: TextStyle(
                          fontSize: 25,
                          color: colorWhite,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              (selectLogin)
                  ? _columnSignUp(context)
                  : _columnLogin(context, widget.user),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _textFieldName() {
  return _textFieldGeneral(
    labelText: "nombre",
    hinText: "Eduardo Garcia",
    icon: Icons.person_outline,
    onChanged: (value) {},
  );
}

Widget _textFieldEmail() {
  return _textFieldGeneral(
    labelText: "Correo electrónico",
    hinText: "ejemplo@correo.com",
    icon: Icons.alternate_email,
    onChanged: (value) {},
  );
}

Widget _textFieldPassword() {
  return _textFieldGeneral(
    labelText: "Contraseña",
    icon: Icons.lock_outline,
    obscureText: true,
    onChanged: (value) {},
  );
}

Widget _buttonSignUp(BuildContext context) {
  return _buttonGeneral(
    labelText: "Registrate",
    onPressed: () => {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ScreenMenuPrincipal("")))
    },
  );
}

Widget _buttonLogin(BuildContext context, String user) {
  return ElevatedButton(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(10),
      backgroundColor: MaterialStateProperty.all(
        Colors.blue,
      ),
      padding: MaterialStateProperty.all(
        EdgeInsets.symmetric(
          horizontal: 110,
          vertical: 15.0,
        ),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    child: Text(
      "Entrar",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 20.0,
      ),
    ),
    onPressed: () {
      if (user == "Cliente") {
        print(user);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ScreenMenuPrincipal(user)));
      } else {
        if (user == "Técnico") {
          print(user);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ScreenMenuPrincipal(user)));
        }
      }
    },
  );
}

Widget _columnSignUp(BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: 25.0,
      ),
      _textFieldName(),
      SizedBox(
        height: 15.0,
      ),
      _textFieldEmail(),
      SizedBox(
        height: 15.0,
      ),
      _textFieldPassword(),
      SizedBox(
        height: 30.0,
      ),
      _buttonSignUp(context),
    ],
  );
}

Widget _columnLogin(BuildContext context, String user) {
  return Column(
    children: [
      SizedBox(
        height: 15.0,
      ),
      _textFieldEmail(),
      SizedBox(
        height: 15.0,
      ),
      _textFieldPassword(),
      SizedBox(
        height: 25.0,
      ),
      Text(
        "Olvidé mi contraseña",
        style: TextStyle(
            fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.w700),
      ),
      SizedBox(
        height: 65.0,
      ),
      _buttonLogin(context, user),
    ],
  );
}

// ignore: camel_case_types
class _textFieldGeneral extends StatelessWidget {
  final String labelText;
  final String hinText;
  final Function onChanged;
  final TextInputType keyboardType;
  final IconData icon;
  final bool obscureText;

  const _textFieldGeneral(
      {@required this.labelText,
      this.hinText,
      @required this.onChanged,
      this.keyboardType,
      this.icon,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: TextField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: Icon(icon), labelText: labelText, hintText: hinText),
        onChanged: onChanged,
      ),
    );
  }
}

// ignore: camel_case_types
class _buttonGeneral extends StatelessWidget {
  final String labelText;
  final Function onPressed;

  const _buttonGeneral({this.labelText, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(10),
        backgroundColor: MaterialStateProperty.all(
          Colors.blue,
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: 110,
            vertical: 15.0,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: Text(
        labelText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 20.0,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
