import 'package:flutter/material.dart';
import 'package:flutter_application_2/cardlist.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/pastel1.dart';

class NavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavBar();
  }
}

class _NavBar extends State {
  int indexCakeFac = 0;
  final List<Widget> vistasWidget = [Home(), Cardlist(), Pastel1()];
  void onTapped(int index) {
    setState(() {
      indexCakeFac = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: vistasWidget[indexCakeFac],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.purple,
          primaryColor: Colors.pink,
        ),
        child: BottomNavigationBar(
          onTap:
              onTapped, //a este metodo no le doy parametros xq solo necesito q se iguale el un index con indexCakeFac
          currentIndex: indexCakeFac,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.picture_in_picture), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.description), label: ""),
          ],
        ),
      ),
    );
  }
}
