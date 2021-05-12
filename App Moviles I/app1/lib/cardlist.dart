import 'package:flutter/material.dart';
import 'cardimg.dart';

class Cardlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          child: ListView(
            padding: EdgeInsets.all(25),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              CardImg('assets/img/persona1.png', 'Juan', 20, 'Quito',
                  'Tocar piano'),
              CardImg('assets/img/persona2.png', 'Maria', 24, 'Guayaquil',
                  'Musica'),
              CardImg(
                  'assets/img/persona3.png', 'Dario', 32, 'Cuenca', 'Deportes'),
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
            'Intereses de los personajes',
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
