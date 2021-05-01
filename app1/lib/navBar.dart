import 'package:app1/cardlist.dart';
import 'package:app1/persona.dart';
import 'package:flutter/material.dart';
import 'mensaje.dart';

class NavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavBar();
  }
}

class _NavBar extends State {
  int indexLab1 = 0;
  final List<Widget> vistasWidget = [Cardlist(), Mensaje(), Persona()];
  void onTapped(int index) {
    setState(() {
      indexLab1 = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: vistasWidget[indexLab1],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.grey,
        ),
        child: BottomNavigationBar(
          onTap: onTapped,
          currentIndex: indexLab1,
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
