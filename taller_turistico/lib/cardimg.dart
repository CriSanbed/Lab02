import 'package:flutter/material.dart';

class CardImg extends StatelessWidget {
  String pathImage = '';
  String info = '';

  CardImg(this.pathImage, this.info);

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
        Container(
          alignment: Alignment.bottomLeft,
          child: Text(info,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              )),
        )
      ],
    );
    return card;
  }
}
