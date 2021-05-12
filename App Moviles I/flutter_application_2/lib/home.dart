import 'package:flutter/material.dart';
import 'package:flutter_application_2/botonink.dart';
import 'package:flutter_application_2/gradiente.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Gradiente(),
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: 250.0,
              height: 150.0,
              child: Text('''Cake Factory''',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: "Akayas", fontSize: 35, color: Colors.white)),
            ),
            Stack(
              //ESTE STACK PERMITE QUE EL BOTON ESTE SOBRE LA IMAGEN
              children: [
                Container(
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img/icono_inicio.png"),
                  ),
                ),
                /*Container(
                  //margen q me permite bajar un poco el click here de la imagen
                  margin: EdgeInsets.only(top: 400),
                  child: BotonInk('Click here!!'),
                )*/
              ],
            )
          ],
        )
      ],
    ));
  }
}
