import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/pCristian.dart';
import 'package:flutter_application_2/pastel3.dart';
import 'pastel1.dart';
import 'cardimg.dart';
import 'gradiente.dart';

class Cardlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Gradiente(),
        Container(
          height: 350,
          child: ListView(
            padding: EdgeInsets.all(25),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              CardImg('assets/img/pastel1.jpg', Pastel1()),
              CardImg('assets/img/pastel.png', PCristian()),
              CardImg('assets/img/p3.png', Pastel3()),
              CardImg('assets/img/icono_inicio.png', Home()),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 450,
          ),
          width: 400,
          height: 400,
          child: Text(
            'Conoce nuestros porductos...',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        )
      ],
    );
  }
}
