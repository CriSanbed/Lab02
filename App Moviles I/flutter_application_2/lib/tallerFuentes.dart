import 'package:flutter/material.dart';

class TallerFuentes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Column(
          children: [
            //stack para la imagen
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img/buenTrabajo.png"),
                  ),
                )
              ],
            ),
            //TITULO
            Container(
              alignment: Alignment.center,
              width: 300.00,
              height: 40.0,
              child: Text('Congratulations',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Anton",
                      color: Colors.red,
                      fontWeight: FontWeight.bold)),
            ),
            //ORDER
            Container(
              alignment: Alignment.center,
              width: 350.00,
              height: 50.0,
              child: Text('You Have Successful Place Your Order',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "NotoSans",
                      color: Colors.black26)),
            ),

            //BOTON
            Stack(
              children: [
                MaterialButton(
                  minWidth: 300.0,
                  height: 50.0,
                  shape: StadiumBorder(),
                  onPressed: () {},
                  color: Colors.orange,
                  child: Text('Back To Main Menu',
                      style:
                          TextStyle(fontFamily: "Abel", color: Colors.white)),
                ),
              ],
            ),
          ],
        )
      ],
    ));
  }
}
