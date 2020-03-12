import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/screen/transferencia/lista.dart';

void main() => runApp(BytebankApp());


class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary
        )
      ),
      home: ListaTransferencias()

    );
}

}





