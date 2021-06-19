import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/UI/Widgets/textinput.dart';

class Profile extends StatelessWidget {
  final _controllerName = TextEditingController();
  final _controllerHobbies = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 250.0,
              width: 250.0,
              margin: EdgeInsets.only(top: 15.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.scaleDown,
                  image: AssetImage("assets/img/camara.png"),
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.rectangle,
              ),
            ), //CONTAINER PARA LA FOTO

            Container(
              height: 40.0,
              margin: EdgeInsets.only(top: 15.0),
              child: Text(
                "Profile User",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ), //CONTAINER PARA TITULO

            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: TextInput(
                  hint: "Name",
                  inputType: TextInputType.name,
                  controller: _controllerName,
                  maxLineas: 1),
            ), //CONTAINER PARA EL NOMBRE
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: TextInput(
                  hint: "Hobbies and interests",
                  inputType: TextInputType.text,
                  controller: _controllerHobbies,
                  maxLineas: 6),
            ), //CONTAINER PARA LOS HOBBIES E INTERESES
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Center(
                child: MaterialButton(
                  minWidth: 100.0,
                  height: 40.0,
                  onPressed: () {},
                  color: Colors.lightBlue,
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
