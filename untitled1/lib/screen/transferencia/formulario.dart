import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/componets/Editor.dart';
import 'package:untitled1/model/transferencia.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controllerCampoNumeroConta = TextEditingController();
  final TextEditingController _controllerCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Criando Transferencia"),
      ),
      body: Column(
        children: <Widget>[
          Editor(
              controllador: _controllerCampoNumeroConta,
              dica: '100',
              rotulo: "Numero da conta"),
          Editor(
              controllador: _controllerCampoValor,
              rotulo: 'Valor',
              dica: "00,00",
              icon: Icons.monetization_on),
          RaisedButton(
            child: Text('Confirmar'),
            onPressed: () => _criaTransferencia(context),
          )
        ],
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int numero = int.tryParse(_controllerCampoNumeroConta.text);
    final double valor = double.tryParse(_controllerCampoValor.text);
    if (numero != null && valor != null) {
      final transferencia = Transferencia(valor, numero);
      debugPrint('$transferencia');
      Navigator.pop(context, transferencia);
    }
  }
}
