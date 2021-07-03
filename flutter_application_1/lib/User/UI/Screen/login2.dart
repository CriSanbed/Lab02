import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/UI/Widgets/textinput.dart';
import 'package:flutter_application_1/User/UI/Widgets/googleButton.dart';

class Login2 extends StatelessWidget {
  final _controllerUsername = TextEditingController();
  final _controllerPassword = TextEditingController();

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
                image: AssetImage("assets/img/login.png"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              shape: BoxShape.rectangle,
            ),
          ), //CONTAINER PARA LA FOTO

          Container(
            height: 40.0,
            margin: EdgeInsets.only(top: 15.0),
            child: Text(
              "LOGIN",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          ), //CONTAINER PARA TITULO

          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: TextInput(
                hint: "Username",
                inputType: TextInputType.name,
                controller: _controllerUsername,
                maxLineas: 1),
          ), //CONTAINER PARA EL USERNAME
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: TextInput(
                hint: "Password",
                inputType: TextInputType.text,
                controller: _controllerPassword,
                maxLineas: 1),
          ), //CONTAINER PARA EL PASSWORD
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Center(
              child: MaterialButton(
                minWidth: 100.0,
                height: 40.0,
                onPressed: () {},
                color: Colors.lightBlue,
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          //aqui
          GoogleButton(
              textC: 'Login with Google',
              widthC: 80,
              heightC: 35,
              onPressed: () {})
        ],
      ),
    ));
  }
}
