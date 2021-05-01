import 'package:flutter/material.dart';
import 'gradiente.dart';
import 'botonInk.dart';

//ESTE PASTEL BRYAN

class Pastel3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Gradiente(),
          Column(
            children: [
              Stack(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      child: Ink(
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            color: Colors.lightBlue[100],
                          ),
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            iconSize: 50.0,
                            onPressed: () {},
                          ))),
                ],
              ),
              Stack(
                children: [
                  Container(
                    child: Image(
                      image: AssetImage("assets/img/p3.png"),
                      height: 400.0,
                      width: 270.0,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  '''Cake Three Milks''',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 400.0,
                    height: 100.0,
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text:
                              '\nEs un bizcocho bañado en tres tipos de leche: evaporada, condensada y crema de leche',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: '     \n\n\nOrdene Ahora',
                                style: TextStyle(
                                  fontSize: 27,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
