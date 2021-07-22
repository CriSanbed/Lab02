import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  //constantes
  final String hint;
  final TextInputType inputType;
  final TextEditingController controller;
  int maxLineas = 1;

  //constructor
  TextInput(
      {Key? key,
      required this.hint,
      required this.inputType,
      required this.controller,
      required this.maxLineas});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 30, left: 30),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.lightBlue[50],
            border: InputBorder.none,
            hintText: hint,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            //como esta seleccionada
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlue),
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLineas,
        //estilo visualizacion
        style: TextStyle(
            fontSize: 20,
            color: Colors.black87,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold),
      ),
      //decoracion
    );
  }
}
