import 'package:flutter/material.dart';

class CardImg extends StatelessWidget {
  String pathImage = 'assets/img/persona1.png';
  String nombre = '';
  dynamic edad = 0;
  String ubicacion = '';
  String interes = '';

  CardImg(this.pathImage, this.nombre, this.edad, this.ubicacion, this.interes);

  @override
  Widget build(BuildContext context) {
    final card = Stack(
      children: [
        Row(
          children: [
            Container(
              height: 450,
              width: 250,
              margin: EdgeInsets.only(top: 80, left: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(pathImage)),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  shape: BoxShape.rectangle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                        offset: Offset(0, 7))
                  ]),
            )
          ],
        ),
        Stack(children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: 280, left: 20), //   alignment: Alignment.bottomLeft,
                child: Text(nombre,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    )),
              )
            ],
          )
        ]),
        Row(
          children: [
            Container(
              height: 450,
              width: 250,
              margin: EdgeInsets.only(top: 280, left: 100),
              //   alignment: Alignment.bottomLeft,
              child: Text(ubicacion,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  )),
            )
          ],
        )
      ],
    );
    return card;
  }
}
