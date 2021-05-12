import 'package:flutter/material.dart';

class Cristian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Column(
          children: [
            //Stack para la flecha de retroceso superior
            Stack(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    child: Ink(
                        child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      onPressed: () {},
                    ))),
              ],
            ),
            //stack para la imagen
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img/sabila.png"),
                  ),
                )
              ],
            ),
            //TITULO DE LA PLANTA
            Container(
              alignment: Alignment.topLeft,
              width: 300.00,
              height: 40.0,
              child: Text('Sábila',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal)),
            ),
            //COSTO DE LA PLANTA
            Container(
              alignment: Alignment.topLeft,
              width: 300.00,
              height: 80.00,
              child: Text(
                  "\$20.99"
                  '\n_________________________________',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal)),
            ),

            Container(
              alignment: Alignment.center,
              width: 300.00,
              height: 100.00,
              child: Text(
                  '''La sábila es una planta medicinal, conocida también como Aloe vera, que posee diversas propiedades para la salud y es utilizada en diversos tratamientos de belleza, principalmente a nivel del cabello y de la piel. 
                  
                  ''',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, color: Colors.black87)),
            ),
            Stack(
              children: [
                MaterialButton(
                  minWidth: 300.0,
                  height: 50.0,
                  onPressed: () {},
                  color: Colors.lightBlue,
                  child: Text('Buy Now', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        )
      ],
    ));
  }
}
