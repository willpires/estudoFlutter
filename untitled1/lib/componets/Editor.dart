import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controllador;

  final String rotulo;
  final String dica;
  final IconData icon;

  Editor({this.controllador, this.rotulo, this.dica, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: controllador,
          decoration: InputDecoration(
            icon:  icon != null? Icon(icon): null,
            labelText: rotulo,
            hintText: dica,
          ),
          style: TextStyle(fontSize: 24.0),
          keyboardType: TextInputType.number,
        ));
  }
}
