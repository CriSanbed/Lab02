import 'package:flutter/material.dart';
import 'package:flutter_application_2/pastel1.dart';
import 'pastel3.dart';
import 'pCristian.dart';

class BotonInk extends StatelessWidget {
  String inkText = 'Pasteles';
  BotonInk(this.inkText);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          //la siguiente linea cambio a la clase de pastel quiero llevar desde el home
          MaterialPageRoute(builder: (context) => Pastel1()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 50),
        alignment: Alignment.topCenter,
        color: Colors.pink,
        constraints: BoxConstraints.expand(height: 60),
        child: Center(
          child: Text(
            inkText,
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
