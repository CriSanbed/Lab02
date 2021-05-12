import 'package:flutter/material.dart';
import 'pastel1.dart';

class CardImg extends StatelessWidget {
  String pathImage = 'assets/img/pastel1.jpg';
  Widget routeLink = Pastel1();
  //aqui deberia llamar a los otros pasteles?

  CardImg(this.pathImage, this.routeLink);

  @override
  Widget build(BuildContext context) {
    final card = Stack(
      children: [
        Container(
          height: 350,
          width: 250,
          margin: EdgeInsets.only(top: 80, left: 20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(pathImage)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              shape: BoxShape.rectangle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black38, blurRadius: 15, offset: Offset(0, 7))
              ]),
        ),
        /*Container(
          alignment: Alignment.bottomLeft,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => this.routeLink),
              );
            },
            child: Text('ver mas!!'),
          ),
        )*/
      ],
    );
    return card;
  }
}
