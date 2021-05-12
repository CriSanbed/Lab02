import 'package:flutter/material.dart';
import 'gradiente.dart';

class PCristian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand, //para expandir a las dimensiones d la pantalla
      children: [
        Gradiente(),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top:
                          50), //esta linea me permite q no se ponga la imagen tan arriba sobre la hora
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img/pastel.png"),
                  ),
                )
                //Container(
                //child: ,
                // )
              ],
            ),
            Container(
              alignment: Alignment.center,
              width: 250.0,
              height: 100.0,
              child: Text('''Torta Frutal''',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                  '''Deliciosa torta rellena de chocolate, cubierta de manjar, con una exquisita fresa fresca, perfecta para celebraciones de amor y de amistad..!!
                  ''',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
            ),
            Stack(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Order Delivery',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    ));
  }
}
