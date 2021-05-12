import 'package:flutter/material.dart';
import 'navBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Primera App Moviles II',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Discover"),
          ),
          body: Stack(
            children: [
              NavBar(),
            ],
          ),
        ));
  }
}
