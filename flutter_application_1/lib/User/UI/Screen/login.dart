import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/UI/Screen/colorFondo.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        ColorFondo(),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img/login.jpg"),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              width: 250.0,
              height: 100.0,
              child: Text('''Welcome Back''',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: "Akayas", fontSize: 35, color: Colors.white)),
            ),
            Container(
              width: 300,
              child: Form(
                // key: _key,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      maxLength: 60,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70),
                      decoration: InputDecoration(
                        labelStyle: new TextStyle(color: Colors.white),
                        hintStyle: new TextStyle(color: Colors.lightBlue),
                        hintText: 'Ingrese su Correo..',
                        labelText: 'Email or Phone Number',
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      maxLength: 30,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70),
                      decoration: InputDecoration(
                        labelStyle: new TextStyle(color: Colors.white),
                        hintStyle: new TextStyle(color: Colors.lightBlue),
                        hintText: 'Ingrese su clave..',
                        labelText: 'Password',
                      ),
                    ),
                    Container(
                      // alignment: Alignment.bottomRight,
                      width: 400.00,
                      height: 40.00,
                      child: Text('''Recover Account?''',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 13, color: Colors.white)),
                    ),
                    Stack(
                      children: [
                        MaterialButton(
                          minWidth: 300.0,
                          height: 50.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {},
                          color: Colors.purple[700],
                          child: Text('Sign In',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 400.00,
                      height: 40.00,
                      child: Text('''or''',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: IconButton(
                            icon: const Icon(
                                CupertinoIcons.f_cursive_circle_fill),
                            iconSize: 35,
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon: const Icon(CupertinoIcons.envelope_fill),
                            iconSize: 35,
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                        /* GestureDetector(
                            onTap: () {},
                            child: Image(
                              image: AssetImage('assets/img/facebook.png'),
                              color: Colors.lightBlue,
                            )), */
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: new RichText(
                        text: new TextSpan(
                          children: [
                            new TextSpan(
                              text: 'Don`t have any Account? ',
                              style: new TextStyle(color: Colors.black),
                            ),
                            new TextSpan(
                              text: 'Create new!',
                              style: new TextStyle(color: Colors.blue),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  launch('https://google.com');
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
