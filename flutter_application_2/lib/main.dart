import 'package:flutter/material.dart';
import 'package:flutter_application_2/botonink.dart';
import 'package:flutter_application_2/cardimg.dart';
import 'package:flutter_application_2/cardlist.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/navBar.dart';
import 'package:flutter_application_2/pastel1.dart';
import 'package:flutter_application_2/tallerFuentes.dart';
import 'cristian.dart';
//import 'package:flutter_application_2/pCristian.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Cake Factory"),
          ),
          body: Stack(
            children: [
              //Home(),
              NavBar()
              //TallerFuentes(),
              //Pastel1(),
              //Cardlist(),
              //Cristian(),
              //PCristian(), --> este descomentar para llamar a esta clase y arriba importar la clase home en vez de la mia
            ],
          ),
        ));
  }
}
