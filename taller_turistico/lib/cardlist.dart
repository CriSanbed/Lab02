import 'package:flutter/material.dart';
import 'cardimg.dart';

class Cardlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.loose, children: [
      Row(children: [
        Column(
          children: [
            //ENCABEZADO
            Container(
              margin: EdgeInsets.only(
                top: 25,
                left: 25,
              ),
              width: 300,
              height: 50,
              child: Text(
                'Hi, Cristian!',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(120, 20, 5, 5),
              width: 50,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("assets/img/perfil.jpg"),
                  )),
            ),
          ],
        )
      ]),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 25,
              top: 60,
            ),
            width: 300,
            height: 150,
            child: Text(
              "Let´s Book Your"
              "\nNext Trip",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "Arial",
                fontSize: 35,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 25,
              top: 200,
            ),
            width: 300,
            height: 50,
            child: Text(
              'Welcome',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.only(
              top: 300,
            ),
            height: 350,
            child: ListView(
              padding: EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CardImg('assets/img/cotopaxi.jpg', '   Volcán Cotopaxi'),
                CardImg('assets/img/galapagos.jpg', 'Islas Galápagos'),
                CardImg('assets/img/lagQuilatoa.jpg', 'Laguna Quilatoa'),
                CardImg('assets/img/mitadMundo.png', 'Mitad del Mundo'),
              ],
            ),
          ))
        ],
      )
    ]));
  }
}
