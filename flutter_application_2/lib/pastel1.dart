import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'gradiente.dart';
import 'botonInk.dart';
import 'home.dart';

//ESTE PASTEL INGE

class Pastel1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Gradiente(),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5),
              child: BotonInk('Pasteles'),
            ),
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 200.00,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img/pastel1.jpg"),
                  ),
                )
              ],
            ),
            Container(
              alignment: Alignment.center,
              width: 300.00,
              height: 100.00,
              child: Text(
                "Pastel helado",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 300.00,
              child: Text(
                "Delicioso pastel helado de tres sabores para degustar los paladares con su pareja, amistades o familiares "
                "No lo pienses mas y come un rico pastel helado..!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              width: 200.00,
              height: 50.00,
              child: Text(
                "Entrega de pedidos",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
