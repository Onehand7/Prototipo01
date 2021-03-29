import 'package:flutter/material.dart';

// ignore: camel_case_types
class ButtonGeneral extends StatelessWidget {
  final String labelText;
  final Function onPressed;
  final Color color;

  const ButtonGeneral({this.labelText, this.onPressed, this.color});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      width: double.infinity,
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(labelText),
        onPressed: onPressed,
      ),
    );
  }
}
